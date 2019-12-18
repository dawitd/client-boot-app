<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is social network html5 template available in themeforest......" />
    <meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
    <meta name="robots" content="index, follow" />
    <title>About Me</title>

    <!-- Stylesheets
    ================================================= -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/ionicons.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
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
                <a class="navbar-brand" href="timeline"><img src="images/hlogo.png" alt="hlogo" /></a>
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

<div class="container">

    <!-- Timeline
    ================================================= -->
    <div class="timeline">
        <div class="timeline-cover">

            <!--Timeline Menu for Large Screens-->
            <div class="timeline-nav-bar hidden-sm hidden-xs">
                <div class="row">
                    <div class="col-md-3">
                        <div class="profile-info">
                            <img src="" alt="" class="img-responsive profile-photo" id="p_image2" />
                            <h3 id="names"></h3>

                        </div>
                    </div>
                    <div class="col-md-9">
                        <ul class="list-inline profile-menu">
                            <li><a href="timeline" class="active"><spring:message code="Timeline" text="default"/></a></li>

                            <li><a href="timeline-friends"><spring:message code="followers" text="default"/></a></li>
                        </ul>
                        <ul class="follow-me list-inline">
                            <li>12 <spring:message code="followers" text="default"/></li>
                            <li><button class="btn-primary" id="view_data"><a href="editprofile" class="text-white"><spring:message code="Edit_Profile" text="default"/></a></button></li>
<%--                            <button class="btn-primary" id="view_data">view Profile</button>--%>
                        </ul>
                    </div>
                </div>
            </div><!--Timeline Menu for Large Screens End-->

        </div>
        <div id="page-contents">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-7">

                    <!-- About
                    ================================================= -->
                    <div class="about-profile">
                        <div class="about-content-block">
                            <h4 class="grey"><i class="ion-ios-information-outline icon-in-title"></i><spring:message code="Personal_Information" text="default"/></h4>
                            <div class="organization">

                                <div class="work-info">
                                    <h5><spring:message code="Gender" text="default"/> </h5>
                                    <p id="gender"></p>
                                </div>
                            </div>

                            <div class="organization">

                                <div class="work-info">
                                    <h5><spring:message code="Phone_Number" text="default"/> </h5>
                                    <p id="phoneNumber"></p>
                                </div>
                            </div>

                            <div class="organization">

                                <div class="work-info">
                                    <h5><spring:message code="Email" text="default"/> </h5>
                                    <p id="email"></p>
                                </div>
                            </div>

                        </div>

                        <div class="about-content-block">

                            <h4 class="grey"><i class="ion-ios-briefcase-outline icon-in-title"></i><spring:message code="Biography" text="default"/></h4>
                            <p id="bio"></p>

                        </div>



                        <div class="about-content-block">
                            <h4 class="grey"><i class="ion-ios-location-outline icon-in-title"></i><spring:message code="Address" text="default"/></h4>
                            <p id="address"></p>

                        </div>
                        <div class="about-content-block">
                            <video controls id="videodisplay">
                                <source type="video/mp4" src="" >
                            </video>
                        </div>
                    <!-------------- this is  tes for ---------->
                        <div id="allPerson"></div>

                        <button class="btn-primary" id="save_updates">view all test</button>
                        <div id="feedback"></div>



                        <!-------------- this is  tes for ---------->


                    </div>
                </div>
                <div class="col-md-2 static">
                <div id="sticky-sidebar">
                    <h4 class="grey"><spring:message code="activity" text="default"/></h4>
                    <div class="feed-item">
                        <div class="live-activity">
                            <p><a href="#" class="profile-link"><spring:message code="activity" text="default"/></a> Commended on a Photo</p>
                            <p class="text-muted">5 mins ago</p>
                        </div>
                    </div>
                    <div class="feed-item">
                        <div class="live-activity">
                            <p><a href="#" class="profile-link"><spring:message code="activity" text="default"/></a> Has posted a photo</p>
                            <p class="text-muted">an hour ago</p>
                        </div>
                    </div>
                    <div class="feed-item">
                        <div class="live-activity">
                            <p><a href="#" class="profile-link"><spring:message code="activity" text="default"/></a> Liked her friend's post</p>
                            <p class="text-muted">4 hours ago</p>
                        </div>
                    </div>
                    <div class="feed-item">
                        <div class="live-activity">
                            <p><a href="#" class="profile-link"><spring:message code="activity" text="default"/></a> has shared an album</p>
                            <p class="text-muted">a day ago</p>
                        </div>
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
                    <h6><spring:message code="ContactUs" text="default"/></h6>
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


<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky-kit.min.js"></script>
<script src="js/jquery.scrollbar.min.js"></script>
<script src="servicerest/viewprofile.js"></script>
<script src="servicerest/get_all_person.js"></script>
<script src="js/script.js"></script>

</body>
</html>
