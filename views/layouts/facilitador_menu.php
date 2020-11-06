<div class="container">
<?php
use yii\bootstrap\NavBar;
use yii\bootstrap\Nav;
if(!Yii::$app->user->isGuest){
    NavBar::begin();
    echo Nav::widget([
        'items' => [
            ['label' => 'Inicio', 'url' => ['facilitador/index']],
            ['label' => 'Usuarios', 'url' => ['facilitador/asistentes']],
            ['label' => 'Perfil', 'url' => ['facilitador/perfilview']],
            ['label' => 'Cerrar sesion['.Yii::$app->user->identity->nombre.']', 
                'url' => ['site/logout'],
                'linkOptions' => ['data-method' => 'post']],
        ],
        'options' => ['class' =>'nav-pills'],
    ]);
    NavBar::end();
}
?>
</div>