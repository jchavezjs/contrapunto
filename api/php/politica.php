<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'politicas' => articulo(37),
				'gobiernos' => articulo(38),
				'partidos' => articulo(39),
				'subsecciones' => subseccion(2)
				));

?>
