<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ServicioSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

//$this->title = 'Inicio';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicio-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear tipo de atención', ['serviciocreate'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php  // echo $this->render('../servicio/_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'label' => 'Tipo de servicio',
                'attribute' => 'tipo_de_servicio_id',
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
            [
                'class' => 'yii\grid\ActionColumn',
                'buttons'=>[
                    'view'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['servicioview', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'update'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-pencil"></span>', ['servicioupdate', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'delete'=>function ($url, $model) {
                        return '';
                    },
                ],
            ],
        ],
    ]); ?>


</div>