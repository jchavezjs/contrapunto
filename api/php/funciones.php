<?php

function articulo($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, 
			a.preview, i.rutaFoto as foto, a.fecha, f.nombre as fotografo 
			from articulo a, personal as c, imagenesarticulo as i, fotografo as f
			where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo 
			and i.posicion='principal' and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'preview' => $preview = $result['preview'],
					'fecha' => $fecha = formatoFecha($result['fecha']),
					'fotografo' => $fotografo = $result['fotografo'],);
	}
	return $resultado;
}

function opinion($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, 
			a.preview, c.rutaFoto as foto, a.fecha
			from articulo a, personal as c
			where a.idPersonal = c.idPersonal
			and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'preview' => $preview = $result['preview'],
					'fecha' => $fecha = formatoFecha($result['fecha']),
					);
	}
	return $resultado;
}

function subseccion($seccion){
	$str = "SELECT idSubseccion as id, nombre, url from subseccion where idSeccion = $seccion";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'nombre' => $nombre = $result['nombre'],
					'url' => $url = $result['url'],
					);
	}
	return $resultado;
}

function columna(){
	$str = "SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.rutaFoto as foto, a.titulo, a.fecha 
				from personal as c, columna as a 
				where c.idPersonal = a.idPersonal
				ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'fecha' => $fecha = formatoFecha($result['fecha']),
					);
	}
	return $resultado;
}

function dropdown($seccion){
	$str = "SELECT idSubseccion as id, nombre
			from subseccion
			where idSeccion = $seccion";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'nombre' => $nombre = $result['nombre']);
	}
	return $resultado;
}
function formatoFecha($fecha){
	list($diaNombre, $dia, $mes, $anio) = explode(" ",date("l, d m Y", strtotime($fecha)));
	$meses = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
	if($diaNombre == "Sunday,"){
		$nombre = "Domingo,";
	}elseif($diaNombre == "Monday,"){
		$nombre = "Lunes,";
	}elseif($diaNombre == "Tuesday,"){
		$nombre = "Martes,";
	}elseif($diaNombre == "Wednesday,"){
		$nombre = "Lunes,";
	}elseif($diaNombre == "Thursday,"){
		$nombre = "Jueves,";
	}elseif($diaNombre == "Friday,"){
		$nombre = "Lunes,";
	}elseif($diaNombre == "Saturday,"){
		$nombre = "Sabado,";
	}
	return $nombre." ".$dia." de ".$meses[$mes -1]." del ".$anio;
}
?>