<?php
include('connection.php');

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
$colinfo = mysql_query("SELECT a.idColumna as id, CONCAT(c.nombres, ' ', c.apellidos) as NombreCompleto, c.rutaFoto, a.titulo, a.fecha 
						from personal as c, columna as a 
						where c.idPersonal = a.idPersonal
						ORDER BY a.fecha desc, a.hora desc");

while($edipreview = mysql_fetch_array($ediinfo)){
	$editorial[]=array(
				'id' => $id = $edipreview['id'],
				'titulo' => $titulo = $edipreview['titulo'],
				'fecha' => $fecha =  date("d/m/Y", strtotime($edipreview['fecha'])),
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
				'fecha' => $fecha =  date("d/m/Y", strtotime($tripreview['fecha'])),
				'titulo' => $titulo = $tripreview['titulo'],);
}

while($libpreview = mysql_fetch_array($libinfo)){
	$libertad[] = array(
				'id' => $id = $libpreview['id'],
				'foto' => $foto = $libpreview['foto'],
				'fecha' => $fecha =  date("d/m/Y", strtotime($libpreview['fecha'])),
				'titulo' => $titulo = $libpreview['titulo'],
				'autor' => $autor = $libpreview['autor'],);
}

while($acapreview = mysql_fetch_array($acainfo)){
	$academia[] = array(
				'id' => $id = $acapreview['id'],
				'titulo' => $titulo = $acapreview['titulo'],
				'autor' => $autor = $acapreview['autor'],
				'fecha' => $fecha = date("d/m/Y", strtotime($acapreview['fecha'])),);
}

while($colpreview = mysql_fetch_array($colinfo)){
	$columnista[] = array(
				'id' => $id = $colpreview['id'],
				'nombre' => $nombre = $colpreview['NombreCompleto'],
				'fecha' => $fecha = date("d/m/Y", strtotime($colpreview['fecha'])),
				'foto' => $foto = $colpreview['rutaFoto'],
				'titulo' => $titulo = $colpreview['titulo'],);
}

echo json_encode(array(
				'editoriales' => $editorial,
				'caricaturas' => $caricatura,
				'tribunas' => $tribuna,
				'libertades' => $libertad,
				'columnistas' => $columnista,
				'academias' => $academia,
				'politicas' => dropdown(2),
				'economias' => dropdown(5),
				'sociedades' => dropdown(4),
				'internacionales' => dropdown(3),
				'culturas' => dropdown(6)));

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

/*function formatoFecha($nfecha){
	$day = date('l');
	if($day == 'Monday'){
    	$dia = 'Lunes';
    }elseif($day == 'Tuesday'){
        $dia = 'Martes';
    }elseif($day == 'Wednesday'){
        $dia = 'Miércoles'; 
    }elseif($day == 'Thursday'){
        $dia = 'Jueves'; 
    }elseif($day == 'Friday'){
        $dia = 'Viernes'; 
    }elseif($day == 'Saturday'){
        $dia = 'Sábado'; 
    }elseif($day == 'Sunday'){
        $dia = 'Domingo'; 
    }
    $fecha=date('d')." "; 
    $mes= array(" ","Enero","Febrero","Marzo","Abril",
    	"Mayo","Junio","Julio","Agosto","Septiembre",
    	"Octubre","Noviembre","Diciembre");
    //$fecha=$mes[date('n')]." ".$fecha." "."/"." ".date('Y'); 
    $fecha= $dia.", ".$fecha." de ".$mes[date('n')]." "."del"." ".date('Y');

    return $fecha;
}*/

?>