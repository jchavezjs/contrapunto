<?php

include('connection.php');
include('funciones.php');

$editdata = json_decode(file_get_contents("php://input"));

$seccion = $_GET['seccion'];
$subseccion = $_GET['subseccion'];
$id = $_GET['id'];

/*$seccion = 'politica';
$subseccion = 'politica';
$titulo = '"Ficciones%3A%20el%20intelectual%20y%20el%20poder%20en%20El%20Salvador%20(1928-1932)';
$id = 39;*/


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
				$cont = mysql_query("SELECT a.idColumna as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, 
									a.contenido, c.rutaFoto as foto, a.fecha
									from columna a, personal as c
									where a.idPersonal = c.idPersonal
									and a.idColumna=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'contenido' => $contenido = $result['contenido'],
					'fecha' => $fecha = date("d/m/Y", strtotime($result['fecha'])),
					);
				}
			}else{
				$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.preview, 
									a.contenido, c.rutaFoto as foto, a.fecha
									from articulo a, personal as c
									where a.idPersonal = c.idPersonal
									and a.idArticulo=$id");
				while($result = mysql_fetch_array($cont)){
					$contenido = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'contenido' => $contenido = $result['contenido'],
					'preview' => $preview = $result['preview'],
					'fecha' => $fecha = date("d/m/Y", strtotime($result['fecha'])),
					);
				}
			}
		}else{
			$cont = mysql_query("SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.contenido, a.preview,
								 i.rutaFoto as foto, a.fecha, f.nombre as fotografo  
									from articulo as a, personal as c, fotografo as f, imagenesarticulo as i
									where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo 
									and i.posicion='principal' and a.idArticulo=$id");
			while($result = mysql_fetch_array($cont)){
				$contenido = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'preview' => $preview = $result['preview'],
					'contenido' => $contenido = $result['contenido'],
					'fecha' => $fecha = date("d/m/Y", strtotime($result['fecha'])),
					'fotografo' => $fotografo = $result['fotografo'],);
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
			'subsecciones' => $sub
			));

?>