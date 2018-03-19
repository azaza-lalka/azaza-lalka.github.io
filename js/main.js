function getURLParameter(name) {
    return decodeURI(
        (RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]
    );
}

function order(e) {
    var form = $(this);

    var postData = form.serializeArray();
    var formURL = '/order.php';
    $('.form').hide();
    $('.form-wait').show();

    $.ajax(
        {
            url: formURL,
            type: "POST",
            data: postData,
            success: function (data, textStatus, jqXHR) {
                $('.form-wait').hide();
                $('.form-success').show();
                yaCounter40883279.reachGoal('order_goal');
            },
            error: function (jqXHR, textStatus, errorThrown) {
                $('.form-wait').hide();
                $('.form-error').show();
            }
        });

    e.preventDefault();
}
