<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "log".
 *
 * @property int $id
 * @property string $user
 * @property string $module
 * @property string $controller
 * @property string $method
 * @property string $time
 * @property string|null $data
 */
class AppLog extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'log';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user', 'module', 'controller', 'method'], 'required'],
            [['time'], 'safe'],
            [['data'], 'string'],
            [['user', 'module', 'controller', 'method'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user' => 'User',
            'module' => 'Module',
            'controller' => 'Controller',
            'method' => 'Method',
            'time' => 'Time',
            'data' => 'Data',
        ];
    }
}
