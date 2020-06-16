<%--
  Created by IntelliJ IDEA.
  User: Kwizera
  Date: 6/12/2020
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Contact App</title>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous"
    />

    <link rel="stylesheet" href="./resources/style.css" type="text/css" />
</head>
<body>

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a href="#" class="navbar-brand">Enjoy Reading
            <!--<img src="http://placehold.it/150x50?text=Logo" alt="Bookclub logo">-->
        </a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="#" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Sign Up</a>
                </li>
            </ul>
        </div>

    </nav>
<main>
    <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li class="slide-one"></li>
            <li class="slide-two"></li>
            <li class="slide-three"></li>
            <li class="slide-four"></li>

        </ol>
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/resources/images/img4.png" alt="First Slide" width="200" height="280">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="resources/images/img2.png" alt="Second Slide" width="200" height="280">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="resources/images/img3.png" alt="Third Slide" width="200" height="280">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="resources/images/img4.png" alt="Fourth Slide" width="200" height="280">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control-prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</main>

<footer class="page-footer font-small">
    <div class="footer-copyright text-center py-3">&copy; 2020 Copyright:
        <a class="text-light" href="#"> CS472 Final Project</a>
    </div>
</footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</body>
</html>

