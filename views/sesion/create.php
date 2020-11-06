<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Sesion */

$this->title = 'Crear sesion';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicioview', 'id'=>$model->servicio_id]];
$this->params['breadcrumbs'][] = ['label' => $model->servicio->tipoDeServicio->nombre, 'url' => ['servicioview', 'id'=>$model->servicio_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicio-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
