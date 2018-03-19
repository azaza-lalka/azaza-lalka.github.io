<?php
require_once(__DIR__ . '/../core/Controller.php');
require_once(__DIR__ . '/../core/View.php');
require_once(__DIR__ . '/../core/Language.php');
require_once(__DIR__ . '/../core/Model.php');
require_once(__DIR__ . '/../core/MailHandler.php');


require_once(__DIR__ . '/../controllers/order.php');
$home_controller = new OrderController();
$home_controller->action_index();
