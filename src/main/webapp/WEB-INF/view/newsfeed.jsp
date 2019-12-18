<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is social network html5 template available in themeforest......" />
    <meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
    <meta name="robots" content="index, follow" />
    <title>News Feed</title>

    <!-- Stylesheets
    ================================================= -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/ionicons.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link href="css/emoji.css" rel="stylesheet">
    <!--Google Webfont-->
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700' rel='stylesheet' type='text/css'>
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="images/fav.png"/>
</head>
<body>

<!-- Header
================================================= -->
<header id="header">
    <nav class="navbar navbar-default navbar-fixed-top menu">
        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="login.html"><img src="images/hlogo.png" alt="hlogo" /></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right main-menu">
                    <li class="dropdown"><a href="newsfeed">Home</a></li>
                    <li class="dropdown"><a href="timeline">My Timeline</a></li>
                    <li class="dropdown"><a href="profile">Profile</a></li>
                    <li class="dropdown"><a href="login">Logout</a></li>
                </ul>


                <form class="navbar-form navbar-right hidden-sm">
                    <div class="form-group">
                        <i class="icon ion-android-search"></i>
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->

        </div><!-- /.container -->
    </nav>
</header>
<!--Header End-->

<div id="page-contents">
    <div class="container">
        <div class="row">

            <!-- Newsfeed Common Side Bar Left
            ================================================= -->
            <div class="col-md-3 static">
                <div class="profile-card">
                    <img src="images/users/user-1.jpg" alt="user" class="profile-photo" />
                    <h5><a href="timeline.html" class="text-white">Sarah Cruiz</a></h5>
                    <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 1,299 followers</a>
                </div><!--profile card ends-->
                <ul class="nav-news-feed">
                    <li><i class="icon ion-ios-paper"></i><div><a href="newsfeed.html">My Newsfeed</a></div></li>

                    <li><i class="icon ion-ios-people-outline"></i><div><a href="newsfeed-friends.html">Friends</a></div></li>
                    <li><i class="icon ion-images"></i><div><a href="newsfeed-images.html">Images</a></div></li>
                    <li><i class="icon ion-ios-videocam"></i><div><a href="newsfeed-videos.html">Videos</a></div></li>
                </ul><!--news-feed links ends-->

            </div>
            <div class="col-md-7">

                <!-- Post Create Box
                ================================================= -->
                <div class="create-post">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <div class="form-group">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-md" />
                                <input id="idperson" type="hidden" value="1"/>
                                <textarea name="texts" id="postText" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-5">
                            <div class="tools">
                                <ul class="publishing-tools list-inline">
                                    <li><a href="#"><i class="ion-compose"></i></a></li>
                                    <li><a href="#"><i class="ion-images"></i></a></li>
                                    <li><a href="#"><i class="ion-ios-videocam"></i></a></li>

                                </ul>
                                <button class="btn btn-primary pull-right " id="btn-post">Post</button>
                            </div>
                        </div>
                    </div>
                </div><!-- Post Create Box End-->


                <!-- Post Content
                ================================================= -->
                <div class="post-content">

                </div>



<!--     ======================  -->

                <div class="post-contents">
                    <img src="images/post-images/11.jpg" alt="" class="img-responsive post-image" />
                    <div class="post-container">
                        <img src="images/users/user-9.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">Anna Young</a> <span class="following">following</span></h5>
                                <p class="text-muted">Published a photo about 4 hour ago</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 2</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-10.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Julia </a>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" id="commentText" class="form-control" placeholder="Post a comment"/>
<!--                                <button id="btnComment">Add Comment</button>-->

                                <button class="btnComment">New Add Comment</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Newsfeed Common Side Bar Right
            ================================================= -->
            <div class="col-md-2 static">
                <div class="suggestions" id="sticky-sidebar">
                    <h4 class="grey">Who to Follow</h4>
                    <div class="follow-user">
                        <img src="images/users/user-11.jpg" alt="" class="profile-photo-sm pull-left" />
                        <div>
                            <h5><a href="timeline.html">Diana Amber</a></h5>
                            <a href="#" class="text-green">Add friend</a>
                        </div>
                    </div>
                    <div class="follow-user">
                        <img src="images/users/user-12.jpg" alt="" class="profile-photo-sm pull-left" />
                        <div>
                            <h5><a href="timeline.html">Cris Haris</a></h5>
                            <a href="#" class="text-green">Add friend</a>
                        </div>
                    </div>
                    <div class="follow-user">
                        <img src="images/users/user-13.jpg" alt="" class="profile-photo-sm pull-left" />
                        <div>
                            <h5><a href="timeline.html">Brian Walton</a></h5>
                            <a href="#" class="text-green">Add friend</a>
                        </div>
                    </div>
                    <div class="follow-user">
                        <img src="images/users/user-14.jpg" alt="" class="profile-photo-sm pull-left" />
                        <div>
                            <h5><a href="timeline.html">Olivia Steward</a></h5>
                            <a href="#" class="text-green">Add friend</a>
                        </div>
                    </div>
                    <div class="follow-user">
                        <img src="images/users/user-15.jpg" alt="" class="profile-photo-sm pull-left" />
                        <div>
                            <h5><a href="timeline.html">Sophia Page</a></h5>
                            <a href="#" class="text-green">Add friend</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer
================================================= -->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="footer-wrapper">
                <div class="col-md-3 col-sm-3">
                    <a href=""><img src="images/mylogo.png" alt="" class="footer-logo" /></a>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h6>Contact Us</h6>
                    <ul class="contact">
                        <li><i class="icon ion-ios-telephone-outline"></i>+1 (234) 222 0754</li>
                        <li><i class="icon ion-ios-email-outline"></i>info@mum.edu</li>
                        <li><i class="icon ion-ios-location-outline"></i>1000 North 4th Street IA, USA</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<!--preloader-->
<div id="spinner-wrapper">
    <div class="spinner"></div>
</div>

<!-- Scripts
================================================= -->
<!--<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>-->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky-kit.min.js"></script>
<script src="js/jquery.scrollbar.min.js"></script>
<script src="js/script.js"></script>
<script src="js/addcomment.js"></script>
<!--<script src="js/timeline.js"></script>-->
<script src="js/post.on.newsfeed.js"></script>
<script src="js/showPost_timeline.js"></script>
<!--<script src="servicerest/post.display.timeline.js"></script>-->
</body>
</html>
