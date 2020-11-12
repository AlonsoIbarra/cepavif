<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "servicios".
 *
 * @property int $id
 * @property int $tipo_de_servicio_id
 * @property string $created_at
 * @property int $cerrado
 * @property string|null $fecha_de_cierre
 *
 * @property DetalleDeServicio[] $detalleDeServicios
 * @property TiposDeServicios $tipoDeServicio
 */
class Servicio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'servicios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tipo_de_servicio_id','nombre'], 'required'],
            [['tipo_de_servicio_id', 'cerrado',], 'integer'],
            [['nombre'], 'string', 'max' => 50],
            [['created_at',], 'safe'],
            [['tipo_de_servicio_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoDeServicio::className(), 'targetAttribute' => ['tipo_de_servicio_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Folio',
            'tipo_de_servicio_id' => 'Tipo De Servicio ID',
            'created_at' => 'Created At',
            'cerrado' => 'Cerrado',
        ];
    }

    /**
     * Gets query for [[DetalleDeServicios]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDetalleDeServicio()
    {
        return $this->hasOne(DetalleDeServicio::className(), ['servicio_id' => 'id']);
    }

    /**
     * Gets query for [[TipoDeServicio]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTipoDeServicio()
    {
        return $this->hasOne(TipoDeServicio::className(), ['id' => 'tipo_de_servicio_id']);
    }
    /**
     * Gets query for [[Sesiones]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSesiones()
    {
        return $this->hasMany(Sesion::className(), ['servicio_id' => 'id']);
    }
    /**
     * Gets query for [[Sesiones]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsistentes()
    {
        return $this->hasMany(Asistente::className(), ['id' => 'asistente_id'])->viaTable('asistentes_a_servicio', ['servicio_id' => 'id']);
//        return $this->hasMany(Asistente::className(), ['servicio_id' => 'id']);
    }

    /**
     * Gets query for [[Sesiones]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getFacilitadores()
    {
        return $this->hasMany(User::className(), ['id' => 'user_id'])->viaTable('users_servicios', ['servicio_id' => 'id']);
    }}
