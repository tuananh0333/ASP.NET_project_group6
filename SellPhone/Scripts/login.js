$(document).ready(function () {
    $("#btnLogin").on("click", function () {
        var username = $("#username").val();
        var password = $("#password").val();

        $.ajax({
            type: 'POST',
            url: '/Login/login',
            data: {
                username: username,
                password: password
            },
            success: function (response) {
                if (response == "True") {
                    location.replace("/Login/Inquiry");
                } else {
                    $("#error").css("display", "block");
                }
            }
        });
    });

    $("#username").on("click", function () {
        $("#error").css("display", "none");
    });
    $("#password").on("click", function () {
        $("#error").css("display", "none");
    });
});