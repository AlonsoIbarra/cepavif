<?php
// SIN USAR
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DetalleDeServicio */
/* @var $form ActiveForm */
?>
<div class="servicio-_form_detalle">

    <?php $form = ActiveForm::begin(); ?>
        <?= $form->field($model, 'fecha_de_inicio') ?>
        <?= $form->field($model, 'fecha_de_cierre') ?>
        <?= $form->field($model, 'servicio_id') ?>
        <?= $form->field($model, 'hora') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Guardar', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- servicio-_form_detalle -->
