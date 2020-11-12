<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Asistente;

/**
 * AsistenteSearch represents the model behind the search form of `app\models\Asistente`.
 */
class AsistenteSearchMC extends Asistente
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'imputado', 'entrevista', 'pre_test', 'post_test', 'evaluacion', 'suspendido'], 'integer'],
            [['fecha_de_creacion', 'nombre', 'apellido_paterno', 'apellido_materno', 'sexo', 'folio', 'numero_de_causa', 'municipio', 'supervisor', 'numero_de_telefono', 'fecha_de_canalizacion', 'fecha_de_entrevista', 'notas_psicologicas', 'observaciones', 'fecha_de_suspencion'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Asistente::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'fecha_de_creacion' => $this->fecha_de_creacion,
            'imputado' => true,
            'fecha_de_canalizacion' => $this->fecha_de_canalizacion,
            'fecha_de_entrevista' => $this->fecha_de_entrevista,
            'entrevista' => $this->entrevista,
            'pre_test' => $this->pre_test,
            'post_test' => $this->post_test,
            'evaluacion' => $this->evaluacion,
            'suspendido' => $this->suspendido,
            'fecha_de_suspencion' => $this->fecha_de_suspencion,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'apellido_paterno', $this->apellido_paterno])
            ->andFilterWhere(['like', 'apellido_materno', $this->apellido_materno])
            ->andFilterWhere(['like', 'sexo', $this->sexo])
            ->andFilterWhere(['like', 'folio', $this->folio])
            ->andFilterWhere(['like', 'numero_de_causa', $this->numero_de_causa])
            ->andFilterWhere(['like', 'municipio', $this->municipio])
            ->andFilterWhere(['like', 'supervisor', $this->supervisor])
            ->andFilterWhere(['like', 'numero_de_telefono', $this->numero_de_telefono])
            ->andFilterWhere(['like', 'notas_psicologicas', $this->notas_psicologicas])
            ->andFilterWhere(['like', 'observaciones', $this->observaciones]);

        return $dataProvider;
    }
}