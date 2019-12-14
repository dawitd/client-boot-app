$(document).ready(function () {

    viewprofileOnePersonToEdit();

    $("#save_updates").click(function () {
        //alert(" update clicked")
        updateProfile();

        redirectToProfile();

    })

})



function viewprofileOnePersonToEdit() {
    var count = 0;
    var id=15;
    $
        .ajax({
            url : "http://localhost:8080/person/onePerson/"+id,
            type : "GET",
            dataType : 'json',

            success : function(data) {
                var profile = '<p>'+data.firstName+'</p>';

                $("#firstName").val(data.firstName);
                $("#lastName").val(data.lastName);
                $("#gender").val(data.gender);
                $("#email").val(data.email);
                $("#phoneNumber").val(data.phoneNumber);
                $("#addressState").val(data.addressState);
                $("#addressCity").val(data.addressCity);
                $("#bio").val(data.bio);

                $("#profile").html(profile);
                //$("#postcount").html(count + " posts ");
                $('#p_image2').attr('src', 'data:image/png;base64,'+data.profilePath);
               // alert(data.profilePath);

            },
            error : function() {
                console.log("not found");
            }
        });
}



function updateProfile() {
    var id=15;
    // let path="http://localhost:8080/person/updateperson"+id;
    let search={}
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

function redirectToProfile() {

    $.ajax({
            url : "http://localhost:8090/profile",
            type : "GET",
            dataType : 'json',
            success : function() {

            },
            error : function() {
                console.log("not redirected ");
            }
        });

}
