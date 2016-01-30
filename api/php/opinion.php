<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

$ediinfo = mysql_query("SELECT idArticulo as id,titulo, fecha, preview
						FROM articulo
						WHERE idSubseccion = 1
						ORDER BY fecha desc, hora desc");
$carinfo = mysql_query("SELECT a.rutaFoto as foto
						from caricatura a 
						ORDER BY a.fecha desc, a.hora desc");
$triinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha
						from personal as c, articulo as a 
						where c.idPersonal = a.idPersonal and a.idSubseccion = 3 
						ORDER BY a.fecha desc, a.hora desc");
$libinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, c.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha
						from articulo as a, personal as c
						where a.idSubseccion = 4 and a.idPersonal=c.idPersonal
						ORDER BY a.fecha desc, a.hora desc ");
$acainfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha
						from articulo as a, personal as c
						where a.idSubseccion = 6 and a.idPersonal=c.idPersonal
						ORDER BY a.fecha desc, a.hora desc ");

while($edipreview = mysql_fetch_array($ediinfo)){
	$editorial[]=array(
				'id' => $id = $edipreview['id'],
				'titulo' => $titulo = $edipreview['titulo'],
				'fecha' => $fecha =  formatoFecha($edipreview['fecha']),
				'preview' => $preview = $edipreview['preview']);
}

while($carpreview = mysql_fetch_array($carinfo)){
	$caricatura[] = array(
				'foto' => $foto = $carpreview['foto'],);
}

while($tripreview = mysql_fetch_array($triinfo)){
	$tribuna[] = array(
				'id' => $id = $tripreview['id'],
				'autor' => $autor = $tripreview['autor'],
				'fecha' => $fecha =  formatoFecha($tripreview['fecha']),
				'titulo' => $titulo = $tripreview['titulo'],);
}

while($libpreview = mysql_fetch_array($libinfo)){
	$libertad[] = array(
				'id' => $id = $libpreview['id'],
				'foto' => $foto = $libpreview['foto'],
				'fecha' => $fecha =  formatoFecha($libpreview['fecha']),
				'titulo' => $titulo = $libpreview['titulo'],
				'autor' => $autor = $libpreview['autor'],);
}

while($acapreview = mysql_fetch_array($acainfo)){
	$academia[] = array(
				'id' => $id = $acapreview['id'],
				'titulo' => $titulo = $acapreview['titulo'],
				'autor' => $autor = $acapreview['autor'],
				'fecha' => $fecha = formatoFecha($acapreview['fecha']),
				);
}


echo json_encode(array(
				'editoriales' => $editorial,
				'caricaturas' => $caricatura,
				'tribunas' => $tribuna,
				'libertades' => $libertad,
				'columnistas' => columna(),
				'academias' => $academia,
				'politicas' => dropdown(2),
				'economias' => dropdown(5),
				'sociedades' => dropdown(4),
				'internacionales' => dropdown(3),
				'subsecciones' => subseccion(1),
				'culturas' => dropdown(6)
				));

?>