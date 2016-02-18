<?php
include('connection.php');

mysql_query("update banner set rutaFoto='".mysql_escape_string("http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg")."' where idBanner = 4");

 ?>
