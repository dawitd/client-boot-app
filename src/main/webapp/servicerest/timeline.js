$(document).ready(function(){

    show_posts();
});

let myid='';
let arr = [];
let count =0;
function show_posts() {


    $.ajax({
        url: "http://localhost:8080/post/getall",
        type: "GET",
        dataType: 'json',

        success: function (data) {

            var post = '';
            $
                .each(

                    data,

                    function (i, item) {
                        // alert(item.postId);
                        myid= item.postId;

                        post += '<div class="post-date hidden-xs hidden-sm">'
                            + '<h5>Sarah</h5> <p class="text-grey">10/22/2016</p> </div>'

                            + '<img src="images/post-images/13.jpg" alt="post-image" class="img-responsive post-image" />'
                            + '<div class="post-container">'
                            + '<img src="images/users/user-1.jpg" alt="user" class="profile-photo-md pull-left" />'
                            + '<div class="post-detail">'
                            + '<div class="user-info">'
                            + '<h5><a href="timeline.jsp" class="profile-link">Sarah Cruiz</a> <span class="following">following</span></h5>'
                            + '<p class="text-muted">Yesterday</p>'
                            + '</div>'
                            + '<div class="reaction">'
                            + '<a class="btn text-green"><i class="icon ion-thumbsup"></i> 49</a>'
                            + '<a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>'
                            + '</div>'
                            + '<div class="line-divider"></div>'
                            + '<div class="post-text">'
                            + '<p class="post-text"> '+item.postText +' <i class="em em-anguished">BIKINO</i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>'
                            + '</div>'
                            + '<div class="line-divider"></div>'
                             +'<div id='+myid+'>'

                            +'</div>'

                            + '<div class="post-comment">'
                            + '<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />'
                            + '<input type="text" class="form-control" placeholder="Post a comment">'
                            + '</div>'
                            + '</div>'
                            + '</div>';
                        // f(item.postId);

                        show_comment_for_post(myid);

                    });

            $(".post-content").html(post);

        },
        error: function () {
            alert("Error....");
            console.log();
        }


    });
}

function show_comment_for_post(id) {
    let postcomment = '';
    $.ajax({
        url: "http://localhost:8080/comments/all/"+id,
        type: "GET",
        dataType: 'json',

        success: function (cdata) {



           // let k =0;
            $
                .each(
                    cdata,
                    function (j, itemcomment) {
                        postcomment += '<div class="post-comment">'
                            + '<img src="images/users/user-11.jpg" alt="" class="profile-photo-sm" />'
                            + '<p><a href="timeline.jsp" class="profile-link">Diana </a><i class="em em-laughing"></i>'+ itemcomment.commentText +' PostId:'+id+' Here Plz!!!!!</p>'
                            + '</div>'
                    });

           $('#'+id).append(postcomment);
        },
        error: function () {
            alert("Comment Post Error....");
            console.log();
        }
        
    });
   // return postcomment;
}
