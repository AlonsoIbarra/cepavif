<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;
use app\models\Sesion;
use app\models\FacilitadorDeServicio;
use app\models\AsistenteDeServicio;

/* @var $this yii\web\View */
/* @var $model app\models\Servicio */

$this->title = $model->tipoDeServicio->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['admin/servicios']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="servicio-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Actualizar', ['servicioupdate', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?php 
            $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
            if (in_array('ROLE_ADMIN', array_values($authorities)))
                echo Html::a('Delete', ['serviciodelete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => 'Estás seguro de eliminar el registro?',
                        'method' => 'post',
                    ],
                ]); 
        ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            [
                    'label' => 'tipo de servicio',
                    'value' => function ($model) {
                        return $model->tipoDeServicio->nombre;
                    }
                ],
            'nombre',
            [
                'label'=>'Cerrado',
                'attribute' => 'cerrado',
                'format' => 'boolean',
            ],
        ],
    ]) ?>
    <?= DetailView::widget([
        'model' => $modeldetail,
        'attributes' => [
            'fecha_de_inicio',
            'fecha_de_cierre',
            [
                'attribute' => 'hora',
                'visible'=> ($model->tipo_de_servicio_id == 1)?true:false,
            ],
        ],
    ]) ?>

  <div class="panel panel-default">
  <div class="panel-heading"><strong> Sesiones</strong></div>
  <div class="panel-body">
        <?php
        $dataProvider = new ActiveDataProvider([
            'query' => Sesion::find()->where(['servicio_id' => $model->id])->orderBy(['fecha'=>SORT_ASC]),
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                'fecha',
                [
                    'label' => 'Asistencias',
                    'value' => function ($model) {
                        return $model->getAsistencias()->count();
                    }
                ],
                [
                    'class' => 'yii\grid\ActionColumn',
                    'buttons'=>[
                        'view'=>function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['sesionview', 'id' => $model->id], ['class' => 'profile-link']);
                        },
                        'update'=>function ($url, $model) {
                            return '';
                        },
                        'delete'=>function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-trash"></span>', 
                                    ['sesiondelete', 'id' => $model->id], 
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
        <?= Html::a('Add Sesion', ['sesioncreate', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
 </div>
</div>
  <div class="panel panel-default">
  <div class="panel-heading"><strong> Asistentes registrados a atención</strong></div>
  <div class="panel-body">
            <?php
        $dataProvider = new ActiveDataProvider([
            'query' => AsistenteDeServicio::find()->where(['servicio_id' => $model->id]),
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
                [
                    'class' => 'yii\grid\ActionColumn',
                    'buttons'=>[
                        'view'=>function ($url, $model) {
                            return '';
                        },
                        'update'=>function ($url, $model) {
                            return '';
                        },
                        'delete'=>function ($url, $model) {
                            return Html::a('<span class="glyphicon glyphicon-trash"></span>', 
                                    ['asistentedelete', 'id' => $model->id], 
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
        <?= Html::a('Add Asistente', ['asistenteassign', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
 </div>
  </div>
  <?php
    $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
    if (in_array('ROLE_ADMIN', array_values($authorities))){
  ?>
      <div class="panel panel-default">
      <div class="panel-heading"><strong> Facilitadores</strong></div>
      <div class="panel-body">
                <?php
            $dataProvider = new ActiveDataProvider([
                'query' => FacilitadorDeServicio::find()->where(['servicio_id' => $model->id]),
                'pagination' => [
                    'pageSize' => 10,
                ],
            ]);
            echo GridView::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    [
                        'label' => 'Facilitador',
                        'value' => function ($model) {
                            return $model->user->nombre." ".$model->user->apellido_paterno;
                        }
                    ],
                    [
                        'class' => 'yii\grid\ActionColumn',
                        'buttons'=>[
                            'view'=>function ($url, $model) {
                                return '';
                            },
                            'update'=>function ($url, $model) {
                                return '';
                            },
                            'delete'=>function ($url, $model) {
                                return Html::a('<span class="glyphicon glyphicon-trash"></span>', 
                                        ['facilitadordelete', 'id' => $model->id], 
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
            <?= Html::a('Add Facilitador', ['facilitadorassign', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
     </div>
    </div>
<?php
    }
?>
</div>
