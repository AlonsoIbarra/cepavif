<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;
use app\models\Asistencia;

/* @var $this yii\web\View */
/* @var $model app\models\Sesion */

$this->title = "Asistencias de sesión";
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicios']];
$this->params['breadcrumbs'][] = ['label' => $model->servicio->tipoDeServicio->nombre, 'url' => ['servicioview', 'id'=>$model->servicio->id]];
$this->params['breadcrumbs'][] = $model->fecha;
\yii\web\YiiAsset::register($this);
?>
<div class="asistentes-view">

    <h3> <?= Html::encode($this->title) ?></h3>

  <div class="panel panel-default">
  <div class="panel-heading"><strong> Asistencias</strong></div>
  <div class="panel-body">
        <?php
        $dataProvider = new ActiveDataProvider([
            'query' => Asistencia::find()->where(['sesion_id' => $model->id]),
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'label' => 'Asistente',
                    'value' => function ($model) {
                        return $model->asistente->nombre." ".$model->asistente->apellido_paterno." ".$model->asistente->apellido_materno;
                    }
                ],
                'observaciones',
                [
                    'class' => 'yii\grid\ActionColumn',
                    'buttons'=>[
                        'view'=>function ($url, $model) {
                            '';
                        },
                        'update'=>function ($url, $model) {
                            return '';
                        },
                        'delete'=>function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-trash"></span>', 
                                    ['asistenciadelete', 'id' => $model->id], 
                                    ['class' => 'profile-link', 'data' => [
                                        'confirm' => 'Are you sure you want to delete this item?',
                                        'method' => 'post',
                                    ],
                                ]);
                        },
                    ],
                ],
            ]
        ]);
        ?>
 </div>
 <div class="panel-footer">
        <?= Html::a('Registrar asistencia', ['asistenciacreate', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
 </div>
</div>

</div>