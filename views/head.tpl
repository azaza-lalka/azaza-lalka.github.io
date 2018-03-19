<!DOCTYPE html>
<head>
    <title><?php echo $title; ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <?php if (isset($description)) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if (isset($keywords))
                echo $keywords;
                ?>

    <link rel="icon" href="/img/favicon.png" type="image/png">
    <link rel="stylesheet" id="main-css" href="/views/css/landing/landing_1920.css">
    <link href="https://fonts.googleapis.com/css?family=Exo+2:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Exo+2:500" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <link rel="stylesheet" href="/js/modaal/source/css/modaal.css">
    <script src="/js/modaal/source/js/modaal.js"></script>

    <script>
        $(function () {
            $('.filter').click(function () {
                if ($(this).hasClass('filter-active'))
                    return;

                $('.filter').removeClass('filter-active');
                $(this).addClass('filter-active');

                $('.product-container').fadeToggle(300);
            });
            $('.sizes span').click(function () {
                $(this).parent().children().removeClass('checked');
                $(this).addClass('checked');
            });
            $('.order-button').modaal({
                type: 'ajax',
                source: function (el, url) {
                    var product = el.parents('.product, .big-product');
                    var size = product.find('.sizes .checked').html();

                    return url
                        + '&size=' + size;
                }
            });
            $('.size-table-link').modaal({
                type: 'inline'
            });
			$(".slider img").on("click",function(event){ 
				$("#image").attr("src",event.target.getAttribute("src")); 
			}); 
        });
    </script>
</head>