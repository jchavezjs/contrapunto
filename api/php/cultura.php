<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'contratabues' => articulo(58),
				'resenas' => articulo(57),
				'artes' => articulo(55),
				'literaturas' => articulo(56),
				'anecdotas' => articulo(54),
				'subsecciones' => subseccion(6)
				));

?>