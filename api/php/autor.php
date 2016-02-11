<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');
  $editdata = json_decode(file_get_contents("php://input"));
$id = $_GET['id'];
// $id = 14;
$error = "";
$autorinfo =  mysql_query("SELECT CONCAT(nombres,' ',apellidos), descripcion, rutaFoto, cargo, (select link from redespersonal where idPersonal=$id and idRed = 1) as facebook,
                          (select link from redespersonal where idPersonal=$id and idRed = 2) as twitter, (select link from redespersonal where idPersonal=$id and idRed = 3) as googleplus,
                          (select link from redespersonal where idPersonal=$id and idRed = 4) as linkedin, (select link from redespersonal where idPersonal=$id and idRed = 5) as mail
                          FROM personal
                          WHERE idPersonal=$id");
if($autorinfo){
  $autorvalidate = mysql_fetch_row($autorinfo);
	$autor = array('id' => $id, 'nombre' => $autorvalidate[0], 'descripcion' => $autorvalidate[1], 'foto' => $autorvalidate[2], 'cargo' => $autorvalidate[3], 'facebook' => $autorvalidate[4],
                'twitter' => $autorvalidate[5], 'googleplus' => $autorvalidate[6], 'linkedin' => $autorvalidate[7], 'mail' => $autorvalidate[8]);
    $artinfo =  mysql_query("SELECT a.idArticulo as id, a.titulo,a.preview, a.fecha, s.nombre, s.url, CONCAT(c.nombres, ' ', c.apellidos) as autor, se.url as urlSeccion
                        FROM articulo a, personal c, subseccion s, seccion se
                        where a.idPersonal = $id and a.idSubseccion = s.idSubseccion and a.idPersonal = c.idPersonal and s.idSeccion = se.idSeccion
                        ORDER BY a.fecha desc, a.hora desc");
    $colinfo =  mysql_query("SELECT a.idColumna as id, a.titulo, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as autor
                        FROM columna a, personal c
                        where a.idPersonal = $id and a.idPersonal = c.idPersonal
                        ORDER BY a.fecha desc, a.hora desc");
    while($artpreview = mysql_fetch_array($artinfo)){
      $articulos[] = array(
        'id' => $id = $artpreview['id'],
        'titulo' => $titulo = $artpreview['titulo'],
        'fecha' => $fecha = formatoFecha($artpreview['fecha']),
        'subseccion' => $subseccion = $artpreview['nombre'],
        'url' => $url = $artpreview['url'],
        'urlSeccion' => $urlSeccion = $artpreview['urlSeccion'],
        'autor' => $id = $artpreview['autor'],
        'preview' => $preview = $artpreview['preview'],
      );
    }
    while($colpreview = mysql_fetch_array($colinfo)){
      $articulos[] = array(
        'id' => $id = $colpreview['id'],
        'titulo' => $titulo = $colpreview['titulo'],
        'fecha' => $fecha = formatoFecha($colpreview['fecha']),
        'subseccion' => "Columnistas",
        'url' => "columnistas",
        'autor' => $id = $colpreview['autor'],
      );
    }
}else{
  $error = "AUTOR NO ENCONTRADO";
}

echo json_encode(array(
                'autor'=>$autor,
                'articulos' => $articulos,
                'fotogalerias' => fotogaleria()
                ));
?>
