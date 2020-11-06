<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users_servicios".
 *
 * @property int $user_id
 * @property int $servicio_id
 *
 * @property DetalleDeServicio $servicio
 * @property Users $user
 */
class FacilitadorDeServicio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users_servicios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'servicio_id'], 'required'],
            [['user_id', 'servicio_id'], 'integer'],
            [['user_id', 'servicio_id'], 'unique', 'targetAttribute' => ['user_id', 'servicio_id']],
            [['servicio_id'], 'exist', 'skipOnError' => true, 'targetClass' => Servicio::className(), 'targetAttribute' => ['servicio_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'Facilitador',
            'servicio_id' => 'Servicio ID',
        ];
    }

    /**
     * Gets query for [[Servicio]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServicio()
    {
        return $this->hasOne(Servicio::className(), ['id' => 'servicio_id']);
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
