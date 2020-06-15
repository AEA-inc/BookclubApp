<%--
  Created by IntelliJ IDEA.
  User:
  Date: 6/13/20
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>--%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="resources/style.css">
    <script src="resources/scripts.js"></script>
</head>
<div class="container">
    <br>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a href="#" class="navbar-brand">Shop For Fun
            <!--<img src="http://placehold.it/150x50?text=Logo" alt="Shop Logo">-->
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
    <hr>
    <div class="card bg-light">
        <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title mt-3 text-center">Create Account</h4>
            <form>
                <div class="form-group input-group">
                    <input name="firstname" id="firstname" class="form-control" placeholder="First Name" type="text">
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <input name="lastname" id="lastname" class="form-control" placeholder="Last Name" type="text">
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <input name="email" id="email" class="form-control" placeholder="Email address" type="email">
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <input name="password" id="password" class="form-control" placeholder="Create password" type="password">
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <input name="repassword" id="repassword" class="form-control" placeholder="Repeat password" type="password">
                </div> <!-- form-group// -->
                <div class="form-group">
                    <button type="submit" name="submit" id="btnregsubmit" class="btn btn-primary btn-block"> Create Account  </button>
                </div> <!-- form-group// -->
                <p class="text-center">Have an account? <a href="">Log In</a> </p>
            </form>
        </article>
    </div> <!-- card.// -->

</div>
<!--container end.//-->

<br><br>
<article class="bg-secondary mb-3">
    <div class="card-body text-center">

    </div>
    <br><br>
</article>
<footer class="page-footer font-small">
    <div class="footer-copyright text-center py-3">&copy; 2020 Copyright:
        <a class="text-light" href="#"> CS472 Final Project</a>
    </div>
</footer>
</body>
</html>
