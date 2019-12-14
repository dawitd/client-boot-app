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
<%--    <!--Google Webfont-->--%>
<%--    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700' rel='stylesheet' type='text/css'>--%>
<%--    <!--Favicon-->--%>
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
                                    <h6>New profile picture</h6>

                                </div>
                            </div>

                            <!-------------------------------update picture ------------>
<%--                            <img id="p_image2" src="images/users/user-1.jpg" width="160px" height="160px" class="avatar img-circle" alt="avatar">--%>
                            <div class="modal-follow-body">
                                <div id="feed1"></div>

                                <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
                                    <input type="hidden" class="form-control" id="user_id" value="15"/>

                                    <input type="file" class="form-control" ID="profilepic_edit" name="file" /><br/>
                                    <input type="submit" ID="btn" value="Upload Pic" class="btn btn-primary" />

                                </form>



                                <h4 class="grey">Update your profile</h4>

                            <form class="contact-form">
                                <input id="id" type="hidden" class="form-control"  value="">


                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="firstName" type="text" class="form-control" placeholder="first name" value="">

                                </div>
                                <div class="form-group">
                                    <i class="icon ion-person"></i>
                                    <input id="lastName" type="text" class="form-control" placeholder="last name" value="">
                                </div>
                                <div class="form-group">
                                    <select id="gender" class="form-control">
                                        <option>choose gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-email"></i>
                                    <input id="email" type="text" class="form-control" placeholder="email" value="" >
                                </div>
                                <div class="form-group">
                                    <i class="icon ion-android-call"></i>
                                    <input id="phoneNumber" type="text"  class="form-control" placeholder="phone number" value="">
                                </div>
                                <div class="form-group">
                                    <input id="addressState" type="text"  class="form-control" placeholder="State" value="">
                                </div>
                                <div class="form-group">
                                    <input id="addressCity" type="text"  class="form-control" placeholder="City" value="">
                                </div>
                                <div class="form-group">
                                    <textarea id="bio" class="form-control" placeholder="Short Bio" rows="4" value=""></textarea>
                                </div>


                            </form>
                                <button class="btn-primary" id="save_updates">update Profile</button>
                                <div id="feedback"></div>
                        </div>
                        <div class="col-md-4 col-sm-5">
                            <a href="newsfeed.html" class="logo"><img src="images/mylogo.png" alt="Friend Finder"/></a>
                            <h4 class="grey">Reach Us</h4>
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
<%--    <script src="servicerest/updateprofile.js"></script>--%>
    <script src="servicerest/update_my_profile.js"></script>
    <script src="servicerest/uploadpic.js"></script>
<script src="js/script.js"></script>
</body>
</html>
