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
<div class="block" id="collection">
    <div class="inner">
        <h2>Коллекция</h2>
        <div class="filter-container">
            <span class="filter filter-active">
                alexander mcqueen
            </span>
            <span class="filter">
                golden goose
            </span>
        </div>
        <div class="product-container">
            <?php foreach ($am_products as $model => $mproducts) { ?>
            <?php foreach ($mproducts as $index => $product) { ?>
            <div class="product">
                <a href="/product?id=<?php echo $index; ?>&type=am&model=<?php echo $model; ?>">
                    <div class="img">
                        <img src="<?php echo $product->image; ?>">
                        <span class="sale">акция</span>
                    </div>
                </a>
                <div class="buttons1">
                    <a class="button transparent-button"
                       href="/product?id=<?php echo $index; ?>&type=am&model=<?php echo $model; ?>">Подробнее</a>
                </div>
                <h3><?php echo $model; ?></h3>
                <div class="colors">
                    <strong>Цвет: </strong>
                    <span>
                        <?php echo $product->color; ?>
                    </span>
                </div>
                <div class="sizes">
                    <span class="checked">S</span>
                    <span>M</span>
                    <span>L</span>
                    <span>XL</span>
                    <span>XXL</span>
                    <span>3XL</span>
                </div>
                <div class="old-price"><?php echo $product->old_price; ?> рублей</div>
                <div class="price"><?php echo $product->price; ?> рублей</div>
                <div class="buttons">
                    <span class="button order-button"
                          href="/order_form?id=<?php echo $index; ?>&type=am&model=<?php echo $model; ?>">Заказать</span>
                </div>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        <div class="product-container" style="display: none;">
            <?php foreach ($gg_products as $model => $wproducts) { ?>
            <?php foreach ($wproducts as $index => $product) { ?>
            <div class="product">
                <a href="/product?id=<?php echo $index; ?>&type=gg&model=<?php echo $model; ?>">
                    <div class="img">
                        <img src="<?php echo $product->image; ?>">
                        <span class="sale">акция</span>
                    </div>
                </a>
                <div class="buttons1">
                    <a class="button transparent-button"
                       href="/product?id=<?php echo $index; ?>&type=gg&model=<?php echo $model; ?>">Подробнее</a>
                </div>
                <h3><?php echo $model; ?></h3>
                <div class="colors">
                    <strong>Цвет: </strong>
                    <span>
                        <?php echo $product->color; ?>
                    </span>
                </div>
                <div class="sizes">
                    <span class="checked">XS</span>
                    <span>S</span>
                    <span>M</span>
                    <span>L</span>
                    <span>XL</span>
                </div>
                <div class="old-price"><?php echo $product->old_price; ?> рублей</div>
                <div class="price"><?php echo $product->price; ?> рублей</div>
                <div class="buttons">
                    <span class="button order-button"
                          href="/order_form?id=<?php echo $index; ?>&type=gg&model=<?php echo $model; ?>">Заказать</span>
                </div>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
    </div>
</div>