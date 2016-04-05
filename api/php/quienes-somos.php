<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);

$qPersonal = mysql_query("SELECT `idPersonal` ,CONCAT(nombres,' ',apellidos), `cargo`, `rutaFoto` FROM `personal` WHERE `cargo` != 'externo'");

while($rPersonal = mysql_fetch_array($qPersonal)){
  $personal[] = array(
    'id' => $rPersonal[idPersonal],
    'nombre' => $rPersonal[1],
    'cargo' => $rPersonal['cargo'],
    'rutaFoto' => $rPersonal['rutaFoto'],
  );
}

echo json_encode(array(
    'banner1' => banner(8,1),
    'banner2' => banner(8,2),
    'bannerMovil' => banner(8,'movil'),
    'fotogalerias' => fotogaleria(),
    'actualidades' => actualidad(),
    'personal' => $personal
  ));
?>
