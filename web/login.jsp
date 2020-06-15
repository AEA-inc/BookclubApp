<%--
  Created by IntelliJ IDEA.
  User: kwizera
  Date: 13/06/2020
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous"
    />

    <link rel="stylesheet" href="./resources/style.css" type="text/css" />
    <title>Login</title>
</head>
<body>
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
                <a href="index.jsp" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Sign Up</a>
            </li>
        </ul>
    </div>

</nav>
<main>
    <div class="container">

        <div class="jumbotron">
            <h1 class="display-4">login and Shop!</h1>
            <form>
                <div class="form-group row">
                    <label for="userEmail" class="col-sm-2 col-form-label">User Name</label>
                    <div class="col-sm-10">
                        <input name="username" type="email" class="form-control" id="userEmail" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="userRole" class="col-sm-2 col-form-label">User Role</label>
                    <div class="col-sm-10">
                        <select name="role" class="form-control" id="userRole">
                            <option>Member</option>
                            <option>Admin</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="userPassword" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                        <input name="password" type="password" class="form-control" id="userPassword" placeholder="Password">
                    </div>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
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
