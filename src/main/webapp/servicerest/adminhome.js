$(document).ready(function(){
    show_all_person();

});

var count = '0';
function show_all_person() {

    $.ajax({
        url: "http://localhost:8080/person/allperson",
        type: "GET",
        dataType: 'json',

        success: function (data) {
            count++;
            var post = '';
            post += '<thead>'
                +'<tr>'
                +'<th class="text-center">#</th>'
                +'<th>Name</th>'
                +' <th class="text-center">username</th>'

                +' <th class="text-center">Times</th>'
                +'<th class="text-center">Status</th>'
                +'</tr>'
                +'</thead>'
            $
                .each(

                    data,

                    function (i, item) {

                         post +='<tr><td class="text-center text-muted">#'+item.id +' </td><td>'
                            +'<div class="widget-content p-0">'
                            +'<div class="widget-content-wrapper">'
                            +'<div class="widget-content-left mr-3">'
                            +'<div class="widget-content-left">'
                            +'<img width="40" class="rounded-circle" src="images/4.jpg"alt="">'
                            +'</div>'
                            +'</div>'
                            +'<div class="widget-content-left flex2">'
                            +'<div class="widget-heading">'+item.firstName +' </div>'
                            +'<div class="widget-subheading opacity-7">'+item.lastName +' </div>'
                            +'</div> </div> </div> </td>'
                            +'<td class="text-center">'+item.username +' </td>'
                            +'<td class="text-center">'
                            +'<div class="badge badge-warning">Pending</div>'
                            +'</td>'
                            +'<td class="text-center">'
                            +'<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm"> Enable </button>'
                            +'</td>'
                            +'</tr>'
                    });

            $(".post-person").html(post);

        },
        error: function () {
            alert("Error....");
            console.log(data);
        }


    });
}



