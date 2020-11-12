<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Prestadores de servicio';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Registrar prestador de servicio', ['admin/usercreate'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'username',
            [
                'label'=>'Habilitada',
                'attribute' => 'enabled',
                'format' => 'boolean',
            ],
            'nombre',
            'apellido_paterno',
            'apellido_materno',
            'ultimo_acceso',
            [
                'label'=>'Roles',
                'value'=> function ($model) {
                    $val = "";
                    foreach ($model->roles as $rol) {
                        $val .= $rol->nombre." ";
                    }
                    return $val;
                }
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'contentOptions' => ['style' => 'width: 8.7%'],
                'buttons'=>[
                    'view'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['admin/userview', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'update'=>function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-pencil"></span>', ['admin/userupdate', 'id' => $model->id], ['class' => 'profile-link']);
                    },
                    'delete'=>function ($url, $model) {
                        return '';
                    },
                ],
            ],
        ],
    ]); ?>



</div>
