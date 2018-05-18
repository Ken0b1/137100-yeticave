<?php

function get_template($tmp, $data){
    if (!file_exists('templates' . DIRECTORY_SEPARATOR . $tmp . '.php')) {
       return ''; 
    }
    ob_start();
    require('templates' . DIRECTORY_SEPARATOR . $tmp. '.php');
    return ob_get_clean();
}
?>
