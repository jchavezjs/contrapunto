<?php
include('connection.php');
include('funciones.php');
error_reporting(E_ERROR | E_WARNING | E_PARSE);
date_default_timezone_set('America/El_Salvador');

$soninfo = mysql_query("SELECT idSondeo, titulo, pregunta, fecha, rutaFoto as foto
											FROM sondeo
											where activo = 1 and pagado = 0
											ORDER BY fecha desc, hora desc");

while ($sonpreview = mysql_fetch_array($soninfo)) {
	$sondeo[] = array(
							'idSondeo' => $sonpreview['idSondeo'],
							'titulo' => $sonpreview['titulo'],
							'pregunta' => $sonpreview['pregunta'],
							'fecha' => formatofecha2($sonpreview['fecha']),
							'foto' => $sonpreview['foto'],
							'respuestas' => respuestas($sonpreview['idSondeo']),
							'total' => maxTotal($sonpreview['idSondeo'])
	);
}

echo json_encode(array(
				'subsecciones' => subseccion(1),
				'sondeos' => $sondeo,
				'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
				'bannerMovil' => banner(1,'movil'),
				'leidos' => leidos(1)
				));
?>
