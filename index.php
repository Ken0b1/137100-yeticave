<?php
require_once('functions.php');
require_once('templates' . DIRECTORY_SEPARATOR . 'data_cat.php');

$page_content = get_template('main', $ad);
$layout_content = get_template('layout', [
    'content' => $page_content,
    'categories' => $categories,
    'title' => 'Yeticave - Главная страница'
]
);
echo $layout_content;
