<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'politicas' => articulo(37),
				'gobiernos' => articulo(38),
				'partidos' => articulo(39),
				'subsecciones' => subseccion(2),
				'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
				'banner4' => banner(1,4),
				'bannerMovil' => banner(1,'movil'),
				'leidos' => leidos(2)
				));

?>
