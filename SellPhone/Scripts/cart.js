$(document).ready(function () {
    $(".delete-row").on("click", function () {
        var id = $(this).attr("id");
        var selector = $(this).parent().siblings().eq(1).children();

        removeCartVal(id, selector);
    });
});

function removeCartVal(id, selector) {
    var num = selector.text();

    $.ajax({
        type: 'POST',
        url: '/Cart/removeCart',
        data: {
            id: id
        },
        success: function () {
            num--;
            if (num == 0) {
                selector.parents(".col-md-12").remove();

                if ($("#cartView").html().split(' ').join('').replace(/(?:\r\n|\r|\n)/g, '') == "") {
                    $("#cartView").html("<div class='text-center'>Cart is empty yet</div>");
                }
            } else {
                selector.text(num);
            }
            var cart = $('#cart-view span').text();
            $('#cart-view span').text(--cart);
        }
    });
}