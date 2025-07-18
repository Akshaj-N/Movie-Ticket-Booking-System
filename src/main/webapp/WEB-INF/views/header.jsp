<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Big Cinemas</title>
        <!-- Template CSS -->
        <link rel="stylesheet" href="/assets/css/style-starter.css">
        <i style="font-size:24px" class="fa">&#xf008;</i>
        <!-- Template CSS -->
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
        <!-- Template CSS -->
        <script src="/js/jquery-3.5.1.js" type="text/javascript"></script>
        <script>
            $(function () {
                $("#email").blur(function () {
                    $.get("verify", {'userid': $(this).val()}, function (output) {
                        if (output.trim() == "no") {
                            $("#err").html("Userid is not available");
                        } else {
                            $("#err").html("");
                        }
                    });
                });
            });
        </script>

    </head>

    <body>

        <!-- header -->
        <header id="site-header" class="w3l-header fixed-top">
            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="/"><span class="fa fa-film icon-log"
                                                                        aria-hidden="true"></span>
                            Big Cinemas </a></h1>
                    <!-- if logo is image enable this   
                                    <a class="navbar-brand" href="#index.html">
                                            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                    </a> -->
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <!-- <span class="navbar-toggler-icon"></span> -->
                        <span class="fa icon-expand fa-bars"></span>
                        <span class="fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="/">Home</a>
                            </li>
                            <c:choose>
                            <c:when test="${sessionScope.user ne null }">
                                <li class="nav-item">
                                    <a class="nav-link" href="/bhistory">My Bookings</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link">Welcome, ${sessionScope.user.uname}.</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/logout">Logout</a>
                                </li>
                           </c:when>
                           <c:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="/login">Login</a>                                              
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/register">Register</a>                             
                                </li>
                           </c:otherwise>
                           </c:choose>
                        </ul>


                    </div>


                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="mobile-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
                </div>
            </nav>
            <!--//nav-->
        </header>
        <!-- //header -->
