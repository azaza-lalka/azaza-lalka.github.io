<?php
require_once('core/Controller.php');
require_once('core/View.php');
require_once('core/Language.php');
require_once('core/Model.php');
require_once('core/MailHandler.php');
if (isset($_POST['json'])){
    $data = json_decode($_POST['json']);
    $phone = $data->{'phone'};

    require_once('controllers/home.php');
    $home_controller = new Home();
    $home_controller->sendNotifications($phone, "razgulay-msk.ru", "site");
    echo "success";
}