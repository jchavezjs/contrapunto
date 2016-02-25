<?php

include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$editdata = json_decode(file_get_contents("php://input"));
date_default_timezone_set('America/El_Salvador');

$subseccion = $_GET['subseccion'];

/*$seccion = 'deportes';
$subseccion = 'acontecerdeportivo';*/

$contenido='';
$subinfo='';
$secinfo='';
$error='';
$sub='';

$subvalidate = mysql_query("SELECT idSubseccion, nombre, url from subseccion where url='$subseccion'");

	if($subvalidate){
		$subprev = mysql_fetch_row($subvalidate);
		$subinfo = array('id' => $subprev[0], 'nombre' => $subprev[1], 'url' => $subprev[2]);
		$sub = subseccion(1);
		$coninfo = mysql_query("SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as autor, a.titulo, a.fecha, c.idPersonal as idPersonal, se.nombre as subseccion, se.url as urlSubseccion
  				from personal as c, columna as a, subseccion se
  				where c.idPersonal = a.idPersonal and a.activo = 1 and  a.idSubseccion = ".$subinfo['id']." and a.idSubseccion = se.idSubseccion and a.idSubseccion not in (1,2,3,4,5,6)
  				ORDER BY a.fecha desc, a.hora desc");
    while($result = mysql_fetch_array($coninfo)){
  		$resultado[] = array(
  					'id' => $result['id'],
  					'idPersonal' => $result['idPersonal'],
  					'subseccion' => $result['subseccion'],
            'urlSubseccion' => $result['urlSubseccion'],
  					'titulo' => $result['titulo'],
  					'autor' => $result['autor'],
  					'fecha' => formatoFecha($result['fecha']),
  					);
  	}

	}else{
		$error = array('description' => 'ERROR 404...la seccion seleccionada no existe');
	}


echo json_encode(array(
			'contenidos' => $resultado,
			'error' => $error,
			'subinfo' => $subinfo,
			'subsecciones' => $sub,
      'fotogalerias' => fotogaleria(),
      'actualidades' => actualidad(),
			'banner1' => banner(1,1),
			'banner2' => banner(1,2),
			'bannerMovil' => banner(1,'movil'),
			'leidos' => leidos(1)
			));
?>
