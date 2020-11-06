<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "authorities".
 *
 * @property int $id
 * @property int $user_id
 * @property string $authority
 * @property string|null $nombre
 *
 * @property Users $user
 */
class Rol extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'authorities';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'authority'], 'required'],
            [['user_id'], 'integer'],
            [['authority'], 'string', 'max' => 30],
            [['nombre'], 'string', 'max' => 40],
            [['user_id', 'authority'], 'unique', 'targetAttribute' => ['user_id', 'authority']],
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
            'user_id' => 'User ID',
            'authority' => 'Authority',
            'nombre' => 'Nombre',
        ];
    }

    /**
     *
     */
    public function getAuthority()
    {
        return $this->authority;
    }
    /**
     *
     */
    public function getNombre()
    {
        return $this->nombre;
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
