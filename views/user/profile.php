<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;
use app\models\Rol;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = $model->username;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['usuarios']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="user-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Actualizar', ['admin/userupdate', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'username',
            'enabled',
            'nombre',
            'apellido_paterno',
            'apellido_materno',
            'ultimo_acceso',
            'accessToken',
            'authKey',
        ],
    ]) ?>

  <div class="panel panel-default">
  <div class="panel-heading"><strong> Roles</strong></div>
  <div class="panel-body">
        <?php
        $dataProvider = new ActiveDataProvider([
            'query' => Rol::find()->where(['user_id' => $model->id]),
            'pagination' => [
                'pageSize' => 4,
            ],
        ]);
        echo GridView::widget([
            'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'authority',
        ]
        ]);
        ?>
    </div>
    </div>
<?= Html::a('Actualizar contraseña', ['userupdatepassword', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
</div>