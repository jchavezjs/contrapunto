<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');


echo json_encode(array(
				'ambientes' => articulo(27),
				'violencias' => articulo(28),
				'saludes' => articulo(29),
				'dds' => articulo(30),
				'educaciones' => articulo(31),
				'migraciones' => articulo(32),
				'generos' => articulo(33),
				'periodismos' => articulo(34),
				'tabues' => articulo(35),
				'judiciales' => articulo(36),
				'subsecciones' => subseccion(4),
				'banner1' => banner(4,1),
				'banner2' => banner(4,2),
				'banner3' => banner(4,3),
				'banner4' => banner(4,4),
				'bannerMovil' => banner(4,'movil'),
				'leidos' => leidos(4)
				));

?>
