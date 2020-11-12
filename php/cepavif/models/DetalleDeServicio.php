<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "detalle_de_servicio".
 *
 * @property int $id
 * @property string|null $id_de_grupo
 * @property string|null $fecha_de_inicio
 * @property string|null $fecha_de_cierre
 * @property string|null $hora
 * @property int $servicio_id
 *
 * @property Servicios $servicio
 * @property Sesiones[] $sesiones
 * @property UsersServicios[] $usersServicios
 * @property Users[] $users
 */
class DetalleDeServicio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'detalle_de_servicio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha_de_inicio', 'fecha_de_cierre'], 'safe'],
            [['servicio_id'], 'integer'],
            [['servicio_id'], 'required'],
            [['hora'], 'string', 'max' => 30],
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
            'fecha_de_inicio' => 'Fecha De Inicio',
            'fecha_de_cierre' => 'Fecha De Cierre',
            'hora' => 'Hora',
            'servicio_id' => 'Servicio ',
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

}
