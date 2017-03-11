<?php
// Composer f3 load style
require_once("./vendor/autoload.php");
$f3 = Base::instance();

$f3->route('GET /',
    function() {
        echo 'Hello, world!!';
    }
);

$f3->run();
