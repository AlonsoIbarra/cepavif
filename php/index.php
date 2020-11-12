<?php
$host = 'db';
$user = "alon";
$password = "alon";
$db = "cepavif";
$conn = new mysqli($host, $user, $password, $db);
if($conn->connect_error){
	echo "Conection failed". $conn->connect_error;
}else{
	echo "Conection to MYSQL successfully!";
}
if (!defined('PDO::ATTR_DRIVER_NAME')) {
	echo 'PDO unavailable';
}else{
	echo 'PDO available';
}

if ($bs->getAttribute(PDO::ATTR_DRIVER_NAME) == 'mysql') {
    $sentencia = $bs->prepare('select * from foo',
        array(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY => true));
} else {
    echo "mi aplicación sólo funciona con mysql; debería usar \$sentencia->fetchAll() en su lugar";
}

phpinfo();
?>