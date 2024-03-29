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
    <title>login</title>

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

<!-- Top Banner
================================================= -->
<section id="banner">
    <div class="container">

        <!-- Sign Up Form
        ================================================= -->

        <div class="sign-up-form">
            <a href="login" class="logo"><img src="images/mylogo.png" alt="Friend Finder"/></a>





            <h6 class="text-white"> <spring:message code="welcome.message" text="default"/> to Habari</h6>
            Language : <a href="?lang=eng">English</a>|<a href="?lang=sw">Swahili</a>
            <h2 class="text-white"><spring:message code="LoginHere" text="default"/></h2>


            <div class="line-divider"></div>
            <a href="go_login" id="google-button" class="btn btn-block btn-social btn-google">

                <i class="fa fa-google"></i> <spring:message code="Sign_in_with" text="default"/> Google
            </a>
            <div class="line-divider"></div>
            <a href="fb_login" id="facebook-button" class="btn btn-block btn-social btn-facebook">
                <i class="fa fa-facebook"></i> <spring:message code="Sign_in_with" text="default"/> Facebook
            </a>

            <c:if test="${not empty error}">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>

            <div class="form-wrapper">
                <form action="login" modelAttribute="person" method="post" >
                    <fieldset class="form-group">
 
                        <input type="text" class="form-control" name="username" id="username" placeholder="<spring:message code="Enter_username" text="default"/>">
                    </fieldset>

                    <fieldset class="form-group">
                        <input type="password" class="form-control" name="password" id="password" placeholder="<spring:message code="Enter_a_password" text="default"/>">
 
                    </fieldset>

                    <button class="btn-secondary" type="submit" ><spring:message code="login" text="default"/></button>
                </form>

            </div>
            <p class="signup-text"><spring:message code="login_now_and_meet_awesome_people_around_the_world" text="default"/></p>

            <a href="Signup"><spring:message code="Click_Here_to_Signup" text="default"/></a>
            <img class="form-shadow" src="images/bottom-shadow.png" alt="" />
        </div><!-- Sign Up Form End -->

        <svg class="arrows hidden-xs hidden-sm">
            <path class="a1" d="M0 0 L30 32 L60 0"></path>
            <path class="a2" d="M0 20 L30 52 L60 20"></path>
            <path class="a3" d="M0 40 L30 72 L60 40"></path>
        </svg>
    </div>
</section>

<!-- Features Section
================================================= -->
<section id="features">
    <div class="container wrapper">
        <h2 class="sub-title">find awesome people like you</h2>
    </div>
</section>

<!-- Facts Section
================================================= -->
<section id="site-facts">
    <div class="container wrapper">
        <div class="circle">
            <ul class="facts-list">
                <li>
                    <div class="fact-icon"><i class="icon ion-ios-people-outline"></i></div>
                    <h3 class="text-white">1,01,242</h3>
                    <p>People registered</p>
                </li>
                <li>
                    <div class="fact-icon"><i class="icon ion-images"></i></div>
                    <h3 class="text-white">21,01,242</h3>
                    <p>Posts published</p>
                </li>
                <li>
                    <div class="fact-icon"><i class="icon ion-checkmark-round"></i></div>
                    <h3 class="text-white">41,242</h3>
                    <p>People online</p>
                </li>
            </ul>
        </div>
    </div>
</section>

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
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.appear.min.js"></script>
<script src="js/jquery.incremental-counter.js"></script>
<script src="js/script.js"></script>

</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#locales").change(function () {
            var selectedOption = $('#locales').val();
            if (selectedOption != ''){
                window.location.replace('international?lang=' + selectedOption);
            }
        });
    });
</script>

</html>
