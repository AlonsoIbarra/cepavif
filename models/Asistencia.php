<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asistencias".
 *
 * @property int $id
 * @property string $fecha_de_registro
 * @property int $asistente_id
 * @property int $sesion_id
 * @property string|null $observaciones
 *
 * @property Asistentes $asistente
 * @property Sesiones $sesion
 */
class Asistencia extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'asistencias';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha_de_registro'], 'safe'],
            [['asistente_id', 'sesion_id'], 'required'],
            [['asistente_id', 'sesion_id'], 'integer'],
            [['observaciones'], 'string'],
            [['asistente_id', 'sesion_id'], 'unique', 'targetAttribute' => ['asistente_id', 'sesion_id']],
            [['asistente_id'], 'exist', 'skipOnError' => true, 'targetClass' => Asistente::className(), 'targetAttribute' => ['asistente_id' => 'id']],
            [['sesion_id'], 'exist', 'skipOnError' => true, 'targetClass' => Sesion::className(), 'targetAttribute' => ['sesion_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fecha_de_registro' => 'Fecha De Registro',
            'asistente_id' => 'Asistente ID',
            'sesion_id' => 'Sesion ID',
            'observaciones' => 'Observaciones',
        ];
    }

    /**
     * Gets query for [[Asistente]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsistente()
    {
        return $this->hasOne(Asistente::className(), ['id' => 'asistente_id']);
    }

    /**
     * Gets query for [[Sesion]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSesion()
    {
        return $this->hasOne(Sesion::className(), ['id' => 'sesion_id']);
    }
}
