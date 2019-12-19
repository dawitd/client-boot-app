$(document).ready(function(){

    show_posts();

    // $("#addcomment").click(function () {
    //     comment_ajax_submit();
    // })
    // $(".mybt").click(function () {
    //     alert("do not disturb me ")
    //
    // })
});

let myid='';
let arr = [];
let count =0;
function show_posts() {

  //  alert("I am in....");

    // var personId = 1;
    $.ajax({
        url: "http://localhost:8080/post/getall",
        type: "GET",
        dataType: 'json',

        success: function (data) {

            var post = '';
            $
                .each(

            // <div class="about-content-block">
            //     <video controls id="videodisplay">
            //     <source type="video/mp4" src="" >
            //     </video>
            //     </div>


                    data,
                   // $('#p_image2').attr('src', 'data:image/png;base64,'+data.profilePic);
                    function (i, item) {
                        // alert(item.postId);
                        myid= item.postId;
                        post +='<div class="post-container">'
                            +'<div class="about-content-block">'
                            +'<video controls id="videodisplay">'
                            +'<source type="video/mp4" src="data:video/mp4;base64,'+item.profilePic+'" >'
                            +'</video>'
                            +'</div>'
                            + '<img src="data:image/png;base64,'+item.profilePic+'" alt="post-image" class="img-responsive post-image" />'
                            +'<img src="images/users/user-2.jpg" alt="user" class="profile-photo-md pull-left" />'
                            +'<div class="post-detail">'
                            +'<div class="user-info">'
                            +'<h5><a href="timeline.html" class="profile-link">Linda Lohan</a> <span class="following">following</span></h5>'
                            +'<p class="text-muted">Published a photo about 1 hour ago</p>'
                            +'</div>'
                            +'<div class="reaction">'
                            +'<a class="btn text-green"><i class="icon ion-thumbsup"></i> 23</a>'
                            +'<a class="btn text-red"><i class="fa fa-thumbs-down"></i> 4</a>'
                            +'</div>'
                            +'<div class="line-divider"></div>'
                            +'<div class="post-text">'
                            +'<p><i class="em em-thumbsup"></i> <i class="em em-thumbsup"></i> '+item.postText +' </p>'
                            +'</div>'
                            +'<div class="line-divider"></div>'
                            +'<div id='+myid+'>'
                            +myid

                            +'</div>'
                            +'<div class="myCommentView">'


                            +'</div>'
                            +'<div class="post-comment">'
                            +'<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />'
                            // +'<input type="text" id="btn-comment" class="form-control" placeholder="Post a comment">'

                            +'<input type="text"  class="commentText" placeholder="Post a comment">'
                            // +' <button class="btn btn-primary pull-right">Add Comment</button>'
                            +' <button class="mybtn" onclick = "comment_ajax_submit()">Add Comment 000</button>'
                            +'</div>'
                            +'</div>'
                            +'</div>'

                        // show_comment_for_post(myid);

                    });

            $(".post-content").html(post);

        },
        error: function () {
            alert("Error....");
            console.log(data);
        }


    });
}

function checkClick() {
    $(this).css("background-color", "red");
alert("byakunze")
}


function comment_ajax_submit() {

    alert("2 Hello comment");
    var cc= $(".commentText").val();
    $(".myCommentView").append(cc);
    alert(cc);
    let path="http://localhost:8080/comment/add";
    let post={}
    post["commentText"]=$(".commentText").val();
    // post["person_id"]=$("#person_id").val();
    $.ajax({
        type:"POST",
        contentType:'application/json',
        url:path,
        data:JSON.stringify(post),
        dataType:'json',
        cache: false,
        timeout: 600000,
        success:function () {
            alert("3 Hello comment");

        },
        error:function (e) {

            alert("4 Hello comment");

        }

    });

}

