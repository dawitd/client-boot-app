$(function () {
    if (window.location.pathname === '/newsfeed') {
        let suggestionsHandler = suggestions();
        suggestionsHandler.suggestionsFetch();
        $(document).on("click", '.follow', function (e) {
            e.preventDefault();
            let res = suggestionsHandler.follow($(this).data("id"));
            if(res) {
                $(this).closest(".follow-user").remove();
            }
        });
    }
});

const suggestions = function () {
    let userId = 37;
    let suggestionsFetch = function () {
        $.ajax({
            url: 'http://localhost:8080/follow-suggestions/'+userId,
            method: 'get',
            success: function (users) {
                let data = "";
                if (users.length > 0) {
                    for(let i = 0; i < users.length; i++) {
                        data += '<div class="follow-user">'
                            + '<img src="images/users/user-11.jpg" alt="" class="profile-photo-sm pull-left" />'
                            + '<div><h5><a href="timeline.html">'+ users[i].firstName+ ' ' +users[i].lastName+'</a></h5>'
                            + '<a href="#" data-id="'+users[i].id+'" class="text-green follow">Follow</a>'
                            + '</div></div>';
                    }
                    $('.follow-user').remove();
                    $('.suggestions').append(data);
                }
            },
            error: function (err) {
                console.log(err);
            }
        });
    };

    let follow = function(userToFollowId) {
        $.ajax({
            url: 'http://localhost:8080/follow/'+userId+'/' + userToFollowId,
            method: 'post',
            success: function (succ) {
                return succ.message === 'Successful';
            },
            error:function (err) {
                console.log(err);
                return false;
            }
        });
    };

    return {
        suggestionsFetch: suggestionsFetch,
        follow:follow
    }
};