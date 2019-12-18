

$(document).ready(function(){

    viewprofileOnePerson();

});


function viewprofileOnePerson() {
    var count = 0;
    var idm=1;
    $
        .ajax({
            url : "http://localhost:8080/person/onePerson/"+idm,
            type : "GET",
            dataType : 'json',

            success : function(data) {

                $("#names").text(data.firstName+" "+data.lastName);

                $('#my_profile_pic').attr('src', 'data:image/png;base64,'+data.profilePic);
                // alert(data.profilePic);


            },
            error : function() {
                console.log("not found");
            }
        });
}
