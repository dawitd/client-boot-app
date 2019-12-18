$(document).ready(function () {
    getProfile()

});


function getProfile() {


    $.ajax({

        type:"GET",
        url:"localhost:8080/person/all",
        dataType:'json',
        success:function (data) {
            alert("test ");

            var print='';
            $.each(data, function (i, item) {


                print+=''
                +'<p>'+item.firstName+'</p>'
                });
            $("#allPerson").html(print);



        },
        error:function (e) {

            let json = "<div> <strong>Oops! </strong>" +
                " can't display data : " +e.responseText+"</div>";
            $('#feedback').html(json);



        }

    });

}