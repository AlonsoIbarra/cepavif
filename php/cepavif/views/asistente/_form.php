<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\jui\DatePicker;


/* @var $this yii\web\View */
/* @var $model app\models\Asistentes */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="asistentes-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true, 'class' => 'form-control search-asistentes']) ?>

    <?= $form->field($model, 'apellido_paterno')->textInput(['maxlength' => true, 'class' => 'form-control search-asistentes']) ?>

    <?= $form->field($model, 'apellido_materno')->textInput(['maxlength' => true, 'class' => 'form-control search-asistentes']) ?>

    <div class="form-group">
        <div class="container">
            <h4>Lista de coincidencias</h4>
            <ul id="coincidenciasList" class="list-group"></ul>
        </div>
    </div>

    <?= $form->field($model, 'sexo')->dropDownList(['M' => 'Mujer', 'H' => 'Hombre'], ['prompt' => 'Seleccione una opción']) ?>


    <?= $form->field($model, 'folio')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'imputado')->dropDownList(['1' => 'Sí', '0' => 'No'], ['prompt' => 'Seleccione una opción']) ?>

    <?= $form->field($model, 'numero_de_causa')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'municipio')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'supervisor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'numero_de_telefono')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model,'fecha_de_canalizacion')->widget(DatePicker::className(),['dateFormat' => 'yyyy-MM-dd','options'=> ['class'=>'form-control']]) ?>

    <?= $form->field($model,'fecha_de_entrevista')->widget(DatePicker::className(),['dateFormat' => 'yyyy-MM-dd','options'=> ['class'=>'form-control']]) ?>

    <?= $form->field($model, 'notas_psicologicas')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'observaciones')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'entrevista')->dropDownList(['1' => 'Sí', '0' => 'No'], ['prompt' => 'Seleccione una opción']) ?>

    <?= $form->field($model, 'suspendido')->dropDownList(['1' => 'Sí', '0' => 'No'], ['prompt' => 'Seleccione una opción']) ?>

    <?= $form->field($model,'fecha_de_suspencion')->widget(DatePicker::className(),['dateFormat' => 'yyyy-MM-dd','options'=> ['class'=>'form-control']]) ?>

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
