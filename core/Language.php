<?php


class Language {
    public $data=array();

    function __construct()  {
        $this->data=array();
    }

    function render($file) {
        if (file_exists($file)) {
            $_ = array();

            require($file);

            $this->data = array_merge($this->data, $_);

            return $this->data;
        }

        return $this->data;
    }

}