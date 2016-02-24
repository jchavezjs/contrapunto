<?php

include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$editdata = json_decode(file_get_contents("php://input"));
date_default_timezone_set('America/El_Salvador');
$seccion = $_GET['seccion'];
$subseccion = $_GET['subseccion'];
$id = $_GET['id'];

// $seccion = 'politica';
// $subseccion = 'sociedadcivil';
// $titulo = '"Ficciones%3A%20el%20intelectual%20y%20el%20poder%20en%20El%20Salvador%20(1928-1932)';
// $id = 39;

$cont='';
$subinfo='';
$secinfo='';
$error='';
$sub='';

$secvalidate = mysql_query("SELECT idSeccion, nombre, url from seccion where url='$seccion'");

if($secvalidate){
	$secprev = mysql_fetch_row($secvalidate);
	$secinfo = array('id' => $secprev[0], 'nombre' => $secprev[1], 'url' => $secprev[2]);
	$subvalidate = mysql_query("SELECT idSubseccion, nombre, url from subseccion where url='$subseccion' and idSeccion=".$secinfo['id']);
	if($subvalidate){
		$subprev = mysql_fetch_row($subvalidate);
		$subinfo = array('id' => $subprev[0], 'nombre' => $subprev[1], 'url' => $subprev[2]);
		$sub = subseccion($secinfo['id']);
		if($secinfo['id'] == 1){
			if($subinfo['id'] == 2){
				$cont = mysql_query("SELECT a.idColumna as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal,
									a.contenido, c.rutaFoto as foto, a.fecha
									from columna a, personal as c
									where a.idPersonal = c.idPersonal and a.activo = 1
									and a.idColumna=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'contenido' => htmlspecialchars_decode(stripslashes($result['contenido'])),
					'fecha' => formatoFecha($result['fecha']),
					);
				}
			}elseif($subinfo['id'] == 6){
				$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.contenido, a.preview, c.idPersonal,
								 i.rutaFoto as foto, a.fecha, f.nombre as fotografo
									from articulo as a, personal as c, fotografo as f, imagenesarticulo as i
									where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo and a.activo = 1
									and i.posicion='principal' and a.idArticulo=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
						'id' => $result['id'],
						'idPersonal' => $result['idPersonal'],
						'foto' => $result['foto'],
						'titulo' => $result['titulo'],
						'autor' => $result['autor'],
						'preview' => $result['preview'],
						'contenido' => $result['contenido'],
						'fecha' => formatoFecha($result['fecha']),
						'fotografo' => $result['fotografo'],);
				}
			}elseif($subinfo['id'] == 3){
				$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal,
									a.contenido, a.fecha
									from articulo a, personal as c
									where a.idPersonal = c.idPersonal and a.activo = 1
									and a.idArticulo=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'contenido' => $result['contenido'],
					'fecha' => formatoFecha($result['fecha']),
					);
				}
			}else{
				$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, c.idPersonal,
									a.contenido, c.rutaFoto as foto, a.fecha
									from articulo a, personal as c
									where a.idPersonal = c.idPersonal and a.activo = 1
									and a.idArticulo=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'contenido' => $result['contenido'],
					'preview' => $result['preview'],
					'fecha' => formatoFecha($result['fecha']),
					);
				}
			}
		}else{
			$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.contenido, a.preview, c.idPersonal,
								 i.rutaFoto as foto, a.fecha, f.nombre as fotografo
									from articulo as a, personal as c, fotografo as f, imagenesarticulo as i
									where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo  and a.activo = 1
									and i.posicion='principal' and a.idArticulo=$id");
			while($result = mysql_fetch_array($cont)){
				$contenido = array(
					'id' => $result['id'],
					'idPersonal' => $result['idPersonal'],
					'foto' => $result['foto'],
					'titulo' => $result['titulo'],
					'autor' => $result['autor'],
					'preview' => $result['preview'],
					'contenido' => $result['contenido'],
					'fecha' => formatoFecha($result['fecha']),
					'fotografo' => $result['fotografo'],);
			}
		}
	}else{
		$error = array('description' => 'ERROR 404...la seccion seleccionada no existe');
	}
}else{
	$error = array('description' => 'ERROR 404...la subseccion seleccionada no existe');
}

echo json_encode(array(
			'contenido' => $contenido,
			'error' => $error,
			'secinfo' => $secinfo,
			'subinfo' => $subinfo,
			'subsecciones' => $sub,
			'fotogaleria' => fotogaleria(),
			'banner1' => banner($secinfo['id'],1),
			'banner2' => banner($secinfo['id'],2),
			'bannerMovil' => banner($secinfo['id'],'movil'),
			'bannerPost' => banner($secinfo['id'],'post'),
			'leidos' => leidos($secinfo['id'])
			));

?>
