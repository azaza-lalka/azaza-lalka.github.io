<?php
/**
 * Created by JetBrains PhpStorm.
 * User: zula
 * Date: 20.09.13
 * Time: 18:03
 * To change this template use File | Settings | File Templates.
 */

class Model {
    function save_order($product, $size, $color, $name, $phone, $address){

        $lang=$this->languageLoad('language/database.php');
        $dblocation = $lang['dblocation'];
        $dbname = $lang['dbname'];
        $dbuser = $lang['dbuser'];
        $dbpasswd = $lang['dbpasswd'];
        $dbcnx = mysqli_connect($dblocation, $dbuser, $dbpasswd, $dbname);
        if (!$dbcnx)
        {
            echo "<p>К сожалению, не доступен сервер mySQL</p>";
            exit();
        }

        $product = "\"" . $product . "\",";
        $size = "\"" . $size . "\",";
        $color = "\"" . $color . "\",";
        $name = "\"" . $name . "\",";
        $phone = "\"" . $phone . "\",";
        $address = "\"" . $address . "\",";


        mysqli_query($dbcnx, "SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
        $query = "INSERT INTO orders (product, size, color, name, phone, address, time) VALUES (" . $product . $size . $color . $name . $phone . $address . "NOW())";
        mysqli_query($dbcnx, $query);
    }

    function languageLoad($file){
        $l = new Language();
        return $l->render($file);

    }
}