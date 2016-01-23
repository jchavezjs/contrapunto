<?php

include('connection.php');
include('funciones.php');

$editdata = json_decode(file_get_contents("php://input"));

$seccion = $_GET['seccion'];
$subseccion = $_GET['subseccion'];

/*$seccion = 'deporte';
$subseccion = 'columnistas';*/

$contenido='';
$subnombre='';
$secinfo='';
$error='';
$sub='';

$secvalidate = mysql_query("SELECT idSeccion, nombre, url from seccion where url='$seccion'");

if($secvalidate){
	$secprev = mysql_fetch_row($secvalidate);
	$secinfo = array('id' => $secprev[0], 'nombre' => $secprev[1], 'url' => $secprev[2]);
	$subvalidate = mysql_query("SELECT idSubseccion, nombre from subseccion where url='$subseccion' and idSeccion=".$secinfo['id']);
	if($subvalidate){
		$subprev = mysql_fetch_row($subvalidate);
		$subid = $subprev[0];
		$subnombre = $subprev[1];
		$sub = subseccion($secinfo['id']);
		if($secinfo['id'] == 1){
			if($subid == 2){
				$contenido = columna();
			}else{
				$contenido = opinion($subid);
			}
		}else{
			$contenido = articulo($subid);
		}
	}else{
		$error = array('description' => 'ERROR 404...la seccion seleccionada no existe');
	}
}else{
	$error = array('description' => 'ERROR 404...la subseccion seleccionada no existe');
}

echo json_encode(array(
			'contenidos' => $contenido,
			'error' => $error,
			'secinfo' => $secinfo,
			'nombresub' => $subnombre,
			'subsecciones' => $sub
			));
?>