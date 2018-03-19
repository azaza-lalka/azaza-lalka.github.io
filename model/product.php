<?php


class Product {

    public $image;
    public $price;
    public $old_price;
    public $color;
    public $model;
    public $big_image1;
    public $big_image2;
    public $big_image3;
    public $big_image4;
    public $material;
    public $description;

    function __construct($image, $price, $old_price, $color, $model, $big_image1, $big_image2, $big_image3, $big_image4, $material, $description)  {
        $this->image = $image;
        $this->price = $price;
        $this->old_price = $old_price;
        $this->color = $color;
        $this->model = $model;
        $this->big_image1 = $big_image1;
        $this->big_image2 = $big_image2;
        $this->big_image3 = $big_image3;
        $this->big_image4 = $big_image4;
        $this->material = $material;
        $this->description = $description;
    }
}