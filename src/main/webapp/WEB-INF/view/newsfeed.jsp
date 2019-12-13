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
                                <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-5">
                            <div class="tools">
                                <ul class="publishing-tools list-inline">
                                    <li><a href="#"><i class="ion-compose"></i></a></li>
                                    <li><a href="#"><i class="ion-images"></i></a></li>
                                    <li><a href="#"><i class="ion-ios-videocam"></i></a></li>

                                </ul>
                                <button class="btn btn-primary pull-right">Post</button>
                            </div>
                        </div>
                    </div>
                </div><!-- Post Create Box End-->

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
                    <img src="images/post-images/1.jpg" alt="post-image" class="img-responsive post-image" />
                    <div class="post-container">
                        <img src="images/users/user-5.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">Alexis Clark</a> <span class="following">following</span></h5>
                                <p class="text-muted">Published a photo about 3 mins ago</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 13</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-11.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-4.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">John</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" class="form-control" placeholder="Post a comment">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
                    <video class="post-video" controls> <source src="videos/8.mp4" type="video/mp4"> </video>
                    <div class="post-container">
                        <img src="images/users/user-3.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">Sophia Lee</a> <span class="following">following</span></h5>
                                <p class="text-muted">Updated her status about 33 mins ago</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 75</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 8</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-14.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Olivia </a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <i class="em em-anguished"></i> Ut enim ad minim veniam, quis nostrud </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Sarah</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-2.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Linda</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" class="form-control" placeholder="Post a comment">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
                    <div class="post-container">
                        <img src="images/users/user-2.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">Linda Lohan</a> <span class="following">following</span></h5>
                                <p class="text-muted">Published a photo about 1 hour ago</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 23</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 4</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p><i class="em em-thumbsup"></i> <i class="em em-thumbsup"></i> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-12.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Cris </a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam <i class="em em-muscle"></i></p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" class="form-control" placeholder="Post a comment">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
                    <img src="images/post-images/2.jpg" alt="post-image" class="img-responsive post-image" />
                    <div class="post-container">
                        <img src="images/users/user-4.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">John Doe</a> <span class="following">following</span></h5>
                                <p class="text-muted">Published a photo about 2 hour ago</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 39</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 2</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt</p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-13.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Brian </a>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-8.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Richard</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" class="form-control" placeholder="Post a comment">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
                    <div class="google-maps">
                        <div id="map" class="map"></div>
                    </div>
                    <div class="post-container">
                        <img src="images/users/user-3.jpg" alt="user" class="profile-photo-md pull-left" />
                        <div class="post-detail">
                            <div class="user-info">
                                <h5><a href="timeline.html" class="profile-link">Sophia Lee</a> <span class="following">following</span></h5>
                                <p class="text-muted"><i class="icon ion-ios-location"></i> Went to Niagara Falls today</p>
                            </div>
                            <div class="reaction">
                                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 17</a>
                                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-text">
                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
                            </div>
                            <div class="line-divider"></div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <p><a href="timeline.html" class="profile-link">Sarah </a>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. <i class="em em-blush"></i> <i class="em em-blush"></i> </p>
                            </div>
                            <div class="post-comment">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                                <input type="text" class="form-control" placeholder="Post a comment">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Post Content
                ================================================= -->
                <div class="post-content">
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
                                <input type="text" class="form-control" placeholder="Post a comment">
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
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky-kit.min.js"></script>
<script src="js/jquery.scrollbar.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>
