<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$editdata = json_decode(file_get_contents("php://input"));
date_default_timezone_set('America/El_Salvador');
$id = $_GET['id'];

// $carinfo = mysql_query("SELECT a.idCaricatura, a.rutaFoto as foto, a.fecha, CONCAT(c.nombres, ' ', c.apellidos) as caricaturista
//                         from caricatura a, caricaturista c
//                         where a.idCaricaturista = c.idCaricaturista and idCaricatura=$id");
//
// while($carpreview = mysql_fetch_array($carinfo)){
//   $contenido[] = array(
//         'foto' => $carpreview['foto'],
//         'idCaricatura' => $carpreview['idCaricatura'],
//         'caricaturista' => $carpreview['caricaturista'],
//         'fecha' => formatoFecha($carpreview['fecha']),);
// }

$soninfo = mysql_query("SELECT idSondeo, titulo, pregunta, fecha, rutaFoto as foto
											FROM sondeo
                      WHERE idSondeo = $id");
$sonpreview = mysql_fetch_row($soninfo);
$sondeo[] = array(
  'idSondeo' => $sonpreview[0],
  'titulo' => $sonpreview[1],
  'pregunta' => $sonpreview[2],
  'fecha' => formatofecha2($sonpreview[3]),
  'foto' => $sonpreview[4],
  'respuestas' => respuestas($sonpreview[0]),
  'total' => maxTotal($sonpreview[0])
);
echo json_encode(array(
        'contenido' => $sondeo,
        'subsecciones' => subseccion(1),
        'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
        'bannerMovil' => banner(1,'movil'),
        'leidos' => leidos(1)
));
?>
