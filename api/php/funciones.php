<?php

function articulo($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal as idPersonal,
			a.preview, i.rutaFoto as foto, a.fecha, f.nombre as fotografo
			from articulo a, personal as c, imagenesarticulo as i, fotografo as f
			where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo and a.activo = 1
			and i.posicion='principal' and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'idPersonal' => $idPersonal = $result['idPersonal'],
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
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal as idPersonal,
			a.preview, c.rutaFoto as foto, a.fecha
			from articulo a, personal as c
			where a.idPersonal = c.idPersonal
			and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'idPersonal' => $idPersonal = $result['idPersonal'],
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
	if($seccion == 2){
	$str = "SELECT idSubseccion as id, nombre, url from subseccion where idSeccion = $seccion ORDER BY nombre";
	}else{
	$str = "SELECT idSubseccion as id, nombre, url from subseccion where idSeccion = $seccion";
	}
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
	$str = "SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.rutaFoto as foto, a.titulo, a.fecha, c.idPersonal as idPersonal
				from personal as c, columna as a
				where c.idPersonal = a.idPersonal and a.activo = 1
				ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'idPersonal' => $idPersonal = $result['idPersonal'],
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

function fotogaleria(){
	$fotinfo = mysql_query("SELECT a.titulo, a.rutaFoto as foto, f.nombre as fotografo, a.link
							from fotogaleria a, fotografo as f
							where a.idFotografo = f.idFotografo
							ORDER BY a.fecha desc, a.hora desc");
	while($fotpreview = mysql_fetch_array($fotinfo)){
		$fotogaleria[] = array(
					'fotografo' => $fotografo = $fotpreview['fotografo'],
					'foto' => $foto = $fotpreview['foto'],
					'link' => $link = $fotpreview['link'],
					'titulo' => $titulo = $fotpreview['titulo'],);
	}
	return $fotogaleria;
}

function actualidad(){
	$actinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, s.nombre as subseccion, s.url as urlSubseccion, a.preview, i.rutaFoto as foto, f.nombre as fotografo, se.url as urlSeccion, c.idPersonal
							from articulo a, personal as c, subseccion as s, imagenesarticulo as i, fotografo as f, seccion se
							where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and a.activo = 1 and s.idSeccion = se.idSeccion
							and c.cargo='periodista' and i.posicion='principal' and a.especial = 0 and a.idSubseccion not in (1,2,3,4,5,6,35,45,46,49,54,57,58,59,60)
							ORDER BY a.fecha desc, a.hora desc");
	while($actpreview = mysql_fetch_array($actinfo)){
		$actualidad[] = array(
					'id' => $id = $actpreview['id'],
					'idPersonal' => $idPersonal = $actpreview['idPersonal'],
					'titulo' => $titulo = $actpreview['titulo'],
					'autor' => $autor = $actpreview['autor'],
					'fecha' => $fecha = formatoFecha($actpreview['fecha']),
					'subseccion' => $subseccion = $actpreview['subseccion'],
					'preview' => $preview = $actpreview['preview'],
					'urlSeccion' => $urlSeccion = $actpreview['urlSeccion'],
					'urlSubseccion' => $urlSubseccion = $actpreview['urlSubseccion'],
					'foto' => $foto = $actpreview['foto'],
					'fotografo' => $fotografo = $actpreview['fotografo'],);
	}

	return $actualidad;
}

function caricatura(){
	$carinfo = mysql_query("SELECT a.idCaricatura, a.rutaFoto as foto, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as caricaturista
							from caricatura a, caricaturista c
							where a.idCaricaturista = c.idCaricaturista
							ORDER BY a.fecha desc, a.hora desc");
	while($carpreview = mysql_fetch_array($carinfo)){
		$caricatura[] = array(
					'foto' => $foto = $carpreview['foto'],
					'idCaricatura' => $idCaricatura = $carpreview['idCaricatura'],
					'caricaturista' => $caricaturista = $carpreview['caricaturista'],
					'fecha' => $fecha = $carpreview['fecha'],);
	}
	return $caricatura;
}

function banner($seccion, $posicion){
	$query = "SELECT a.rutaFoto, a.link, b.tiempo
		 											FROM banner a, posicion b
													WHERE a.idPosicion = b.idPosicion and b.idSeccion = $seccion and b.posicion = '$posicion' and a.activo = 1";
	$baninfo = mysql_query($query);
	while($banpreview = mysql_fetch_array($baninfo)){
		$banner[]=array(
								'foto' => $foto = $banpreview['rutaFoto'],
								'link' => $link = $banpreview['link'],
								'tiempo' => $tiempo = $banpreview['tiempo'],
							);
	}
	return $banner;
}
?>
