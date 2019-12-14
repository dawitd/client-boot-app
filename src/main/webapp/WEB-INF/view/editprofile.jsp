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
    <title>Profile</title>

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
                <a class="navbar-brand" href="newsfeed"><img src="images/hlogo.png" alt="hlogo" /></a>
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

<div class="google-maps">
    <div class="map contact-map"></div>
</div>
<div id="page-contents">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="contact-us">
                    <div class="row">
                        <div class="col-md-8 col-sm-7">

                            <div class="col-md-3">
                                <div class="profile-info">
                                    <img src="images/users/user-1.jpg" alt="" class="img-responsive profile-photo" />
                                    <h6><spring:message code="Newprofilepicture" text="default"/></h6>

                                </div>
                            </div>

                            <h4 class="grey"><spring:message code="UpdateProfile" text="default"/></h4>
                            <form class="contact-form">
                                <div class="form-group">
                                    <i class="ion-images"></i>
                                    <input id="picture" name="picture" class="form-control" placeholder="<spring:message code="Uploadpicture" text="default"/>">
                                    <button class="btn-primary"><spring:message code="Browse" text="default"/></button>
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="firstname" type="text" name="firstname" class="form-control" placeholder="<spring:message code="Enter_firstName" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="lastname" type="text" name="lastname" class="form-control" placeholder="<spring:message code="Enter_lastName" text="default"/>" >
                                </div>
                                <div class="form-group">
                                    <select id="gender" class="form-control" name="gender">
                                        <option><spring:message code="choosegender" text="default"/></option>
                                        <option value="male"><spring:message code="Male" text="default"/></option>
                                        <option value="female"><spring:message code="Female" text="default"/></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-email"></i>
                                    <input id="email" type="text" name="email" class="form-control" placeholder="<spring:message code="Email" text="default"/>" >
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-android-call"></i>
                                    <input id="phonenumber" type="text" name="phone" class="form-control" placeholder="<spring:message code="Phone_Number" text="default"/>">
                                </div>

                                <div class="form-group">
                                    <input id="City" type="text" name="phone" class="form-control" placeholder="<spring:message code="City" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <input id="State" type="text" name="phone" class="form-control" placeholder="<spring:message code="State" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <textarea id="form-message" name="message" class="form-control" placeholder="<spring:message code="ShortBio" text="default"/>" rows="4"></textarea>
                                </div>
                            </form>
                            <button class="btn-primary"><spring:message code="UpdateProfile" text="default"/></button>
                        </div>
                        <div class="col-md-4 col-sm-5">
                            <a href="newsfeed" class="logo"><img src="images/mylogo.png" alt="Friend Finder"/></a>
                            <h4 class="grey"><spring:message code="ContactUs" text="default"/></h4>
                            <div class="reach"><span class="phone-icon"><i class="icon ion-android-call"></i></span><p>+1 (234) 222 0754</p></div>
                            <div class="reach"><span class="phone-icon"><i class="icon ion-email"></i></span><p>info@mum.edu</p></div>
                            <div class="reach"><span class="phone-icon"><i class="icon ion-ios-location"></i></span><p>1000 North 4th Street IA, USA</p></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- Scripts
================================================= -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>
