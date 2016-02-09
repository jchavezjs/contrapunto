<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

echo json_encode(array(
				'centroamericas' => articulo(42),
				'latinoamericas' => articulo(43),
				'globales' => articulo(44),
				'subsecciones' => subseccion(3)
				));

?>
