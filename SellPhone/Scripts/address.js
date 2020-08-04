
$(document).ready(function () {
    $('#city').change(function (e) {
        e.preventDefault();
        var id = $(this).val();

        $.ajax({
            type: 'POST',
            url: '/Cart/getDistricts',
            data: {
                cityId: id
            },
            success: function (result) {
                $("#district").empty();
                for (var i = 0; i < result.split("#").length; i++) {
                    var id = (result.split("#")[i]).split("$")[1];
                    var name = (result.split("#")[i]).split("$")[0];
                    $("#district").append('<option value="'+id+'">'+name+'</option>');
                }
            }
        });
    });
});