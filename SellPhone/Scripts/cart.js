$(document).ready(function () {
    $(".delete-row").on("click", function () {
        var id = $(this).attr("id");
        var selector = $(this).parent().siblings().eq(1).children();

        removeCartVal(id, selector);
    });
});

function removeCartVal(id, selector) {
    var num = selector.text();
    var totalSelector = selector.parent().siblings().eq(1).children();
    var total = totalSelector.text().split(",").join("").split(" VND").join("");
    var once = selector.parent().siblings().eq(0).children().children(1).children("p").text().split(",").join("").split(" VND").join("");

    var newTotal = total - once;

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

            var formatter = new Intl.NumberFormat('it', {
                style: 'currency',
                currency: "VND",
                currencyDisplay: "code"
            });

            totalSelector.text(formatter.format(newTotal).split(".").join(",").split(String.fromCharCode(160) + "VND").join(" VND"));
            $("#pay").text("Pay " + formatter.format(newTotal).split(".").join(",").split(String.fromCharCode(160) + "VND").join(" VND"));
        }
    });
}