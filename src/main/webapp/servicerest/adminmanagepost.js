$(document).ready(function(){

    show_unhealthy_posts();

});


function show_unhealthy_posts() {



    $.ajax({
        url: "http://localhost:8080/unhealthy",
        type: "GET",
        dataType: 'json',

        success: function (data) {

            var post = '';
            post += '<thead>'
                +'<tr>'

                +'<th>Posted By</th>'
                +'<th class="text-center">Content</th>'

                +'<th class="text-center">Times</th>'
                +'<th class="text-center">Status</th>'
                +' </tr>'
                +'</thead>'
            $
                .each(

                    data,

                    function (i, item) {
                        post += '<tbody'
                            +'<tr>'
                            +'<td>'
                            +'<div class="widget-content p-0">'
                            +' <div class="widget-content-wrapper">'
                            +' <div class="widget-content-left mr-3">'
                            +'<div class="widget-content-left">'
                            +'<img width="40" class="rounded-circle" src="images/4.jpg"alt="">'
                            +'</div>'
                            +' </div>'
                            +'<div class="widget-content-left flex2">'
                            +'<div class="widget-heading">Ildephonse</div>'
                            +'<div class="widget-subheading opacity-7">Bikino</div>'
                            +'</div>'
                            +'</div>'
                            +' </div>'
                            +'</td>'
                            +'<td class="text-center">'+item.postText +' </td>'
                        +'<td class="text-center">'
                        +' <div class="badge badge-warning">Pending</div>'
                        +' </td>'
                        +' <td class="text-center">'
                        // +'  <button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Enable'
                            + '<a href="#" data-id="'+item.id+'" class="text-green follow">Disable</a>'
                            +'  </button>'
                            +'  </td>'
                            +'  </tr>'
                    });

            $(".post-unhealthy").html(post);

        },
        error: function () {
            alert("Error....");
            console.log(data);
        }


    });
}



