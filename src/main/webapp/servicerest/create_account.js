$(document).ready(function(){



    $("#create_account").click(function () {
        createAccount();

    })


});

function createAccount() {
    let path="http://localhost:8080/person/saveperson";
    let search={};
    search["firstName"]=$("#firstName").val();
    search["lastName"]=$("#lastName").val();
    search["email"]=$("#email").val();
    search["username"]=$("#username").val();
    search["password"]=$("#password").val();

    $.ajax({

        type:"POST",
        contentType:'application/json',
        url:path,
        data:JSON.stringify(search),
        dataType:'json',
        cache: false,
        timeout: 600000,
        success:function (data) {

            let json = "<div> <strong> Welcome "+data.firstName+" "+data.lastName+" thanks</strong>" + "</div>";
            $('#feedback').html(json);

        },
        error:function (e) {

            let json = "<div> <strong>Sorry! </strong>" +
                "Something has gone wrong : " +e.responseText+"</div>";
            $('#feedback').html(json);


        }

    });


}
