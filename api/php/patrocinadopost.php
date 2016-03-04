<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$editdata = json_decode(file_get_contents("php://input"));
date_default_timezone_set('America/El_Salvador');

$soninfo = mysql_query("SELECT idSondeo, titulo, pregunta, fecha, rutaFoto as foto
											FROM sondeo
                      WHERE activo = 1 and pagado = 1
                      order by fecha desc, hora desc
                      limit 1");
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
