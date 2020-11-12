<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Asistentes */

$this->title = 'Actualizar : ' . $model->nombre." ".$model->apellido_paterno;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['asistentes']];
$this->params['breadcrumbs'][] = ['label' => $model->nombre." ".$model->apellido_paterno, 'url' => ['asistenteview', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="asistentes-update">
    <h1><?= Html::encode($this->title) ?></h1>
  <?php
    $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
    if (in_array('ROLE_ADMIN', array_values($authorities))){
    	echo $this->render('_form', [
			        'model' => $model,
			    ]);
    }else if(in_array('ROLE_MC', array_values($authorities))){
    	echo $this->render('_formmc', [
			        'model' => $model,
			    ]);
    }else{
		echo $this->render('_formfacilitador', [
		    'model' => $model,
		]);
    }
  ?>

</div>
