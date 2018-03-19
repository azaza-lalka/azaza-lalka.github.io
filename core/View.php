<?php

 class View{

    function render($view, $data){
        extract($data);

        include_once __DIR__ . '/../views/' . $view;
    }

     function renderSimple($view){
         include_once __DIR__ . '/../views/' . $view;
     }

     function getHtml($view, $data){
         extract($data);

         return include_once __DIR__ . '/../views/' . $view;
     }

}