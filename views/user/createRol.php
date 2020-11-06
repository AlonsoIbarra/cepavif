<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = 'Asignar Rol';
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['usuarios']];
$this->params['breadcrumbs'][] = ['label' => $model->user->username, 'url' => ['userview', 'id' => $model->user->id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_formRol', [
        'model' => $model,
    ]) ?>

</div>
