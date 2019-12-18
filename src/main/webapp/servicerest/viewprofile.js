$(document).ready(function () {

    alert("my profile test");
    viewprofileOnePerson();
    // $("#view_data").click(function () {
    //
    //     alert("hello");
    //     //viewprofiles();
    //     viewprofileOnePerson();
    // });
    //
    // $("#save_updates").click(function () {
    //     alert(" update clicked")
    //     updateprofile_test();
    //
    // })

});

// function viewprofiles() {
//     var count = 0;
//     var id=10;
//     $
//         .ajax({
//             url : "http://localhost:8080/person/onePerson/"+id,
//             type : "GET",
//             dataType : 'json',
//
//             success : function(data) {
//                 var profile = '';
//                 $
//                     .each(
//                         data,
//                         function(i, item) {
//                             // profile += '<div class="col-md-4 col-sm-6"> <div class="template-thumb"><a class="viewm" target="_blank" data-toggle="modal" data-target="#imageVideomodal"><div class="img-wrapper"><img src="'
//                             //     + 'data:image/png;base64,'
//                             //     + item.content
//                             //     + '" alt="" class="img-responsive" /><input class="postcommentid" type="hidden" value="'+ item.id +'"></div></a><div class="page-link"><a href="index.html" target="_blank"> </a></div></div></div>';
//                             // count++;
//
//                             profile+='<p>'+item.firstName+'</p>'
//
//                         });
//                 $("#profile").html(profile);
//                 //$("#postcount").html(count + " posts ");
//             },
//             error : function() {
//                 console.log("not found");
//             }
//         });
// }

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



