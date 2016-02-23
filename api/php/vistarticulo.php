<?php

include('connection.php');
include('funciones.php');
$editdata = json_decode(file_get_contents("php://input"));
date_default_timezone_set('America/El_Salvador');

$id = $_GET['id'];
$fecha = date('Y-m-d');
$hora = date('H:i:s');
mysql_query("insert into vistaarticulo(idArticulo,fecha,hora) values($id,'$fecha','$hora')");

?>
