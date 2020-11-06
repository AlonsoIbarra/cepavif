<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\jui\DatePicker;


/* @var $this yii\web\View */
/* @var $model app\models\DetalleDeServicio */
/* @var $form ActiveForm */
?>
<div class="servicio-_form_detalle">

    <?php $form = ActiveForm::begin(); ?>

		<?= $form->field($model,'fecha')->widget(DatePicker::className(),['dateFormat' => 'yyyy-MM-dd','options'=> ['class'=>'form-control']]) ?>

        <?= $form->field($model, 'servicio_id')->hiddenInput(['value'=>$model->servicio_id])->label(false) ?>

        <div class="form-group">
            <?= Html::submitButton('Guardar', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- servicio-_form_detalle -->
