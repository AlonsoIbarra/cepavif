<div class="container">
<?php

use yii\bootstrap\NavBar;
use yii\bootstrap\Nav;
use yii\helpers\Html;

if(!Yii::$app->user->isGuest){
    NavBar::begin();
    echo Nav::widget([
        'items' => [
            ['label' => 'Inicio', 'url' => ['admin/index']],
            ['label' => 'Prestador de servicios', 'url' => ['admin/usuarios']],
            ['label' => 'Usuarios', 'url' => ['admin/asistentes']],
            ['label' => 'Tipos de atención', 'url' => ['admin/servicios']],
            ['label' => 'Reporte general', 'url' => ['admin/datagraphs']],
            ['label' => 'Perfil', 'url' => ['admin/perfilview']],
            ['label' => 'Salir', 
                'url' => ['site/logout'],
                'linkOptions' => ['data-method' => 'post']],
        ],
        'options' => ['class' =>'nav-pills'],
    ]);
    NavBar::end();
}
?>
</div>