<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'politicas' => articulo(37),
				'gobiernos' => articulo(38),
				'partidos' => articulo(39),
				'subsecciones' => subseccion(2),
				'banner1' => banner(2,1),
				'banner2' => banner(2,2),
				'banner3' => banner(2,3),
				'banner4' => banner(2,4),
				'bannerMovil' => banner(2,'movil'),
				'leidos' => leidos(2)
				));

?>
