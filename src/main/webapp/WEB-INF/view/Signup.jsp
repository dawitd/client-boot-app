<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is social network html5 template available in themeforest......" />
    <meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
    <meta name="robots" content="index, follow" />
    <title>SignUp</title>

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
            <h6 class="text-white">welcome to habari</h6>
            <h2 class="text-white">SignUp Here</h2>
            <div class="line-divider"></div>
            <div class="form-wrapper">
                <form >
                    <p class="signup-text">SignUp now and meet awesome people around the world</p>
                    <fieldset class="form-group">
                        <input type="text" class="form-control" id="firstName" placeholder="Enter firstName">
                    </fieldset>
                    <fieldset class="form-group">
                        <input type="text" class="form-control" id="lastName" placeholder="Enter lastName">
                    </fieldset>
                    <fieldset class="form-group">
                        <input type="text" class="form-control" id="email" placeholder="Enter email">
                    </fieldset>
                    <fieldset class="form-group">
                        <input type="text" class="form-control" id="username" placeholder="Enter username">
                    </fieldset>

                    <fieldset class="form-group">
                        <input type="password" class="form-control" id="password" placeholder="Enter a password">
                    </fieldset>

<%--                    <button class="btn-secondary" id="create_account"><a href="login">SignUp</a></button>--%>


                </form>
                <button class="btn-secondary" id="create_account">SignUp</button>



            </div>
            <div id="feedback"></div>

            <a href="login">Click Here to login</a>
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
<script src="servicerest/create_account.js"></script>
<script src="js/script.js"></script>

</body>
</html>
