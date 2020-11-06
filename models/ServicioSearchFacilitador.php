<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Servicio;

/**
 * ServicioSearch represents the model behind the search form of `app\models\Servicio`.
 */
class ServicioSearchFacilitador extends Servicio
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tipo_de_servicio_id', 'cerrado'], 'integer'],
            [['nombre', 'created_at', 'fecha_de_cierre'], 'safe'],
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
        $query = Servicio::find();
        $query->join = [["LEFT JOIN", "users_servicios", "servicios.id = users_servicios.servicio_id"]];
        // add conditions that should always apply here
//        $query->joinWith('users_servicios');
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
            'tipo_de_servicio_id' => $this->tipo_de_servicio_id,
            'created_at' => $this->created_at,
            'cerrado' => $this->cerrado,
            'fecha_de_cierre' => $this->fecha_de_cierre,
            'users_servicios.user_id' => $params['facilitador_id'],

        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre]);

        return $dataProvider;
    }
}