<?php
require_once('core/Controller.php');
require_once('core/View.php');
require_once('core/Language.php');
require_once('core/Model.php');
require_once('core/MailHandler.php');
require_once('controllers/order.php');


$controller = new OrderController();
$controller->action_save_order($_POST['product'], $_POST['size'], $_POST['color'], $_POST['name'], $_POST['phone'], $_POST['address']);
$controller->sendNotifications($_POST['product'], $_POST['size'], $_POST['color'], $_POST['name'], $_POST['phone'], $_POST['address']);
echo 'success';
