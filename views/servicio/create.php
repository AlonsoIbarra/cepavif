<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Servicio */

$this->title = 'Crear tipo de atención';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicios']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicio-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'tiposDeServicioList'=> $tiposDeServicioList,
    ]) ?>

</div>
