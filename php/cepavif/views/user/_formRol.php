<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rol-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'authority')->dropDownList(['ROLE_ADMIN' => 'Administrador', 'ROLE_FACILITADOR' => 'Facilitador', 'ROLE_PSICOLOGO' => 'Psicólogo', 'ROLE_MC' => 'Medidas cautelares', 'ROLE_AA' => 'Apoyo administrativo'],['prompt'=>'Seleccione rol']) ?>

    <?= $form->field($model, 'nombre')->hiddenInput()->label(false) ?>
    
    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
