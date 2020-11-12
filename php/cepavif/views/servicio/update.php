<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Servicio */

$this->title = 'Actualizar tipo de atención: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['/admin/servicios']];
$this->params['breadcrumbs'][] = ['label' => $model->tipoDeServicio->nombre, 'url' => ['servicioview', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="servicio-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'tiposDeServicioList' => $tiposDeServicioList,
    ]) ?>

</div>
