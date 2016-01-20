<?php

function articulo($seccion){
	$str = "SELECT a.idArticulo as id, a.titulo, CONCAT(c.nombres, ' ', c.apellidos) as autor, 
			a.preview, i.rutaFoto as foto, a.fecha, f.nombre as fotografo 
			from articulo a, personal as c, imagenesarticulo as i, fotografo as f
			where a.idArticulo = i.idArticulo and a.idPersonal = c.idPersonal and i.idFotografo = f.idFotografo 
			and i.posicion='principal' and a.idSubseccion=$seccion
			ORDER BY a.fecha desc, a.hora desc";
	$query = mysql_query($str);
	while($result = mysql_fetch_array($query)){
		$resultado[] = array(
					'id' => $id = $result['id'],
					'foto' => $foto = $result['foto'],
					'titulo' => $titulo = $result['titulo'],
					'autor' => $autor = $result['autor'],
					'preview' => $preview = $result['preview'],
					'fecha' => $fecha = date("d/m/Y", strtotime($result['fecha'])),
					'fotografo' => $fotografo = $result['fotografo'],);
	}
	return $resultado;
}

?>