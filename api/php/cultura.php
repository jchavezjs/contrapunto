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
				'subsecciones' => subseccion(6),
				'banner1' => banner(6,1),
				'banner2' => banner(6,2),
				'banner3' => banner(6,3),
				'banner4' => banner(6,4),
				'bannerMovil' => banner(6,'movil'),
				'leidos' => leidos(6)
				));

?>
