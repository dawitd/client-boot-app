var id = localStorage.getItem("logedin_id");
$(document).ready(function () {


    viewprofileOnePerson();


});

function viewprofileOnePerson() {


    $
        .ajax({
            url : "http://localhost:8080/person/onePerson/"+id,
            type : "GET",
            dataType : 'json',

            success : function(data) {

                $("#names").text(data.firstName+" "+data.lastName);
                 $("#gender").text(data.gender);
                 $("#email").text(data.email);
                 $("#phoneNumber").text(data.phoneNumber);
                 $("#address").text(data.addressCity+", "+ data.addressState);
                 $("#bio").text(data.bio);
               // $('#videodisplay').attr('src', 'data:video/mp4;base64,'+ data.profilePic);
                $('#p_image2').attr('src', 'data:image/png;base64,'+data.profilePic);
               // alert(data.profilePic);


            },
            error : function() {
                console.log("not found");
            }
        });
}



