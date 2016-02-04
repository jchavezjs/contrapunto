<?php
  include('connection.php');
  include('funciones.php');
  $editdata = json_decode(file_get_contents("php://input"));
  $busqueda = mysql_escape_string(strtolower($_GET['query']));
  // $busqueda = mysql_escape_string(strtolower('Purgatorio'));
  $info = mysql_query("SELECT a.idArticulo as id, a.titulo,a.preview, a.fecha, s.nombre, s.url, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal
                      FROM articulo a, personal c, subseccion s
                      where (LOWER(a.titulo) like '%$busqueda%' or  LOWER(CONCAT(c.nombres, ' ', c.apellidos)) like '%$busqueda%')
                      and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion
                      ORDER BY a.fecha desc, a.hora desc");
  while($result = mysql_fetch_array($info)){
    $resultado[] = array(
                    'id' => $id = $result['id'],
                    'titulo' => $titulo = $result['titulo'],
                    'fecha' => $fecha = $result['fecha'],
                    'subseccion' => $subseccion = $result['nombre'],
                    'url' => $url = $result['url'],
                    'autor' => $id = $result['autor'],
                    'idPersonal' => $idPersonal = $result['idPersonal'],
                    'preview' => $preview = $result['preview'],
                  );
  }
  echo json_encode(array(
                    'resultado' => $resultado
                  ));
?>
