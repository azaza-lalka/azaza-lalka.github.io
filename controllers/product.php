<?php

class ProductController extends Controller{
    function action_index(){
        $lang = null;
        if ($_GET["type"] == "am") {
            $lang = $this->languageLoad('language/am_products.php');
        }
        else {
            $lang = $this->languageLoad('language/gg_products.php');
        }

        $models = $lang[$_GET["model"]];
        $product = $models[$_GET["id"]];

        $this->data['product'] = $product;
        $this->data['others'] = $models;
        $this->data['type'] = $_GET["type"];
        $this->data['index'] = $_GET["id"];
        $this->innerData['title'] = 'Parajumpers ' . $product->model . ' ' . $product->color . ' по низкой цене';
        $this->innerData['description'] = 'Оригинальные Parajumpers ' . $product->model . ' ' . $product->color . ' по низкой цене в интернет-магазине';

        $this->getHtml('head.tpl');
        $this->render('product.tpl');
        $this->getHtml('footer.tpl');
    }
    function action_collection($type){
        $lang = null;
        if ($type == "am") {
            $lang = $this->languageLoad('language/am_products.php');
            $this->innerData['title'] = 'Мужская коллекция Parajumpers по низкой цене в интернет-магазине';
            $this->innerData['description'] = 'Мужская коллекция оригинальных Parajumpers по низкой цене в интернет-магазине. Бесплатная доставка по Москве и Московской области';
        }
        else {
            $lang = $this->languageLoad('language/gg_products.php');
            $this->innerData['title'] = 'Женская коллекция Parajumpers по низкой цене в интернет-магазине';
            $this->innerData['description'] = 'Женская коллекция оригинальных Parajumpers по низкой цене в интернет-магазине. Бесплатная доставка по Москве и Московской области';
        }

        $this->data['products'] = $lang;
        $this->data['type'] = $type;


        $this->getHtml('head.tpl');
        $this->render('collection.tpl');
        $this->getHtml('footer.tpl');
    }
}

