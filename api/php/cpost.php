<?php
include('connection.php');
include('funciones.php');

$editdata = json_decode(file_get_contents("php://input"));

$id = $_GET['id'];

?>
