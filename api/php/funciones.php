<?php

function articulo($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal as idPersonal,
			a.preview, i.rutaFoto as foto, a.fecha, f.nombre as fotografo
			from articulo a, personal as c, imagenesarticulo as i, fotografo as f
			where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo and a.activo = 1
			and i.posicion='principal' and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc
			limit 3";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'preview' => $result['preview'],
					'fecha' => formatoFecha($result['fecha']),
					'fotografo' => $result['fotografo'],);
	}
	return $resultado;
}

function articulos($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal as idPersonal,
			a.preview, i.rutaFoto as foto, a.fecha, f.nombre as fotografo
			from articulo a, personal as c, imagenesarticulo as i, fotografo as f
			where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo and a.activo = 1
			and i.posicion='principal' and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'preview' => $result['preview'],
					'fecha' => formatoFecha($result['fecha']),
					'fotografo' => $result['fotografo'],);
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
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'preview' => $result['preview'],
					'fecha' => formatoFecha($result['fecha']),
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
					'id' => $result['id'],
					'nombre' => $result['nombre'],
					'url' => $result['url'],
					);
	}
	return $resultado;
}

function columna(){
	$str = "SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.rutaFoto as foto, a.titulo, a.fecha, c.idPersonal as idPersonal
				from personal as c, columna as a
				where c.idPersonal = a.idPersonal and a.activo = 1
				ORDER BY a.fecha desc, a.hora desc
				limit 3";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'fecha' => formatoFecha($result['fecha']),
					);
	}
	return $resultado;
}

