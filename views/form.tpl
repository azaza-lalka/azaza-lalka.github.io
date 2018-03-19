<script xmlns="http://www.w3.org/1999/html">
    $(function () {
        $('.order-form').submit(order);
    });
</script>
<div class="form">
    <h2 style="margin-bottom: 5px;">Оформите заказ</h2>
    <p>
        И мы свяжемся с вами
    </p>
    <form class="order-form">
        <div class="order-details">
            <strong>Ваш заказ: </strong><?php echo $product->model; ?><br>
            <strong>Размер: </strong><?php echo $size; ?><br>
            <strong>Цвет: </strong> <?php echo $product->color; ?><br>
            <strong>Цена: </strong> <?php echo $product->price; ?> рублей
        </div>
        <div>
            <input name="name" type="text" placeholder="Введите ваше имя" required>
        </div>
        <div>
            <input name="phone" type="text" placeholder="Введите ваш телефон" required>
        </div>
        <div>
            <textarea name="address" placeholder="Введите адрес доставки"></textarea>
        </div>
        <div>
            <input name="product" type="hidden" value="<?php echo $name; ?>">
            <input name="size" type="hidden" value="<?php echo $size; ?>">
            <input name="color" type="hidden" value="<?php echo $product->color; ?>">
        </div>
        <div>
            <button type="submit">Заказать</button>
        </div>
    </form>
</div>
<div class="form-wait">
    <img src="/img/preloader.gif">
</div>
<div class="form-success">
    <h2 style="margin-bottom: 5px;">Спасибо!</h2>
    <p>
        Мы получили ваш заказ и свяжемся с вами в ближайщее время
    </p>
</div>
<div class="form-error">
    <h2 style="margin-bottom: 5px;">Ошибка :(</h2>
    <p>
        Пожалуйста, попробуйте снова или свяжитесь с нами по номеру +7 (495) 808-14-20
    </p>
</div>