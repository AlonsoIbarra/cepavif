<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "sesiones".
 *
 * @property int $id
 * @property string|null $titulo
 * @property string $fecha_de_registro
 * @property int $grupo_id
 * @property string|null $fecha
 * @property string|null $hora
 *
 * @property Asistencias[] $asistencias
 * @property Asistentes[] $asistentes
 * @property DetalleDeServicio $grupo
 */
class Sesion extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sesiones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha_de_registro', 'fecha'], 'safe'],
            [['servicio_id', 'fecha'], 'required'],
            [['servicio_id'], 'integer'],
            [['servicio_id'], 'exist', 'skipOnError' => true, 'targetClass' => Servicio::className(), 'targetAttribute' => ['servicio_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'titulo' => 'Titulo',
            'fecha_de_registro' => 'Fecha De Registro',
            'servicio_id' => 'Servicio ID',
            'fecha' => 'Fecha',
            'hora' => 'Hora',
        ];
    }

    /**
     * Gets query for [[Asistencias]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsistencias()
    {
        return $this->hasMany(Asistencia::className(), ['sesion_id' => 'id']);
    }

    /**
     * Gets query for [[Asistentes]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsistentes()
    {
        return $this->hasMany(Asistente::className(), ['id' => 'asistente_id'])->viaTable('asistencias', ['sesion_id' => 'id']);
    }

    /**
     * Gets query for [[Grupo]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServicio()
    {
        return $this->hasOne(Servicio::className(), ['id' => 'servicio_id']);
    }
}
