<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

echo json_encode(array(
				'centroamericas' => articulo(42),
				'latinoamericas' => articulo(43),
				'globales' => articulo(44),
				'subsecciones' => subseccion(3),
				'banner1' => banner(3,1),
				'banner2' => banner(3,2),
				'banner3' => banner(3,3),
				'banner4' => banner(3,4),
				'bannerMovil' => banner(3,'movil'),
				'leidos' => leidos(3)
				));

?>
