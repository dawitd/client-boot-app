$(document).ready(function(){

        $("#post_upload_btn").click(function () {
            //alert("clicked");
            uploadPicture();
        })
    });

function post_ajax_submit() {

    let path="http://localhost:8080/post/save";
    let post={};
    post["postText"]=$("#postText").val();
    post["person_id"]=$("#person_id").val();
    $.ajax({
        type:"POST",
        contentType:'application/json',
        url:path,
        data:JSON.stringify(post),
        dataType:'json',
        cache: false,

        success:function () {
        alert("hey i'm done ")

        },
        error:function (e) {
            alert(e.responseText);
        }

    });

}

function uploadPicture() {

    alert("I am in there");
    var path = "http://localhost:8080/getpicture";
    var form = $('#fileUploadForm')[0];
    var data1 = new FormData(form);
    $.ajax({
        url:  path,
        type: 'POST',
        data: data1,
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        cache: false,
        // beforeSend: function (xhr) {
        //     xhr.setRequestHeader("Authorization", "Bearer " + d.token);
        // },
        success: function (data) {
            post_ajax_submit();
        },
        error: function (e) {
            alert(e.responseText);
        }
    });
}


