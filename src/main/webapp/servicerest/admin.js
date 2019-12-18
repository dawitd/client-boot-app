$(document).ready(function(){
    alert("You are in ....");
    show_unhealthy_posts();

});


function show_unhealthy_posts() {

    alert("I am in....");

    $.ajax({
        url: "http://localhost:8080/unhealthy",
        type: "GET",
        dataType: 'json',

        success: function (data) {

            var post = '';
            post += '+<table>'
                +'  <tr>'
                +' <td> Id </td> '
                +' <td> Post </td> '
                +' <td> User </td>'
                +' <td> Status </td>'
                +' </tr>'
            $
                .each(

                    data,

                    function (i, item) {

                        post +=+'<tr>'
                            +' <td><a href="#">'+item.postId +'</a></td> '
                            +' <td><a href="#">'+item.postText +'</a> </td> '
                            +' <td><a href="#">' +'Bikino'+'</a> </td>'
                            +' <td><a href="#">'+'Unabled'+' </a></td>'
                            +' </tr>'

                    });

            $(".post-unhealthy").html(post);

        },
        error: function () {
            alert("Error....");
            console.log(data);
        }


    });
}



