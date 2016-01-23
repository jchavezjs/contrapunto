<?php
include('connection.php');
include('funciones.php');

date_default_timezone_set('America/El_Salvador');


/*for ($i=0; $i <=2 ; $i++) { 
	mysql_query("insert into articulo(titulo,preview,contenido,idPersonal,idSubseccion,fecha,hora,especial)
		values('Alianza conquista un nuevo titulo de la Liga Mayor','Alianza se corono campeon del Apertura 
			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ','hola',14,41,'2016-01-16','12:12:12',0)");
}*/

/*for ($i=107; $i <=112 ; $i++) { 
	mysql_query("insert into imagenesarticulo(rutaFoto,idArticulo,posicion,idFotografo)
		values('img/deporte1.jpg',$i,'principal',6)");
}
*/

echo json_encode(array(
				'politicas' => articulo(37),
				'gobiernos' => articulo(38),
				'partidos' => articulo(39),
				'subsecciones' => subseccion(2)
				));

?>