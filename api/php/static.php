<?php
// 1. get the content Id (here: an Integer) and sanitize it properly
$seccion = $_GET['seccion'];
$subseccion = $_GET['subseccion'];
$id = $_GET['id'];

// $seccion = 'politica';
// $subseccion = 'sociedadcivil';
// $id = '235';

// 2. get the content from a flat file (or API, or Database, or ...)
$data = json_decode(file_get_contents('http://contrapunto.com.sv/api/php/post.php?seccion='.$seccion.'&subseccion='.$subseccion.'&id='.$id));

// 3. return the page
return makePage($data);

function makePage($data) {
    // 1. get the page
    $pageUrl = "http://www.contrapunto.com.sv/api/php/static.php?seccion=politica&subseccion=sociedadcivil&id=303";

    // 2. generate the HTML with open graph tags
    $html  = '<!doctype html>'.PHP_EOL;
    $html .= '<html>'.PHP_EOL;
    $html .= '<head>'.PHP_EOL;
    $html .= '<meta name="author" content="'.$data->contenido->autor.'"/>'.PHP_EOL;
    $html .= '<meta property="og:title" content="'.$data->contenido->titulo.'"/>'.PHP_EOL;
    $html .= '<meta property="og:url" content="'.$pageUrl.'"/>'.PHP_EOL;
    $html .= '<meta property="og:description" content="'.$data->contenido->preview.'"/>'.PHP_EOL;
    $html .= '<meta property="og:image:url" content="http://contrapunto.com.sv/'.$data->contenido->foto.'"/>'.PHP_EOL;
    //$html .= '<meta http-equiv="refresh" content="0;url='.$pageUrl.'">'.PHP_EOL;
    $html .= '</head>'.PHP_EOL;
    $html .= '<body></body>'.PHP_EOL;
    $html .= '</html>';
    // 3. return the page
    echo $html;
}
?>
