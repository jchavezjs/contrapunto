<?php
  include('connection.php');
  include('funciones.php');
  $editdata = json_decode(file_get_contents("php://input"));
  $busqueda = mysql_escape_string(strtolower($_GET['query']));
  // $busqueda = mysql_escape_string(strtolower('Purgatorio'));
  $info = mysql_query("SELECT a.idArticulo as id, a.titulo,a.preview, a.fecha, s.nombre, s.url, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal, se.url as urlSeccion
                      FROM articulo a, personal c, subseccion s, seccion se
                      where (LOWER(a.titulo) like '%$busqueda%' or  LOWER(CONCAT(c.nombres, ' ', c.apellidos)) like '%$busqueda%')
                      and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion and s.idSeccion = se.idSeccion
                      ORDER BY a.fecha desc, a.hora desc");
  while($result = mysql_fetch_array($info)){
    $resultado[] = array(
                    'id' => $id = $result['id'],
                    'titulo' => $titulo = $result['titulo'],
                    'fecha' => $fecha = formatoFecha($result['fecha']),
                    'subseccion' => $subseccion = $result['nombre'],
                    'url' => $url = $result['url'],
                    'urlSeccion' => $urlSeccion = $result['urlSeccion'],
                    'autor' => $autor = $result['autor'],
                    'idPersonal' => $idPersonal = $result['idPersonal'],
                    'preview' => $preview = $result['preview'],
                  );
  }
  // (select se.url as urlSeccion, se.nombre as seccion from seccion as se where se.idSeccion=(select x.idSeccion from subseccion as x where x.idSubseccion=a.idSubseccion))
  $colinfo =  mysql_query("SELECT a.idColumna as id, a.titulo, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as autor,c.idPersonal
                      FROM columna a, personal c
                      where (LOWER(a.titulo) like '%$busqueda%' or  LOWER(CONCAT(c.nombres, ' ', c.apellidos)) like '%$busqueda%') and a.idPersonal = c.idPersonal
                      ORDER BY a.fecha desc, a.hora desc");
while($colpreview = mysql_fetch_array($colinfo)){
    $resultado[] = array(
      'id' => $id = $colpreview['id'],
      'titulo' => $titulo = $colpreview['titulo'],
      'fecha' => $fecha = formatoFecha($colpreview['fecha']),
      'subseccion' => "Columnistas",
      'url' => "columnistas",
      'autor' => $autor = $colpreview['autor'],
      'idPersonal' => $idPersonal = $result['idPersonal'],
      'urlSeccion' => 'opinion'
    );
  }
  echo json_encode(array(
                    'resultado' => $resultado
                  ));
?>
