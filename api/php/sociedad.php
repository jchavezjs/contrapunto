<?php
include('connection.php');
include('funciones.php');

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
				));

?>