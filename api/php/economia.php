<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');

$bolinfo = mysql_query("SELECT nombre, porcentaje, valor, fecha, ciudad from bolsa");

$intinfo = mysql_query("SELECT nombre, porcentaje, fecha from tasainteres");

$divinfo = mysql_query("SELECT nombre, cambio, pais, fecha from divisa");

$datinfo = mysql_query("SELECT indicador, periodo, cifras, enlaceDetalles as enlace from datoseconomicos");

$merinfo = mysql_query("SELECT nombre, descripcion, cambio, porcentaje, menor, masAlto, ultimo, fecha from mercado");

while($bolpreview = mysql_fetch_array($bolinfo)){
	$bolsa[]=array(
			'nombre' => $bolpreview['nombre'],
			'fecha' => $bolpreview['fecha'],
			'valor' =>  $bolpreview['valor'],
			'ciudad' =>  $bolpreview['ciudad'],
			'porcentaje' => $bolpreview['porcentaje']);
}

while($intpreview = mysql_fetch_array($intinfo)){
	$interes[]=array(
			'nombre' => $intpreview['nombre'],
			'fecha' => $intpreview['fecha'],
			'porcentaje' => $intpreview['porcentaje']);
}

while($divpreview = mysql_fetch_array($divinfo)){
	$divisa[]=array(
			'nombre' => $divpreview['nombre'],
			'pais' => $divpreview['pais'],
			'fecha' => formatoFecha2($divpreview['fecha']),
			'cambio' => $divpreview['cambio']);
}

while($datpreview = mysql_fetch_array($datinfo)){
	$dato[]=array(
			'indicador' => $datpreview['indicador'],
			'periodo' => $datpreview['periodo'],
			'cifras' => $datpreview['cifras'],
			'enlace' => $datpreview['enlace'],);
}

while($merpreview = mysql_fetch_array($merinfo)){
	$mercado[]=array(
			'nombre' => $merpreview['nombre'],
			'descripcion' => $merpreview['descripcion'],
			'cambio' => $merpreview['cambio'],
			'porcentaje' => $merpreview['porcentaje'],
			'menor' => $merpreview['menor'],
			'masAlto' => $merpreview['masAlto'],
			'fecha' => $merpreview['fecha'],
			'ultimo' => $merpreview['ultimo'],);
}

echo json_encode(array(
				'negocios' => articulo(45),
				'coyunturas' => articulo(46),
				'mundos' => articulo(47),
				'mercados' => articulo(48),
				'analisiss' => opinion(49),
				'bolsas' => $bolsa,
				'intereses' => $interes,
				'divisas' => $divisa,
				'datos' => $dato,
				'subsecciones' => subseccion(5),
				'mercas' => $mercado,
				'banner1' => banner(5,1),
				'banner2' => banner(5,2),
				'banner3' => banner(5,3),
				'banner4' => banner(5,4),
				'bannerMovil' => banner(5,'movil'),
				'leidos' => leidos(5)
				));

?>
