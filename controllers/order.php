<?php

class OrderController extends Controller{
    function action_index(){
        $lang = null;
        if ($_GET["type"] == "am") {
            $lang = $this->languageLoad('language/am_products.php');
            $this->data['name'] = ' alexander mcqueen';
        }
        else {
            $lang = $this->languageLoad('language/gg_products.php');
            $this->data['name'] = ' golden goose';
        }

        $models = $lang[$_GET["model"]];
        $product = $models[$_GET["id"]];

        $this->data['product'] = $product;
        $this->data['size'] = $_GET["size"];
        $this->data['name'] = $product->model . $this->data['name'];

        $this->render('form.tpl');
    }

    function action_save_order($product, $size, $color, $name, $phone, $address){
        parent::action_save_order($product, $size, $color, $name, $phone, $address);
    }
}

