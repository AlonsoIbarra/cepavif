<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asistentes_grupos".
 *
 * @property int $asistente_id
 * @property int $servicio_id
 *
 * @property Asistentes $asistente
 * @property DetalleDeServicio $grupo
 */
class AsistenteDeServicio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'asistentes_a_servicio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['asistente_id', 'servicio_id'], 'required'],
            [['asistente_id', 'servicio_id'], 'integer'],
            [['asistente_id', 'servicio_id'], 'unique', 'targetAttribute' => ['asistente_id', 'servicio_id']],
            [['asistente_id'], 'exist', 'skipOnError' => true, 'targetClass' => Asistente::className(), 'targetAttribute' => ['asistente_id' => 'id']],
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
            'asistente_id' => 'Asistente ID',
            'servicio_id' => 'Servicio ID',
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
     * Gets query for [[Grupo]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServicio()
    {
        return $this->hasOne(Servicio::className(), ['id' => 'servicio_id']);
    }
}
