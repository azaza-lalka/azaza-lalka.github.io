<?php
require_once(__DIR__ . '/Language.php');
require_once(__DIR__ . '/class.sms16.php');

abstract class Controller {
    private $view;
    public $data = array();
    public $innerData = array();
    private $model;
    private $mail;

    function __construct(){
        $this->view = new View();
        $this->model = new Model();
        $this->mail = new MailHandler();

        $this->innerData['metrica_on']=$this->is_prom_server();
    }

    function languageLoad($file) {
        $language = new Language();
        return $language->render(__DIR__ . '/../' . $file);
    }

    function render($path) {
        return $this->view->render($path, $this->data);
    }

    function getHtml($path){
        return $this->view->getHtml($path, $this->innerData);
    }

    function action_save_order($product, $size, $color, $name, $phone, $address){
        $this->model->save_order($product, $size, $color, $name, $phone, $address);
    }

    function sendNotifications($product, $size, $color, $name, $phone, $address){
        //$this->sendSmsNotification($phone);
        $lang = $this->languageLoad('language/spam.php');

        $time = date("H:i:s");

        $email_list = $lang['notifications_list'];
        foreach ($email_list as &$value){
            $this->mail->send($product, $size, $color, $name, $phone, $address, $value);
        }
}

    function is_prom_server(){
        $server_name = $_SERVER["SERVER_NAME"];
        if(stristr($server_name, 'localhost') === FALSE) {
            return false;
        }
        else
        {
            return true;
        }
    }

    function sendSmsNotification($phone, $message){

    }
}