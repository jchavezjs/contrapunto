<?php
  include('conection.php');
  include('funciones.php');
  $editdata = json_decode(file_get_contents("php://input"));
  $busqueda = $_GET['query'];
  $info = mysql_query('SELECT a.idArticulo as id, a.titulo, a.fecha, s.nombre, s.url, CONCAT(c.nombres, ' ', c.apellidos) as autor, c.idPersonal
                      FROM articulo a, personal c, subseccion s
                      where (a.titulo like '%$busqueda%' or  CONCAT(c.nombres, ' ', c.apellidos) like '%$busqueda%')
                      and a.idPersonal = c.idPersonal and a.idSubseccion = s.idSubseccion');
  while($){

  }
?>
