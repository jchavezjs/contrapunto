<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

echo json_encode(array(
				'subsecciones' => subseccion(1),
				'contenidos' => caricaturap(),
				'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
				'bannerMovil' => banner(1,'movil'),
				'leidos' => leidos(1)
				));

?>
