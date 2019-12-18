$(document).ready(function(){

    $("#save_updates").click(function () {
        updateprofile_test();

    })


});



///------------save updates of profile -----------------------
function updateprofile_test() {
    var id=48;
    // let path="http://localhost:8080/person/updateperson"+id;
    let search={};
    search["id"]=$("#id").val();
    search["firstName"]=$("#firstName").val();
    search["lastName"]=$("#lastName").val();
    search["email"]=$("#email").val();
    search["phoneNumber"]=$("#phoneNumber").val();
    search["addressState"]=$("#addressState").val();
    search["addressCity"]=$("#addressCity").val();
    search["gender"]=$("#gender").val();
    search["bio"]=$("#bio").val();

    $.ajax({

        type:"PUT",
        contentType:'application/json',
        url : "http://localhost:8080/person/updateperson/"+id,
        data:JSON.stringify(search),
        dataType:'json',
        cache: false,
        timeout: 600000,
        success:function (data) {

            let json = "<div> <strong>"+data.firstName+" "+data.lastName+" your data updated successfully</strong>" + "</div>";
            $('#feedback').html(json);


        },
        error:function (e) {

            let json = "<div> <strong>Oops! </strong>" +
                "Something has gone wrong : " +e.responseText+"</div>";
            $('#feedback').html(json);


        }

    });


}









////////- ----- create account with all information --- but not used-----------

function createAccount() {
    let path="http://localhost:8080/person/saveperson";
     let search={};
     search["firstName"]=$("#firstName").val();
     search["lastName"]=$("#lastName").val();
     search["email"]=$("#email").val();
     search["phoneNumber"]=$("#phoneNumber").val();
     search["addressState"]=$("#addressState").val();
     search["addressCity"]=$("#addressCity").val();
     search["gender"]=$("#gender").val();
     search["bio"]=$("#bio").val();

    $.ajax({

        type:"POST",
        contentType:'application/json',
        url:path,
        data:JSON.stringify(search),
        dataType:'json',
        cache: false,
        timeout: 600000,
        success:function (data) {

            let json = "<div> <strong>"+data.firstName+" "+data.lastName+" Saved successfully</strong>" + "</div>";
            $('#feedback').html(json);

        },
        error:function (e) {

         let json = "<div> <strong>Oops! </strong>" +
                "Something has gone wrong : " +e.responseText+"</div>";
            $('#feedback').html(json);


        }

    });


}

