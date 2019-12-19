<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                    <li class="dropdown"><a href="newsfeed"><spring:message code="Home" text="default"/></a></li>
                    <li class="dropdown"><a href="timeline"><spring:message code="Timeline" text="default"/></a></li>
                    <li class="dropdown"><a href="profile"><spring:message code="Profile" text="default"/></a></li>
                    <li class="dropdown"><a href="login"><spring:message code="Logout" text="default"/></a></li>
                </ul>


                <form class="navbar-form navbar-right hidden-sm">
                    <div class="form-group">
                        <i class="icon ion-android-search"></i>
                        <input type="text" class="form-control" placeholder="<spring:message code="Search" text="default"/>">
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
                    <h5><a href="timeline" class="text-white">Sarah Cruiz</a></h5>
                    <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 12 <spring:message code="followers" text="default"/></a>
                </div><!--profile card ends-->
                <ul class="nav-news-feed">
                    <li><i class="icon ion-ios-paper"></i><div><a href="newsfeed"><spring:message code="My_Newsfeed" text="default"/></a></div></li>

                    <li><i class="icon ion-ios-people-outline"></i><div><a href="#"><spring:message code="Friends" text="default"/></a></div></li>
                    <li><i class="icon ion-images"></i><div><a href="#"><spring:message code="Images" text="default"/></a></div></li>
                    <li><i class="icon ion-ios-videocam"></i><div><a href="#"><spring:message code="Videos" text="default"/></a></div></li>
                </ul><!--news-feed links ends-->
                <!--news-feed links ends-->

            </div>
            <div class="col-md-7">

                <!-- Post Create Box
                ================================================= -->
                <div class="create-post">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <div class="form-group">
                                <input id="person_id" type="hidden" value="1">
                                <img src="images/users/user-1.jpg" alt="" class="profile-photo-md" />


                                <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
<%--                                    <input type="hidden" class="form-control" id="user_id" value="15"/>--%>
    <textarea id="postText" cols="30" rows="1" class="form-control" /></textarea>

                                    <input type="file" class="form-control" ID="profilepic_edit" name="file" /><br/>

<%--    value="<spring:message code="Browse" text="default"/>--%>
                                     <input type="submit" ID="post_upload_btn" class="btn btn-primary" value="Save Post"/>
                                </form>




                            </div>
                        </div>
                        <div class="col-md-5 col-sm-5">
                            <div class="tools">
                                <ul class="publishing-tools list-inline">
                                    <li><a href="#"><i class="ion-compose"></i></a></li>
                                    <li><a href="#"><i class="ion-images"></i></a></li>
                                    <li><a href="#"><i class="ion-ios-videocam"></i></a></li>

                                </ul>

                                <button class="btn btn-primary pull-right" id="btn-post"><spring:message code="Post" text="default"/></button>

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
                    <h4 class="grey"><spring:message code="Who_to_Follow" text="default"/></h4>

                </div>
            </div>
        </div>
    </div>
</div>



<!--preloader-->
<div id="spinner-wrapper">
    <div class="spinner"></div>
</div>

<!-- Scripts
================================================= -->


<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky-kit.min.js"></script>
<script src="js/jquery.scrollbar.min.js"></script>
<script src="servicerest/postnewsfeed.js"></script>
<script src="js/script.js"></script>
<script src="js/addcomment.js"></script>
<!--<script src="js/timeline.js"></script>-->
<script src="js/post.on.newsfeed.js"></script>
<script src="js/showPost_timeline.js"></script>
<script src="servicerest/custom.js"></script>
<!--<script src="servicerest/post.display.timeline.js"></script>-->
</body>
</html>
