<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;
use app\models\Asistencia;

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
            'municipio',
            'supervisor',
            'numero_de_telefono',
            'fecha_de_canalizacion',
            'fecha_de_entrevista',
            'notas_psicologicas:ntext',
            'entrevista',
        ],
    ]) ?>
  <div class="panel panel-default">
  <div class="panel-heading"><strong> Asistencias</strong></div>
  <div class="panel-body">
        <?php
        $dataProvider = new ActiveDataProvider([
            'query' => Asistencia::find()->where(['asistente_id' => $model->id])->orderBy(['sesion_id'=>SORT_ASC]),
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
        ?>
    </div>
    </div>
</div>
