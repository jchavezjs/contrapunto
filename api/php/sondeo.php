<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');

// $soninfo = mysql_query("SELECT idSondeo, titulo, pregunta, fecha, rutaFoto as foto
// 											FROM sondeo
// 											ORDER BY fecha desc, hora desc");
// $resinfo = mysql_query("SELECT idRespuesta, idSondeo, respuesta
// 											FROM respuesta");
//
//
//
// while ($sonpreview = mysql_fetch_array($soninfo)) {
// 	$sondeo[] = array(
// 							'idSondeo' => $sonpreview['idSondeo'],
// 							'titulo' => $sonpreview['titulo'],
// 							'pregunta' => $sonpreview['pregunta'],
// 							'fecha' => $sonpreview['fecha'],
// 							'foto' => $sonpreview['foto'],
// 							'respuestas' => respuestas($resinfo, $sonpreview['idSondeo'])
// 	);
// }
// function respuestas($info, $id){
// 	while ($respreview = mysql_fetch_array($info)) {
// 		if($id == $respreview['idSondeo']){
// 			$respuestas[] = array(
// 								'idRespuesta' => $respreview['idRespuesta'],
// 								'idSondeo' => $respreview['idSondeo'],
// 								'respuesta' => $respreview['respuesta'],
// 		);
// 	}
// 	}
// 	return $respuestas;
// }
echo json_encode(array(
				'subsecciones' => subseccion(1),
				// 'sondeos' => $sondeo,
				'banner1' => banner(1,1),
				'banner2' => banner(1,2),
				'banner3' => banner(1,3),
				'bannerMovil' => banner(1,'movil'),
				));
?>
