<%--
  Created by IntelliJ IDEA.
  User: kwizera
  Date: 13/06/2020
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="o"%>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous"
    />

<%--    <link rel="stylesheet" href="./resources/style.css" type="text/css" />--%>
    <title>Login</title>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <img src="http://placehold.it/150x50?text=Logo" alt="Shop Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
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
</div>
<main>
    <div class="container">

        <div class="jumbotron">
            <h1 class="display-4">Have Fun and Shop!</h1>
            <form action="login" method="post">
                <div class="form-group row">
                    <label for="userEmail" class="col-sm-2 col-form-label">User Name</label>
                    <div class="col-sm-10">
                        <input name="username" type="email" class="form-control" id="userEmail"  placeholder="Enter email">
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
            <span> <o:out value="${errmsg}"/></span>
        </div>
    </div>
</main>
<footer class="page-footer font-small">
    <div class="footer-copyright text-center py-3">&copy; 2020 Copyright:
        <a class="text-light" href="#"> CS472 Final Project</a>
    </div>
</footer>

</body>
</html>
