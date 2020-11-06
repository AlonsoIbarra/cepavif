<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipos_de_servicios".
 *
 * @property int $id
 * @property int $nombre
 */
class TipoDeServicio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tipos_de_servicios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['nombre'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
        ];
    }
    public function getNombre(){
        return $this->nombre;
    }
}
