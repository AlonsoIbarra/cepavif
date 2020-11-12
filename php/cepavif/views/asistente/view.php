<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;
use app\models\Asistencia;
use app\models\Servicio;

/* @var $this yii\web\View */
/* @var $model app\models\Asistentes */

$this->title = $model->nombre." ".$model->apellido_paterno." ".$model->apellido_materno;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['asistentes']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="asistentes-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Actualizar', ['asistenteupdate', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'nombre',
            'apellido_paterno',
            'apellido_materno',
            'sexo',
            'folio',
            'imputado',
            'numero_de_causa',
            'municipio',
            'supervisor',
            'numero_de_telefono',
            'fecha_de_canalizacion',
            'fecha_de_entrevista',
            'notas_psicologicas:ntext',
            'observaciones:ntext',
            'entrevista',
            'suspendido',
            'fecha_de_suspencion',
        ],
    ]) ?>
  <div class="panel panel-default">
  <div class="panel-heading"><strong> Asistencias</strong></div>
  <div class="panel-body">
        <?php
        $servicios = $model->servicios;
        foreach ($servicios as $servicio){
            echo "<h4>".$servicio->tipoDeServicio->nombre."</h4>";
            echo "<h5>".$servicio->nombre."</h5>";
            $dataProvider = new ActiveDataProvider([
                'query' => Asistencia::find()
                    ->joinWith('sesion')
                    ->where(['asistente_id' => $model->id])
                    ->andWhere(['servicio_id'=>$servicio->id])
                    ->orderBy(['fecha'=>SORT_ASC]),
                'pagination' => [
                    'pageSize' => 10,
                ],
            ]);
            echo GridView::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    [
                        'label' => 'Sesion',
                        'value' => function ($model) {
                            return $model->sesion->fecha;
                        }
                    ],
                    'observaciones',
                ]
            ]);
        }

        ?>
    </div>
     <div class="panel-footer">
            <?= Html::a('Descargar constancia', ['constanciadeasistencias', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
     </div>
    </div>
</div>
