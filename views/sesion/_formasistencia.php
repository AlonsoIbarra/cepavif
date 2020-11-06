<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Servicio */

$this->title = 'Asignar asistencia';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicios']];
$this->params['breadcrumbs'][] = ['label' => $model->sesion->servicio->tipoDeServicio->nombre, 'url' => ['servicioview', 'id'=>$model->sesion->servicio->id]];
$this->params['breadcrumbs'][] = ['label' => $model->sesion->fecha, 'url' => ['sesionview', 'id'=>$model->sesion->id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="facilitador-assign">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="servicio-form">

    <?php $form = ActiveForm::begin(); ?>
    
    <?= $form->field($model, 'asistente_id')->dropDownList($asistentes) ?>

    <?= $form->field($model, 'observaciones')->textInput(['maxlength' => true]) ?>

	<?= $form->field($model, 'sesion_id')->hiddenInput(['value'=>$model->sesion_id])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
