<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');
  $editdata = json_decode(file_get_contents("php://input"));
$id = $_GET['id'];
// $id = 14;
$error = "";
$autorinfo =  mysql_query("SELECT CONCAT(nombres,' ',apellidos), descripcion, rutaFoto, cargo, (select facebook from usuario where idPersonal=$id) as facebook,
                          (select twitter from usuario where idPersonal=$id) as twitter, (select googleplus from usuario where idPersonal=$id) as googleplus,
                          (select linkedin from usuario where idPersonal=$id) as linkedin, (select mail from usuario where idPersonal=$id) as mail
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
                'fotogalerias' => fotogaleria(),
                'actualidades' => actualidad(),
                'banner1' => banner(8,1),
                'banner2' => banner(8,2),
                'bannerMovil' => banner(8,'movil'),
                ));
?>
