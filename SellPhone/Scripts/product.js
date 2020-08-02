$(document).ready(function () {
    $('.minus-btnn').on('click', function (e) {
        e.preventDefault();
        var $this = $(this);
        var $input = $('#cart-value');
        var value = parseInt($input.val());

        if (value >= 1) {
            value = value - 1;
        } else {
            value = 0;
        }

        $input.val(value);

    });

    $('.plus-btnn').on('click', function (e) {
        e.preventDefault();
        var $this = $(this);
        var $input = $('#cart-value');
        var value = parseInt($input.val());

        if (value <= 100) {
            value = value + 1;
        } else {
            value = 100;
        }

        $input.val(value);
    });

    $("#add-to-cart").on('click', function (e) {
        e.preventDefault();
        getCartVal();
    });

});

function getCartVal() {
    var newValue = $('#cart-value').val();
    var oldValue = $('#cart-view span').text();
    var value = parseInt(oldValue) + parseInt(newValue);

    $.ajax({
        type: 'POST',
        url: '/Product/SetCart',
        data: {
            value: value,
            prodId: $("#prodId").val(),
            newValue: newValue
        },
        success: function () {
            $('#cart-view span').text(value);
            $('#cart-value').val('0');
        }
    });
}