function dropdown($seccion){
	$str = "SELECT idSubseccion as id, nombre, url
			from subseccion
			where idSeccion = $seccion";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $result['id'],
					'url' => $result['url'],
					'nombre' => $result['nombre']);
	}
	return $resultado;
}
function formatoFecha($fecha){
	list($diaNombre, $dia, $mes, $anio) = explode(" ",date("l, d m Y", strtotime($fecha)));
	$meses = array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
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

function formatoFecha2($fecha){
	list($dia, $mes, $anio) = explode(" ",date("d m Y", strtotime($fecha)));
	$meses = array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
	return $dia." de ".$meses[$mes -1]." del ".$anio;
}

function fotogaleria(){
	$fotinfo = mysql_query("SELECT a.id, a.titulo, a.rutaFoto as foto, f.nombre as fotografo, a.link
							from fotogaleria a, fotografo as f
							where a.idFotografo = f.idFotografo
							ORDER BY a.fecha desc, a.hora desc
							limit 1");
	while($fotpreview = mysql_fetch_array($fotinfo)){
		$fotogaleria[] = array(
					'id' => $fotpreview['id'],
					'fotografo' => $fotpreview['fotografo'],
					'foto' => $fotpreview['foto'],
					'link' => $fotpreview['link'],
					'titulo' => $fotpreview['titulo'],);
	}
	return $fotogaleria;
}

function actualidad(){
	$actinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, s.nombre as subseccion, s.url as urlSubseccion, a.preview, i.rutaFoto as foto, f.nombre as fotografo, se.url as urlSeccion, c.idPersonal
							from articulo a, personal as c, subseccion as s, imagenesarticulo as i, fotografo as f, seccion se
							where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and a.activo = 1 and s.idSeccion = se.idSeccion
							and c.cargo='periodista' and i.posicion='principal' and a.especial = 0 and a.idSubseccion not in (1,2,3,4,5,6,35,45,46,49,54,57,58,59,60)
							ORDER BY a.fecha desc, a.hora desc
							limit 5");
	while($actpreview = mysql_fetch_array($actinfo)){
		$actualidad[] = array(
					'id' => $actpreview['id'],
					'idPersonal' => $actpreview['idPersonal'],
					'titulo' => $actpreview['titulo'],
					'autor' => $actpreview['autor'],
					'fecha' => formatoFecha($actpreview['fecha']),
					'subseccion' => $actpreview['subseccion'],
					'preview' => $actpreview['preview'],
					'urlSeccion' => $actpreview['urlSeccion'],
					'urlSubseccion' => $actpreview['urlSubseccion'],
					'foto' => $actpreview['foto'],
					'fotografo' => $actpreview['fotografo'],);
	}

	return $actualidad;
}

function caricatura(){
	$carinfo = mysql_query("SELECT a.idCaricatura, a.rutaFoto as foto, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as caricaturista
							from caricatura a, caricaturista c
							where a.idCaricaturista = c.idCaricaturista
							ORDER BY a.fecha desc, a.hora desc
							limit 1");
	while($carpreview = mysql_fetch_array($carinfo)){
		$caricatura[] = array(
					'foto' => $carpreview['foto'],
					'idCaricatura' => $carpreview['idCaricatura'],
					'caricaturista' => $carpreview['caricaturista'],
					'fecha' => $carpreview['fecha'],);
	}
	return $caricatura;
}

function caricaturap(){
	$carinfo = mysql_query("SELECT a.idCaricatura, a.rutaFoto as foto, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as caricaturista
							from caricatura a, caricaturista c
							where a.idCaricaturista = c.idCaricaturista
							ORDER BY a.fecha desc, a.hora desc");
	while($carpreview = mysql_fetch_array($carinfo)){
		$caricatura[] = array(
					'foto' => $carpreview['foto'],
					'idCaricatura' => $carpreview['idCaricatura'],
					'caricaturista' => $carpreview['caricaturista'],
					'fecha' => $carpreview['fecha'],);
	}
	return $caricatura;
}

function banner($seccion, $posicion){
	$query = "SELECT a.rutaFoto, a.link, b.tiempo, a.idBanner as id
		 											FROM banner a, posicion b
													WHERE a.idPosicion = b.idPosicion and b.idSeccion = $seccion and b.posicion = '$posicion' and a.activo = 1";
	$baninfo = mysql_query($query);
	while($banpreview = mysql_fetch_array($baninfo)){
		$banner[]=array(
								'id' => $banpreview['id'],
								'foto' => $banpreview['rutaFoto'],
								'link' => $banpreview['link'],
								'tiempo' => $banpreview['tiempo'],
							);
	}
	return $banner;
}

function leidos($idSeccion){
	$seccion='';
	$seccion2 = '';
	if($idSeccion == 1){
		$info = mysql_query("SELECT a.idArticulo as id, a.titulo, c.url as urlSubseccion, se.url as urlSeccion, i.rutafoto as foto, a.fecha, count(b.idArticulo) as total from articulo a, vistaarticulo b, subseccion c, seccion se, imagenesarticulo i where a.idArticulo = i.idArticulo and i.posicion = 'principal' and (select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion) = $idSeccion and a.idArticulo = b.idArticulo and a.activo = 1 and c.idSeccion = se.idSeccion and c.idSubseccion = a.idSubseccion and a.idSubseccion = 6 group by b.idArticulo order by total desc limit 2");
		while($infopreview = mysql_fetch_array($info)){
			$seccion[] = array(
				'id' => $infopreview['id'],
				'titulo' => $infopreview['titulo'],
				'urlSubseccion' => $infopreview['urlSubseccion'],
				'urlSeccion' => $infopreview['urlSeccion'],
				'total' => $infopreview['total'],
				'foto' => $infopreview['foto'],
				'fecha' => formatoFecha2($infopreview['fecha']),
			);
		}
		$info2 = mysql_query("SELECT a.idArticulo as id, a.titulo, c.url as urlSubseccion, se.url as urlSeccion, i.rutafoto as foto, a.fecha,count(b.idArticulo) as total from articulo a, vistaarticulo b, subseccion c, seccion se, personal i where a.idPersonal = i.idPersonal and (select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion) = $idSeccion and a.idArticulo = b.idArticulo and a.activo = 1 and a.idSubseccion <> 6 and c.idSeccion = se.idSeccion and c.idSubseccion = a.idSubseccion group by b.idArticulo order by total desc limit 2");
		while($info2preview = mysql_fetch_array($info2)){
			$seccion2[] = array(
				'id' => $info2preview['id'],
				'titulo' => $info2preview['titulo'],
				'urlSubseccion' => $info2preview['urlSubseccion'],
				'urlSeccion' => $info2preview['urlSeccion'],
				'total' => $info2preview['total'],
				'foto' => $info2preview['foto'],
				'fecha' => formatoFecha2($info2preview['fecha']),
			);
		}
	}else{
		$info = mysql_query("SELECT a.idArticulo as id, a.titulo, c.url as urlSubseccion, se.url as urlSeccion, i.rutafoto as foto, a.fecha, count(b.idArticulo) as total from articulo a, vistaarticulo b, subseccion c, seccion se, imagenesarticulo i where a.idArticulo = i.idArticulo and i.posicion = 'principal' and (select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion) = $idSeccion and a.idArticulo = b.idArticulo and a.activo = 1 and c.idSeccion = se.idSeccion and c.idSubseccion = a.idSubseccion group by b.idArticulo order by total desc limit 4");
		while($infopreview = mysql_fetch_array($info)){
			$seccion[] = array(
				'id' => $infopreview['id'],
				'titulo' => $infopreview['titulo'],
				'urlSubseccion' => $infopreview['urlSubseccion'],
				'urlSeccion' => $infopreview['urlSeccion'],
				'total' => $infopreview['total'],
				'foto' => $infopreview['foto'],
				'fecha' => formatoFecha2($infopreview['fecha']),
			);
		}
	}
	$actinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, s.url as urlSubseccion, se.url as urlSeccion, i.rutafoto as foto, a.fecha, count(b.idArticulo) from articulo a, subseccion as s, seccion se, vistaarticulo b, imagenesarticulo i where a.idArticulo = i.idArticulo and i.posicion = 'principal' and a.idSubseccion = s.idSubseccion and a.activo = 1 and s.idSeccion = se.idSeccion and a.idArticulo = b.idArticulo and a.idSubseccion not in (1,2,3,4,5,6,35,45,46,49,54,57,58,59,60) group by b.idArticulo ORDER BY a.fecha desc, a.hora desc limit 4");
	while($actpreview = mysql_fetch_array($actinfo)){
		$actualidad[] = array(
					'id' => $actpreview['id'],
					'titulo' => $actpreview['titulo'],
					'urlSeccion' => $actpreview['urlSeccion'],
					'urlSubseccion' => $actpreview['urlSubseccion'],
					'foto' => $actpreview['foto'],
					'fecha' => formatoFecha2($actpreview['fecha']),
					);
	}

	return array('seccion' => $seccion, 'seccion2' => $seccion2, 'portada' => $actualidad);
}
function primerSondeo(){
	$soninfo = mysql_query("SELECT idSondeo, pregunta
												FROM sondeo
												where activo = 1 and pagado = 0
												ORDER BY fecha desc, hora desc limit 1");
	$sonpreview = mysql_fetch_row($soninfo);
	$sondeo[] = array(
	  'idSondeo' => $sonpreview[0],
	  'pregunta' => $sonpreview[1],
	  'respuestas' => respuestas($sonpreview[0]),
		'total' => maxTotal($sonpreview[0])
	);
	return $sondeo;
}

function respuestas($id){
	$resinfo = mysql_query("SELECT idRespuesta, idSondeo, respuesta
												FROM respuesta");
	while ($respreview = mysql_fetch_array($resinfo)) {
		if($id == $respreview['idSondeo']){
			$respuestas[] = array(
								'idRespuesta' => $respreview['idRespuesta'],
								'idSondeo' => $respreview['idSondeo'],
								'respuesta' => $respreview['respuesta'],
								'total' => total($respreview['idRespuesta'])
							);
		}
	}
	return $respuestas;
}
function total($id){
	$resinfo = mysql_query("SELECT count(a.idRespuesta) as total
												FROM resultado a where a.idRespuesta = $id group by a.idRespuesta");
	$res = mysql_fetch_row($resinfo);
	if($res[0]){
		$respuestas = $res[0];
	}else{
		$respuestas = 0;
	}
	return $respuestas;
}
function maxTotal($id){
	$resinfo = mysql_query("SELECT count(a.idRespuesta) as total
												FROM resultado a, respuesta b where a.idRespuesta = b.idRespuesta and b.idSondeo = $id");
	$res = mysql_fetch_row($resinfo);
	$respuestas = $res[0];
	return $respuestas;
}
?>
