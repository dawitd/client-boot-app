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
    <div id="map" class="map contact-map"></div>
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
                                    <img src="images/users/user-1.jpg" id="p_image2" alt="" class="img-responsive profile-photo" width="160px" height="160px" />
                                    <h6><spring:message code="Newprofilepicture" text="default"/></h6>

                                </div>
                            </div>

                            <!-------------------------------update picture ------------>
<%--                            <img id="p_image2" src="images/users/user-1.jpg" width="160px" height="160px" class="avatar img-circle" alt="avatar">--%>
                            <div class="modal-follow-body">
                                <div id="feed1"></div>

                                <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
                                    <input type="hidden" class="form-control" id="user_id" value="1"/>

                                    <input type="file" class="form-control" ID="profilepic_edit" name="file" /><br/>
                                    <input type="submit" ID="btn_profile" value="submit" class="btn btn-primary" />

                                </form>



                                <h4 class="grey"><spring:message code="UpdateProfile" text="default"/></h4>

                            <form class="contact-form">
                                <input id="id" type="hidden" class="form-control"  value="">


                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="firstName" type="text" class="form-control" value="" placeholder="<spring:message code="Enter_firstName" text="default"/>" >

                                </div>
                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="lastName" type="text" class="form-control"   value="" placeholder="<spring:message code="Enter_lastName" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <select id="gender" class="form-control">
                                        <option><spring:message code="choosegender" text="default"/></option>
                                        <option value="male"><spring:message code="Male" text="default"/></option>
                                        <option value="female"><spring:message code="Female" text="default"/></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-email"></i>
                                    <input id="email" type="text" class="form-control" placeholder="<spring:message code="Email" text="default"/>" value="" >
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-android-call"></i>
                                    <input id="phoneNumber" type="text"  class="form-control"  value="" placeholder="<spring:message code="Phone_Number" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <input id="addressState" type="text"  class="form-control"  value="" placeholder="<spring:message code="State" text="default"/>" >
                                </div>
                                <div class="form-group">
                                    <input id="addressCity" type="text"  class="form-control"  value="" placeholder="<spring:message code="City" text="default"/>">
                                </div>
                                <div class="form-group">
                                    <textarea id="bio" class="form-control"  rows="4" value="" placeholder="<spring:message code="ShortBio" text="default"/>"></textarea>
                                </div>


                            </form>
                                <button class="btn-primary" id="save_updates"><spring:message code="UpdateProfile" text="default"/></button>
                                <div id="feedback"></div>
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

    <script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%--    <script src="servicerest/updateprofile.js"></script>--%>
    <script src="servicerest/update_my_profile.js"></script>
    <script src="servicerest/uploadpic.js"></script>
<script src="js/script.js"></script>
</body>
</html>
