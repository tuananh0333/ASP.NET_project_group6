$(document).ready(function () {
    $(".delete-row").on("click", function () {
        var id = this.id;
        var selector = this.parent().siblings().eq(1).child();

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
            } else {
                selector.text(num);
            }
        }
    });
}