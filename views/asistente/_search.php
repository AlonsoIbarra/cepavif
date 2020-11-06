<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AsistentesSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="asistentes-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'fecha_de_creacion') ?>

    <?= $form->field($model, 'nombre') ?>

    <?= $form->field($model, 'apellido_paterno') ?>

    <?= $form->field($model, 'apellido_materno') ?>

    <?php // echo $form->field($model, 'sexo') ?>

    <?php // echo $form->field($model, 'folio') ?>

    <?php // echo $form->field($model, 'imputado') ?>

    <?php // echo $form->field($model, 'numero_de_causa') ?>

    <?php // echo $form->field($model, 'municipio') ?>

    <?php // echo $form->field($model, 'supervisor') ?>

    <?php // echo $form->field($model, 'numero_de_telefono') ?>

    <?php // echo $form->field($model, 'fecha_de_canalizacion') ?>

    <?php // echo $form->field($model, 'fecha_de_entrevista') ?>

    <?php // echo $form->field($model, 'notas_psicologicas') ?>

    <?php // echo $form->field($model, 'observaciones') ?>

    <?php // echo $form->field($model, 'entrevista') ?>

    <?php // echo $form->field($model, 'suspendido') ?>

    <?php // echo $form->field($model, 'fecha_de_suspencion') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
