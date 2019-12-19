

$(document).ready(function(){

    viewprofileOnePerson();

});

var logedUsername=$("#logedUsername").val();

function viewprofileOnePerson() {



    $
        .ajax({
            url : "http://localhost:8080/person/onePersonByUsername/"+logedUsername,
            type : "GET",
            dataType : 'json',

            success : function(data) {

                $("#names").text(data.firstName+" "+data.lastName);

                $('#profile_picture').attr('src', 'data:image/png;base64,'+data.profilePic);

                localStorage.setItem('logedin_id', data.id);


            },
            error : function() {
                console.log("not found");
            }
        });
}
