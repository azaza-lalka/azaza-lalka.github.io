<?php

class HomeController extends Controller{
    function action_index(){
        $lang = $this->languageLoad('language/am_products.php');
        $this->data['am_products'] = $lang;

        $lang2 = $this->languageLoad('language/gg_products.php');
        $this->data['gg_products'] = $lang2;
        $this->innerData['title'] = 'Купить Parajumpers по низкой цене в интернет-магазине';
        $this->innerData['description'] = 'Купить пуховик Parajumpers по низкой цене, финальная распродажа, скидки до 50%.';

        $this->getHtml('head.tpl');
        $this->render('home.tpl');
        $this->getHtml('footer.tpl');
    }
}

