<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

$bolinfo = mysql_query("SELECT nombre, porcentaje, valor from bolsa");

$intinfo = mysql_query("SELECT nombre, porcentaje from tasainteres");

$divinfo = mysql_query("SELECT nombre, cambio from divisa");

$datinfo = mysql_query("SELECT indicador, periodo, cifras, enlaceDetalles as enlace from datoseconomicos");

$merinfo = mysql_query("SELECT nombre, descripcion, cambio, porcentaje, menor, masAlto, ultimo from mercado");

while($bolpreview = mysql_fetch_array($bolinfo)){
	$bolsa[]=array(
			'nombre' => $nombre = $bolpreview['nombre'],
			'valor' => $valor = $bolpreview['valor'],
			'porcentaje' => $porcentaje = $bolpreview['porcentaje']);
}

while($intpreview = mysql_fetch_array($intinfo)){
	$interes[]=array(
			'nombre' => $nombre = $intpreview['nombre'],
			'porcentaje' => $porcentaje = $intpreview['porcentaje']);
}

while($divpreview = mysql_fetch_array($divinfo)){
	$divisa[]=array(
			'nombre' => $nombre = $divpreview['nombre'],
			'cambio' => $porcentaje = $divpreview['cambio']);
}

while($datpreview = mysql_fetch_array($datinfo)){
	$dato[]=array(
			'indicador' => $indicador = $datpreview['indicador'],
			'periodo' => $periodo = $datpreview['periodo'],
			'cifras' => $cifras = $datpreview['cifras'],
			'enlace' => $enlace = $datpreview['enlace'],);
}

while($merpreview = mysql_fetch_array($merinfo)){
	$mercado[]=array(
			'nombre' => $nombre = $merpreview['nombre'],
			'descripcion' => $descripcion = $merpreview['descripcion'],
			'cambio' => $cambio = $merpreview['cambio'],
			'porcentaje' => $porcentaje = $merpreview['porcentaje'],
			'menor' => $menor = $merpreview['menor'],
			'masAlto' => $masAlto = $merpreview['masAlto'],
			'ultimo' => $ultimo = $merpreview['ultimo'],);
}

echo json_encode(array(
				'negocios' => articulo(45),
				'coyunturas' => articulo(46),
				'mundos' => articulo(47),
				'mercados' => articulo(48),
				'analisiss' => articulo(49),
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
				));

?>
