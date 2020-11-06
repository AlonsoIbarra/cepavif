<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AsistentesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

//$this->title = 'Asistentes';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="asistentes-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Asistentes', ['asistentecreate'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'nombre',
            'apellido_paterno',
            'apellido_materno',
            'sexo',
            //'imputado',
            [
                'label'=>'Imputado',
                'attribute' => 'imputado',
                'format' => 'boolean',
            ],
            'numero_de_causa',
            'municipio',
            'supervisor',
            'numero_de_telefono',
            //'fecha_de_canalizacion',
            //'fecha_de_entrevista',
            //'notas_psicologicas:ntext',
            'observaciones:ntext',
            //'entrevista',
            [
                'label'=>'Entrevista',
                'attribute' => 'entrevista',
                'format' => 'boolean',
            ],
            //'pre_test',
            [
                'label'=>'Pre test',
                'attribute' => 'pre_test',
                'format' => 'boolean',
            ],
            //'post_test',
            [
                'label'=>'Post test',
                'attribute' => 'post_test',
                'format' => 'boolean',
            ],
            //'evaluacion',
            [
                'label'=>'Evaluacion',
                'attribute' => 'evaluacion',
                'format' => 'boolean',
            ],
            //'suspendido',
            [
                'label'=>'Suspendido',
                'attribute' => 'suspendido',
                'format' => 'boolean',
            ],
            //'fecha_de_suspencion',

            [
                'class' => 'yii\grid\ActionColumn',
                'contentOptions' => ['style' => 'width: 8.7%'],
                'buttons'=>[
                    'view'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['asistenteview', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'update'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-pencil"></span>', ['asistenteupdate', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'delete'=>function ($url, $model) {
                        return '';
                    },
                ],
            ],
        ],
    ]); ?>


</div>