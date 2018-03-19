<body bgcolor="#e6e6fa">
<div class="header dark-header">
    <div class="header-inner">
        <div class="menu">
			<a class="link" href="/">главная</a>
            <a class="link" href="/am">alexander mcqueen</a>
            <a class="link" href="/gg">golden goose</a>
            <span class="telephone">
                <img src="/img/telephone.png">
                +7 (495) 808-14-20
            </span>
        </div>
    </div>
</div>
<div class="block" id="collection" style="padding-top: 25px;">
    <div class="inner big-product">
        <div class="image">
            <img src="<?php echo $product->big_image1; ?>" id="image">
            <span class="sale">акция</span>
			<div class="slider">
				<img src="<?php echo $product->big_image1; ?>">
				<img src="<?php echo $product->big_image2; ?>">
				<img src="<?php echo $product->big_image3; ?>">
				<img src="<?php echo $product->big_image4; ?>">
			</div>
        </div>
        <div class="description">
            <h1><?php echo $product->model; ?></h1>
            <div>
                <strong>Цвет: </strong>
                <?php echo $product->color; ?>
            </div>
            <?php if($type=='am') { ?>
                <div class="sizes">
                    <span class="checked">S</span>
                    <span>M</span>
                    <span>L</span>
                    <span>XL</span>
                    <span>XXL</span>
                    <span>3XL</span>
                </div>
            <?php } else { ?>
                <div class="sizes">
                    <span class="checked">XS</span>
                    <span>S</span>
                    <span>M</span>
                    <span>L</span>
                    <span>XL</span>
                </div>
            <?php } ?>
            <div href="#size-table" class="size-table-link">
                Таблица размеров
            </div>
            <div class="old-price">
                <?php echo $product->old_price; ?> рублей
            </div>
            <div class="price">
                <span class="value"><?php echo $product->price; ?> рублей</span>
                <span class="button order-button"
                      href="/order_form?id=<?php echo $index; ?>&type=<?php echo $type; ?>&model=<?php echo $product->model; ?>">Заказать</span>
            </div>
            <div class="big-product-description-row">
                <strong>Материал: </strong>
                <?php echo $product->material; ?>
            </div>
            <div class="big-product-description-row">
                <strong>Описание: </strong>
                <?php echo $product->description; ?>
            </div>
        </div>
    </div>
</div>
<!--<div class="block">
    <div class="inner">
        <h2>Все цвета</h2>
        <div class="product-container">
            <?php foreach ($others as $index => $sproduct) { ?>
            <div class="product">
                <a href="/product?id=<?php echo $index; ?>&type=<?php echo $type; ?>&model=<?php echo $sproduct->model; ?>">
                    <div class="img">
                        <img src="<?php echo $sproduct->image; ?>">
                    </div>
                </a>
                <div class="buttons1">
                    <a class="button transparent-button"
                       href="/product?id=<?php echo $index; ?>&type=<?php echo $type; ?>&model=<?php echo $sproduct->model; ?>">Подробнее</a>
                </div>
                <h3><?php echo $sproduct->model; ?></h3>
                <div class="colors">
                    <strong>Цвет: </strong>
                    <span>
                                <?php echo $sproduct->color; ?>
                            </span>
                </div>
                <?php if($type=='am') { ?>
                    <div class="sizes">
                        <span class="checked">S</span>
                        <span>M</span>
                        <span>L</span>
                        <span>XL</span>
                        <span>XXL</span>
                        <span>3XL</span>
                    </div>
                <?php } else { ?>
                    <div class="sizes">
                        <span class="checked">XS</span>
                        <span>S</span>
                        <span>M</span>
                        <span>L</span>
                        <span>XL</span>
                    </div>
                <?php } ?>
                <div class="old-price"><?php echo $sproduct->old_price; ?> рублей</div>
                <div class="price"><?php echo $sproduct->price; ?> рублей</div>
                <div class="buttons">
                    <span class="button order-button"
                          href="/order_form?id=<?php echo $index; ?>&type=<?php echo $type; ?>&model=<?php echo $sproduct->model; ?>">Заказать</span>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>-->
<?php if ($type == "am") { ?>
<div id="size-table" style="display: none;">
    <h2 class="size-table">Таблица размеров мужских моделей</h2>
    <table class="size-table">
        <thead>
        <tr>
            <td>Размер</td>
            <td>Обхват груди</td>
            <td>Обхват талии</td>
            <td>Обхват бедер</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>S</td>
            <td>88-94</td>
            <td>74-80</td>
            <td>92-96</td>
        </tr>
        <tr>
            <td>M</td>
            <td>95-101</td>
            <td>81-87</td>
            <td>96-100</td>
        </tr>
        <tr>
            <td>L</td>
            <td>102-109</td>
            <td>88-95</td>
            <td>100-104</td>
        </tr>
        <tr>
            <td>XL</td>
            <td>110-117</td>
            <td>96-103</td>
            <td>104-108</td>
        </tr>
        <tr>
            <td>XXL</td>
            <td>118-124</td>
            <td>104-110</td>
            <td>108-112</td>
        </tr>
        <tr>
            <td>3XL</td>
            <td>124-134</td>
            <td>110-116</td>
            <td>112-116</td>
        </tr>
        </tbody>
    </table>
</div>
<?php } else { ?>
<div id="size-table" style="display: none;">
    <h2 class="size-table">Таблица размеров женских моделей</h2>
    <table class="size-table">
        <thead>
        <tr>
            <td>Размер</td>
            <td>Обхват груди</td>
            <td>Обхват талии</td>
            <td>Обхват бедер</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>XS</td>
            <td>82-86</td>
            <td>62-66</td>
            <td>90-94</td>
        </tr>
        <tr>
            <td>S</td>
            <td>86-90</td>
            <td>66-70</td>
            <td>94-98</td>
        </tr>
        <tr>
            <td>M</td>
            <td>90-94</td>
            <td>70-74</td>
            <td>98-102</td>
        </tr>
        <tr>
            <td>L</td>
            <td>94-98</td>
            <td>74-78</td>
            <td>102-106</td>
        </tr>
        <tr>
            <td>XL</td>
            <td>98-102</td>
            <td>78-82</td>
            <td>106-110</td>
        </tr>
        </tbody>
    </table>
</div>
<?php } ?>