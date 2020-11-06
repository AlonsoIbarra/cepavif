<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asistentes".
 *
 * @property int $id
 * @property string $fecha_de_creacion
 * @property string $nombre
 * @property string $apellido_paterno
 * @property string|null $apellido_materno
 * @property string $sexo
 * @property string|null $folio
 * @property int $imputado
 * @property string|null $numero_de_causa
 * @property string|null $municipio
 * @property string|null $supervisor
 * @property string|null $numero_de_telefono
 * @property string|null $fecha_de_canalizacion
 * @property string|null $fecha_de_entrevista
 * @property string|null $notas_psicologicas
 * @property string|null $observaciones
 * @property int $entrevista
 * @property int $pre_test
 * @property int $post_test
 * @property int $evaluacion
 * @property int $suspendido
 * @property string|null $fecha_de_suspencion
 *
 * @property Asistencias[] $asistencias
 * @property Sesiones[] $sesions
 * @property AsistentesGrupos[] $asistentesGrupos
 * @property DetalleDeServicio[] $grupos
 * @property OficiosSolicitados[] $oficiosSolicitados
 */
class Asistente extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'asistentes';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha_de_creacion', 'fecha_de_canalizacion', 'fecha_de_entrevista', 'fecha_de_suspencion'], 'safe'],
            [['nombre', 'apellido_paterno', 'sexo'], 'required'],
            [['imputado', 'entrevista', 'suspendido'], 'integer'],
            [['notas_psicologicas', 'observaciones'], 'string'],
            [['nombre'], 'string', 'max' => 40],
            [['apellido_paterno', 'apellido_materno'], 'string', 'max' => 30],
            [['sexo'], 'string', 'max' => 1],
            [['folio'], 'string', 'max' => 25],
            [['numero_de_causa'], 'string', 'max' => 12],
            [['municipio'], 'string', 'max' => 20],
            [['supervisor'], 'string', 'max' => 60],
            [['numero_de_telefono'], 'string', 'max' => 15],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fecha_de_creacion' => 'Fecha De Creacion',
            'nombre' => 'Nombre',
            'apellido_paterno' => 'Apellido Paterno',
            'apellido_materno' => 'Apellido Materno',
            'sexo' => 'Sexo',
            'folio' => 'Folio',
            'imputado' => 'Imputado',
            'numero_de_causa' => 'Numero De Causa',
            'municipio' => 'Municipio',
            'supervisor' => 'Supervisor',
            'numero_de_telefono' => 'Numero De Telefono',
            'fecha_de_canalizacion' => 'Fecha De Canalizacion',
            'fecha_de_entrevista' => 'Fecha De Entrevista',
            'notas_psicologicas' => 'Notas Psicologicas',
            'observaciones' => 'Observaciones',
            'entrevista' => 'Entrevista',
            'suspendido' => 'Suspendido',
            'fecha_de_suspencion' => 'Fecha De Suspencion',
        ];
    }

    /**
     * Gets query for [[Asistencias]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsistencias()
    {
        return $this->hasMany(Asistencia::className(), ['asistente_id' => 'id'])->
      orderBy(['sesion_id' => SORT_ASC]);
    }

    /**
     * Gets query for [[Asistencias]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServicios()
    {
        return Servicio::find()
            ->leftJoin('sesiones', 'sesiones.servicio_id = servicios.id')
            ->leftJoin('asistentes_a_servicio', 'asistentes_a_servicio.servicio_id = servicios.id')
            ->leftJoin('asistentes', 'asistentes_a_servicio.asistente_id = asistentes.id')
            ->where(['asistentes.id'=>$this->id])
            ->groupBy(['servicios.id'])
            ->orderBy(['servicios.id'=> SORT_ASC])
            ->all();
    }

    /**
     *
     * @return String
     */
    public function getNombrecompleto()
    {
        return $this->nombre." ".$this->apellido_paterno." ".$this->apellido_materno;
    }

}
