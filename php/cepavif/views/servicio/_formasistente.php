<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Asistente;
use yii\jui\AutoComplete;
use yii\web\JsExpression;

/* @var $this yii\web\View */
/* @var $model app\models\AsistenteDeServicio */

$this->title = 'Asignar asistente';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['servicios']];
$this->params['breadcrumbs'][] = ['label' => $model->servicio->tipoDeServicio->nombre, 'url' => ['servicioview', 'id'=>$model->servicio->id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="facilitador-assign">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="servicio-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php
	    $data = Asistente::find()
	    	->select(["CONCAT(nombre,' ',apellido_paterno,' ',apellido_materno) as value", "CONCAT(nombre,' ',apellido_paterno,' ',apellido_materno) as label","id as id"])
	    	->asArray()
	    	->all();

		echo AutoComplete::widget([
	    'name' => 'asistente_id',
	    'id' => 'autocomplete',
	    'options' => ['class' => 'form-control'],
	    'clientOptions' => [

	    'source' => $data,
	    'autoFill'=>true,
	    'minLength'=>'3',
	    'select' => new JsExpression("function( event, ui ) {
	        $('#asistentedeservicio-asistente_id').val(ui.item.id);
	     }")],
	     ]);
    ?>

    <!--?= $form->field($model, 'asistente_id')->dropDownList($asistentes) ?-->

	<?= $form->field($model, 'asistente_id')->hiddenInput()->label(false) ?>

	<?= $form->field($model, 'servicio_id')->hiddenInput(['value'=>$model->servicio_id])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
