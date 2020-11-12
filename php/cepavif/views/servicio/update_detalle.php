<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Servicio */

$this->title = 'Actualizar tipo de atención';
$this->params['breadcrumbs'][] = ['label' => 'Tipos de atención', 'url' => ['/admin/servicios']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicio-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php 
    	// Case Grupo
	    if($servicio->tipo_de_servicio_id == 1){
	    	echo $this->render('_form_grupal', [
		        'model' => $model,
		    ]);
	    }
    	// Case individual
	    if($servicio->tipo_de_servicio_id == 2){
	    	echo $this->render('_form_individual', [
		        'model' => $model,
		    ]);
	    }
	 ?>

</div>
