$(document).ready(function(){

        $("#btn-post").click(function () {
            post_ajax_submit();
        })
    });
function post_ajax_submit() {
    let path="http://localhost:8080/post/save";
    let post={}
    post["postText"]=$("#postText").val();
    post["person_id"]=$("#person_id").val();
    $.ajax({
        type:"POST",
        contentType:'application/json',
        url:path,
        data:JSON.stringify(post),
        dataType:'json',
        cache: false,
        timeout: 600000,
        success:function () {


        },
        error:function (e) {



        }

    });

}
