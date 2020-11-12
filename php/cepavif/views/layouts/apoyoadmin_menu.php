<div class="container">
<?php
use yii\bootstrap\NavBar;
use yii\bootstrap\Nav;
if(!Yii::$app->user->isGuest){
    NavBar::begin();
    echo Nav::widget([
        'items' => [
            ['label' => 'Inicio', 'url' => ['apoyoadmin/index']],
            ['label' => 'Perfil', 'url' => ['apoyoadmin/perfilview']],
            ['label' => 'Cerrar sesion', 
                'url' => ['site/logout'],
                'linkOptions' => ['data-method' => 'post']],
        ],
        'options' => ['class' =>'nav-pills'],
    ]);
    NavBar::end();
}
?>
</div>