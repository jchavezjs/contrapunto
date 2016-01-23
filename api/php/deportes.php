<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'cronicas' => articulo(40),
				'aconteceres' => articulo(41),
				'subsecciones' => subseccion(7)
				));

?>