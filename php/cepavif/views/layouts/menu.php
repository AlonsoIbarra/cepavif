<?php
use yii\helpers\ArrayHelper;
if(!Yii::$app->user->isGuest){
	$authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');

	if (in_array('ROLE_ADMIN', array_values($authorities)))
		echo $this->render('admin_menu.php');
	if (in_array('ROLE_FACILITADOR', array_values($authorities)) ||in_array('ROLE_PSICOLOGO', array_values($authorities)))
	    echo $this->render('facilitador_menu.php');
	if (in_array('ROLE_MC', array_values($authorities)))
	    echo $this->render('mc_menu.php');
	if (in_array('ROLE_AA', array_values($authorities)))
	    echo $this->render('apoyoadmin_menu.php');
}
?>