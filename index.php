<?php
    require_once('core/Controller.php');
    require_once('core/View.php');
    require_once('core/Language.php');
    require_once('core/Model.php');
    require_once('core/MailHandler.php');


    require_once('controllers/home.php');
    $home_controller = new HomeController();
    $home_controller->action_index();
