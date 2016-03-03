<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'cronicas' => articulo(40),
				'aconteceres' => articulo(41),
				'subsecciones' => subseccion(7),
				'banner1' => banner(7,1),
				'banner2' => banner(7,2),
				'banner3' => banner(7,3),
				'banner4' => banner(7,4),
				'bannerMovil' => banner(7,'movil'),
				'leidos' => leidos(7)
				));

?>
