<%--
  Created by IntelliJ IDEA.
  User: kwizera
  Date: 14/06/2020
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bootstrap 4 Introduction</title>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./resources/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="scripts/moment-2.4.0.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
    <script src="./resources/scripts.js"></script>
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
                <a class="nav-link" href="#">Checkout Book</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">View Books</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Checkin Books</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Cart</a>
            </li>
        </ul>
    </div>

</nav>
<main>
    <div class="container">

        <div class="jumbotron">
            <h1 class="display-4">Checkout Book</h1>
            <form>
                <div class="form-group row">
                    <label for="bookISBN" class="col-sm-2 col-form-label">Book ISBN</label>
                    <div class="col-sm-10">
                        <input name="isbn" type="text" class="form-control" id="bookISBN" aria-describedby="bookISBN" placeholder="Enter Book ISBN">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="bookTitle" class="col-sm-2 col-form-label">Book Title</label>
                    <div class="col-sm-10">
                        <input name="bookName" type="text" class="form-control" id="bookTitle" aria-describedby="bookHelp" placeholder="Enter Book Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="authorName" class="col-sm-2 col-form-label">Author</label>
                    <div class="col-sm-10">
                        <input  name="author" class="form-control" id="authorName" aria-describedby="authorHelp" placeholder="Enter Book Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="copyNumber" class="col-sm-2 col-form-label">Number of copy</label>
                    <div class="col-sm-10">
                        <input name="copies" type="text" class="form-control" id="copyNumber" placeholder="Enter number of copy">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="copyNumber" class="col-sm-2 col-form-label">Choose Date</label>
                    <div class='col-sm-10'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text' class="form-control" />
                                <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Checkout</button>
            </form>
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