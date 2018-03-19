<?php
require_once(__DIR__ . '/../core/Controller.php');
require_once(__DIR__ . '/../core/View.php');
require_once(__DIR__ . '/../core/Language.php');
require_once(__DIR__ . '/../core/Model.php');
require_once(__DIR__ . '/../core/MailHandler.php');


require_once(__DIR__ . '/../controllers/product.php');
$home_controller = new ProductController();
$home_controller->action_collection('gg');