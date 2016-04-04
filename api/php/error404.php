<?php
$noCP = substr($_GET['url'], 0);

$goTo = "http://contrapunto.com.sv/archivo2016".$noCP;
$url = "<a target='_blank' href='$goTo'>".$goTo."</a>";

header('Location: '.$goTo.'');
?>
