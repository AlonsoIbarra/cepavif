<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\FacilitadorDeServicio */

$this->title = 'Asignar facilitador';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicios']];
$this->params['breadcrumbs'][] = ['label' => $model->servicio->tipoDeServicio->nombre, 'url' => ['servicioview', 'id'=>$model->servicio_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="facilitador-assign">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="servicio-form">

    <?php $form = ActiveForm::begin(); ?>
    
    <?= $form->field($model, 'user_id')->dropDownList($facilitadores) ?>

	<?= $form->field($model, 'servicio_id')->hiddenInput(['value'=>$model->servicio_id])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
