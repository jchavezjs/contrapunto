<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');

$ediinfo = mysql_query("SELECT idArticulo as id,titulo, fecha, preview
						FROM articulo
						WHERE idSubseccion = 1 and activo = 1
						ORDER BY fecha desc, hora desc
						limit 3");
$triinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, c.idPersonal
						from personal as c, articulo as a
						where c.idPersonal = a.idPersonal and a.idSubseccion = 3 and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						limit 3");
$libinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, c.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, c.idPersonal
						from articulo as a, personal as c
						where a.idSubseccion = 4 and a.idPersonal=c.idPersonal and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						limit 3");
$acainfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, c.idPersonal
						from articulo as a, personal as c
						where a.idSubseccion = 6 and a.idPersonal=c.idPersonal and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						limit 3");
$colinfo = mysql_query("SELECT CONCAT(nombres, ' ', apellidos) as nombre, idPersonal as id from personal where cargo='columnista'");

while($edipreview = mysql_fetch_array($ediinfo)){
	$editorial[]=array(
				'id' => $edipreview['id'],
				'titulo' => $edipreview['titulo'],
				'fecha' => formatoFecha($edipreview['fecha']),
				'preview' => $edipreview['preview']);
}

while($colpreview = mysql_fetch_array($colinfo)){
	$columnista[] = array(
		'id' => $colpreview['id'],
		'nombre' => $colpreview['nombre'],);
}

while($tripreview = mysql_fetch_array($triinfo)){
	$tribuna[] = array(
				'id' => $tripreview['id'],
				'idPersonal' => $tripreview['idPersonal'],
				'autor' => $tripreview['autor'],
				'fecha' => formatoFecha($tripreview['fecha']),
				'titulo' => $tripreview['titulo'],);
}

while($libpreview = mysql_fetch_array($libinfo)){
	$libertad[] = array(
				'id' => $libpreview['id'],
				'idPersonal' => $libpreview['idPersonal'],
				'foto' => $libpreview['foto'],
				'fecha' => formatoFecha($libpreview['fecha']),
				'titulo' => $libpreview['titulo'],
				'autor' => $libpreview['autor'],);
}

while($acapreview = mysql_fetch_array($acainfo)){
	$academia[] = array(
				'id' => $acapreview['id'],
				'idPersonal' => $acapreview['idPersonal'],
				'titulo' => $acapreview['titulo'],
				'autor' => $acapreview['autor'],
				'fecha' => formatoFecha($acapreview['fecha']),
				);
}


echo json_encode(array(
				'editoriales' => $editorial,
				'caricaturas' => caricatura(),
				'tribunas' => $tribuna,
				'libertades' => $libertad,
				'columnistas' => columna(),
				'academias' => $academia,
				'politicas' => dropdown(2),
				'economias' => dropdown(5),
				'sociedades' => dropdown(4),
				'internacionales' => dropdown(3),
				'subsecciones' => subseccion(1),
				'culturas' => dropdown(6),
				'autores' => $columnista,
				'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
				'banner4' => banner(1,4),
				'bannerMovil' => banner(1,'movil'),
				'leidos' => leidos(1),
				'sondeo' => primerSondeo()
				));

?>
