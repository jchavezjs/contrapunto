
<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

$colinfo = mysql_query("SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as NombreCompleto, c.rutaFoto, a.titulo
						from personal as c, columna as a
						where c.idPersonal = a.idPersonal and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						limit 5");
$actinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.fecha, s.nombre as subseccion, a.preview, i.rutaFoto as foto, f.nombre as fotografo
						from articulo a, personal as c, subseccion as s, imagenesarticulo as i, fotografo as f
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and a.activo = 1
						and c.cargo='periodista' and i.posicion='principal' and a.especial = 0 and a.idSubseccion not in (1,2,3,4,5,6,35,45,46,49,54,57,58,59,60)
						ORDER BY a.fecha desc, a.hora desc
						limit 5");
$triinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor
						from personal as c, articulo as a
						where c.idPersonal = a.idPersonal and a.idSubseccion = 3 and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						LIMIT 4");
$neginfo = mysql_query("SELECT a.idArticulo as id, a.titulo, i.rutaFoto as foto
						from articulo as a, imagenesarticulo as i
						where a.idArticulo = i.idArticulo and a.idSubseccion = 45 and i.posicion = 'principal' and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						LIMIT 3");
$anainfo = mysql_query("SELECT a.idArticulo as id, a.titulo, c.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor
						from articulo as a, personal as c
						where a.idPersonal = c.idPersonal and a.idSubseccion = 49 and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						LIMIT 2");
$coyinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, i.rutaFoto as foto
						from articulo as a, imagenesarticulo as i
						where a.idArticulo = i.idArticulo and a.idSubseccion = 46 and i.posicion = 'principal' and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc
						LIMIT 3");
$libinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, c.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor
						from articulo as a, personal as c
						where a.idSubseccion = 4 and a.idPersonal=c.idPersonal and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc ");
$sosinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, s.url, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and c.cargo='periodista' and a.especial=0 and
						i.posicion='principal' and a.idSubseccion not in (34, 35) and  (select se.url from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))='sociedad'
						ORDER BY a.fecha desc, a.hora desc");
$resinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, i.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview
						from articulo as a, imagenesarticulo as i, personal as c
						where a.idArticulo = i.idArticulo and a.idSubseccion = 57 and a.activo = 1 and i.posicion = 'principal' and a.idPersonal=c.idPersonal
						ORDER BY a.fecha desc, a.hora desc ");
$acainfo = mysql_query("SELECT a.idArticulo as id, a.titulo, i.rutaFoto as foto, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview
						from articulo as a, imagenesarticulo as i, personal as c
						where a.idArticulo = i.idArticulo and a.idSubseccion = 6 and i.posicion = 'principal' and a.idPersonal=c.idPersonal and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc ");
$depinfo = mysql_query("SELECT a.idArticulo as id, a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion,s.url, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.especial=0 and (select se.url from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))='deportes'
						ORDER BY a.fecha desc, a.hora desc");
$perinfo = mysql_query("SELECT a.idArticulo as id, a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and  a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.especial=0 and a.idSubseccion=34
						ORDER BY a.fecha desc, a.hora desc");
$intinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion,s.url, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.especial=0 and (select se.url from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))='internacionales'
						ORDER BY a.fecha desc, a.hora desc");
$culinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, s.url, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal'
						and a.especial=0 and a.idSubseccion in (55,56) and (select se.url from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))='cultura'
						ORDER BY a.fecha desc, a.hora desc");
$polinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, s.url, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and  a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.especial=0 and (select se.url from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))='politica'
						ORDER BY a.fecha desc, a.hora desc");
$aneinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.idSubseccion=54 and a.especial=0
						ORDER BY a.fecha desc, a.hora desc");
$entinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo, c.rutaFoto as fotoautor
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.idSubseccion=59 and a.especial=0
						ORDER BY a.fecha desc, a.hora desc");
$rominfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo, c.rutaFoto as fotoautor
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and a.activo = 1 and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and i.posicion='principal' and a.idSubseccion=35 and a.especial=0
						ORDER BY a.fecha desc, a.hora desc");
$ediinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, a.preview
						from personal as c, articulo as a
						where c.idPersonal = a.idPersonal  and a.idSubseccion = 1  and a.activo = 1
						ORDER BY a.fecha desc, a.hora desc ");
$coninfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.activo = 1 and  a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and c.cargo='periodista' and i.posicion='principal' and a.idSubseccion=58 and a.especial=0
						ORDER BY a.fecha desc, a.hora desc");
$espinfo = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, i.rutaFoto as foto, a.fecha, s.nombre as subseccion, f.nombre as fotografo
						from articulo a, personal as c, imagenesarticulo as i, fotografo as f, subseccion as s
						where a.idArticulo = i.idArticulo and a.activo = 1 and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and i.idFotografo = f.idFotografo and c.cargo='periodista' and i.posicion='principal' and a.especial = 1
						ORDER BY a.fecha desc, a.hora desc");
$carinfo = mysql_query("SELECT a.rutaFoto as foto
						from caricatura a
						ORDER BY a.fecha desc, a.hora desc");

while($colpreview = mysql_fetch_array($colinfo)){
	$columnista[] = array(
				'id' => $id = $colpreview['id'],
				'nombre' => $nombre = $colpreview['NombreCompleto'],
				'foto' => $foto = $colpreview['rutaFoto'],
				'titulo' => $titulo = $colpreview['titulo'],);
}

while($actpreview = mysql_fetch_array($actinfo)){
	$actualidad[] = array(
				'id' => $id = $actpreview['id'],
				'titulo' => $titulo = $actpreview['titulo'],
				'autor' => $autor = $actpreview['autor'],
				'fecha' => $fecha = formatoFecha($actpreview['fecha']),
				'subseccion' => $subseccion = $actpreview['subseccion'],
				'preview' => $preview = $actpreview['preview'],
				'foto' => $foto = $actpreview['foto'],
				'fotografo' => $fotografo = $actpreview['fotografo'],);
	$control[] = array('id' => $id = $actpreview['id'],);
}

while($tripreview = mysql_fetch_array($triinfo)){
	$tribuna[] = array(
				'id' => $id = $tripreview['id'],
				'autor' => $autor = $tripreview['autor'],
				'titulo' => $titulo = $tripreview['titulo'],);
}

while($negpreview = mysql_fetch_array($neginfo)){
	$negocio[] = array(
				'id' => $id = $negpreview['id'],
				'foto' => $foto = $negpreview['foto'],
				'titulo' => $titulo = $negpreview['titulo'],);
}

while($coypreview = mysql_fetch_array($coyinfo)){
	$coyuntura[] = array(
				'id' => $id = $coypreview['id'],
				'foto' => $foto = $coypreview['foto'],
				'titulo' => $titulo = $coypreview['titulo'],);
}

while($anapreview = mysql_fetch_array($anainfo)){
	$analisis[] = array(
				'id' => $id = $anapreview['id'],
				'foto' => $foto = $anapreview['foto'],
				'titulo' => $titulo = $anapreview['titulo'],
				'autor' => $autor = $anapreview['autor'],);
}

while($libpreview = mysql_fetch_array($libinfo)){
	$libertad[] = array(
				'id' => $id = $libpreview['id'],
				'foto' => $foto = $libpreview['foto'],
				'titulo' => $titulo = $libpreview['titulo'],
				'autor' => $autor = $libpreview['autor'],);
}

while($sospreview = mysql_fetch_array($sosinfo)){
	$sociedad[] = array(
				'id' => $id = $sospreview['id'],
				'url' => $url = $sospreview['url'],
				'foto' => $foto = $sospreview['foto'],
				'titulo' => $titulo = $sospreview['titulo'],
				'autor' => $autor = $sospreview['autor'],
				'preview' => $preview = $sospreview['preview'],
				'fecha' => $fecha = formatoFecha($sospreview['fecha']),
				'subseccion' => $subseccion = $sospreview['subseccion'],
				'fotografo' => $fotografo = $sospreview['fotografo'],);
}

while($respreview = mysql_fetch_array($resinfo)){
	$resena[] = array(
				'id' => $id = $respreview['id'],
				'foto' => $foto = $respreview['foto'],
				'titulo' => $titulo = $respreview['titulo'],
				'autor' => $autor = $respreview['autor'],
				'preview' => $preview = $respreview['preview'],);
}

while($acapreview = mysql_fetch_array($acainfo)){
	$academia[] = array(
				'id' => $id = $acapreview['id'],
				'foto' => $foto = $acapreview['foto'],
				'titulo' => $titulo = $acapreview['titulo'],
				'autor' => $autor = $acapreview['autor'],
				'preview' => $preview = $acapreview['preview'],);
}

while($deppreview = mysql_fetch_array($depinfo)){
	$deporte[] = array(
				'id' => $id = $deppreview['id'],
				'url' => $url = $deppreview['url'],
				'foto' => $foto = $deppreview['foto'],
				'titulo' => $titulo = $deppreview['titulo'],
				'autor' => $autor = $deppreview['autor'],
				'preview' => $preview = $deppreview['preview'],
				'fecha' => $fecha = formatoFecha($deppreview['fecha']),
				'subseccion' => $subseccion = $deppreview['subseccion'],
				'fotografo' => $fotografo = $deppreview['fotografo'],);
}

while($perpreview = mysql_fetch_array($perinfo)){
	$periodismo[] = array(
				'id' => $id = $perpreview['id'],
				'foto' => $foto = $perpreview['foto'],
				'titulo' => $titulo = $perpreview['titulo'],
				'autor' => $autor = $perpreview['autor'],
				'preview' => $preview = $perpreview['preview'],
				'fecha' => $fecha = formatoFecha($perpreview['fecha']),
				'subseccion' => $subseccion = $perpreview['subseccion'],
				'fotografo' => $fotografo = $perpreview['fotografo'],);
}

while($intpreview = mysql_fetch_array($intinfo)){
	$internacional[] = array(
				'id' => $id = $intpreview['id'],
				'url' => $url = $intpreview['url'],
				'foto' => $foto = $intpreview['foto'],
				'titulo' => $titulo = $intpreview['titulo'],
				'autor' => $autor = $intpreview['autor'],
				'preview' => $preview = $intpreview['preview'],
				'fecha' => $fecha = formatoFecha($intpreview['fecha']),
				'subseccion' => $subseccion = $intpreview['subseccion'],
				'fotografo' => $fotografo = $intpreview['fotografo'],);
}

while($culpreview = mysql_fetch_array($culinfo)){
	$cultura[] = array(
				'id' => $id = $culpreview['id'],
				'url' => $url = $culpreview['url'],
				'foto' => $foto = $culpreview['foto'],
				'titulo' => $titulo = $culpreview['titulo'],
				'autor' => $autor = $culpreview['autor'],
				'preview' => $preview = $culpreview['preview'],
				'fecha' => $fecha = formatoFecha($culpreview['fecha']),
				'subseccion' => $subseccion = $culpreview['subseccion'],
				'fotografo' => $fotografo = $culpreview['fotografo'],);
}

while($polpreview = mysql_fetch_array($polinfo)){
	$politica[] = array(
				'id' => $id = $polpreview['id'],
				'url' => $url = $polpreview['url'],
				'foto' => $foto = $polpreview['foto'],
				'titulo' => $titulo = $polpreview['titulo'],
				'autor' => $autor = $polpreview['autor'],
				'preview' => $preview = $polpreview['preview'],
				'fecha' => $fecha = formatoFecha($polpreview['fecha']),
				'subseccion' => $subseccion = $polpreview['subseccion'],
				'fotografo' => $fotografo = $polpreview['fotografo'],);
}

while($anepreview = mysql_fetch_array($aneinfo)){
	$anecdota[] = array(
				'id' => $id = $anepreview['id'],
				'foto' => $foto = $anepreview['foto'],
				'titulo' => $titulo = $anepreview['titulo'],
				'autor' => $autor = $anepreview['autor'],
				'preview' => $preview = $anepreview['preview'],
				'fecha' => $fecha = formatoFecha($anepreview['fecha']),
				'subseccion' => $subseccion = $anepreview['subseccion'],
				'fotografo' => $fotografo = $anepreview['fotografo'],);
}

while($entpreview = mysql_fetch_array($entinfo)){
	$entrevista[] = array(
				'id' => $id = $entpreview['id'],
				'foto' => $foto = $entpreview['foto'],
				'titulo' => $titulo = $entpreview['titulo'],
				'autor' => $autor = $entpreview['autor'],
				'preview' => $preview = $entpreview['preview'],
				'fecha' => $fecha = formatoFecha($entpreview['fecha']),
				'subseccion' => $subseccion = $entpreview['subseccion'],
				'fotografo' => $fotografo = $entpreview['fotografo'],
				'fotoautor' => $fotoautor = $entpreview['fotoautor'],);
}

while($rompreview = mysql_fetch_array($rominfo)){
	$rompiendo[] = array(
				'id' => $id = $rompreview['id'],
				'foto' => $foto = $rompreview['foto'],
				'titulo' => $titulo = $rompreview['titulo'],
				'autor' => $autor = $rompreview['autor'],
				'preview' => $preview = $rompreview['preview'],
				'fecha' => $fecha = formatoFecha($rompreview['fecha']),
				'subseccion' => $subseccion = $rompreview['subseccion'],
				'fotografo' => $fotografo = $rompreview['fotografo'],
				'fotoautor' => $fotoautor = $rompreview['fotoautor'],);
}

while($edipreview = mysql_fetch_array($ediinfo)){
	$editorial[] = array(
				'id' => $id = $edipreview['id'],
				'preview' => $preview = $edipreview['preview'],
				'titulo' => $titulo = $edipreview['titulo'],);
}

while($conpreview = mysql_fetch_array($coninfo)){
	$contratabu[] = array(
				'id' => $id = $conpreview['id'],
				'foto' => $foto = $conpreview['foto'],
				'titulo' => $titulo = $conpreview['titulo'],
				'autor' => $autor = $conpreview['autor'],
				'preview' => $preview = $conpreview['preview'],
				'fecha' => $fecha = formatoFecha($conpreview['fecha']),
				'subseccion' => $subseccion = $conpreview['subseccion'],
				'fotografo' => $fotografo = $conpreview['fotografo'],);
}

while($esppreview = mysql_fetch_array($espinfo)){
	$especial[] = array(
				'id' => $id = $esppreview['id'],
				'foto' => $foto = $esppreview['foto'],
				'titulo' => $titulo = $esppreview['titulo'],
				'autor' => $autor = $esppreview['autor'],
				'preview' => $preview = $esppreview['preview'],
				'fecha' => $fecha = formatoFecha($esppreview['fecha']),
				'subseccion' => $subseccion = $esppreview['subseccion'],
				'fotografo' => $fotografo = $esppreview['fotografo'],);
}

while($carpreview = mysql_fetch_array($carinfo)){
	$caricatura[] = array(
				'foto' => $foto = $carpreview['foto'],);
}

echo json_encode(array('columnistas' => $columnista,
						'actualidades' => $actualidad,
						'tribunas' => $tribuna,
						'negocios' => $negocio,
						'coyunturas' => $coyuntura,
						'analisiss' => $analisis,
						'libertades' => $libertad,
						'sociedades' => $sociedad,
						'resenas' => $resena,
						'academias' => $academia,
						'deportes' => $deporte,
						'periodismos' => $periodismo,
						'culturas' => $cultura,
						'internacionales' => $internacional,
						'politicas' => $politica,
						'anecdotas' => $anecdota,
						'entrevistas' => $entrevista,
						'rompiendos' => $rompiendo,
						'editoriales' => $editorial,
						'contratabues' => $contratabu,
						'especiales' => $especial,
						'fotogalerias' => fotogaleria(),
						'caricaturas' => $caricatura,
						'controles' => $control));

?>
