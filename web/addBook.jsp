<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KB
  Date: 6/14/2020
  Time: 5:12 PM
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
    />    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AddBook</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="addbook.js" type="text/javascript"></script>
</head>
<body>

<%--<%--%>
<%--    String book = "book";--%>
<%--    if (request.getAttribute("books") != null) {--%>
<%--        book = (String) request.getAttribute("books");--%>
<%--    }--%>
<%--%>--%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
    </div>
</nav>

<div  class="container">
    <form>
        <div class="form-group">
            <label for="isbn">Book isbn </label>
            <input  name="isbn" type="Title" class="form-control" id="isbn" placeholder="isbn">
        </div>
        <div class="form-group">
            <label for="Ttl">Book Title</label>
            <input  name="book_title" type="Title" class="form-control" id="Ttl" placeholder="Title">
        </div>
        <div class="form-group">
            <label for="Aut">Author</label>
            <input name="author" type="Author" class="form-control" id="Aut" placeholder="Author">
        </div>
        <div class="form-group">
            <label for="prc">Price</label>
            <input name="price" type="price" class="form-control" id="prc">
        </div>
        <input id="btn_add" type="submit" value="Submit" />
    </form>
    <span id="span"></span>
</div>





<div class="container">

    <table id="book_body" class="table table-striped">
        <thead>
        <tr>
            <th>Book ID</th>
            <th>Book Title</th>
            <th>Author</th>
            <th>Price</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
<%--        <jsp:useBean id="books" class="Model.Book"/>--%>
<c:set value="${books}" var="bk"></c:set>

        <c:forEach var="book" items="${bk}" >
            <tr>
                <td><c:out value="${book.isbn}" /></td>
                <td><c:out value="${book.bookTitle}" /></td>
                <td><c:out value="${book.author}" /></td>
                <td><c:out value="${book.price}" /></td>
                <td><input type="button" value="delete" /> </td>
                <td> <input type="button" value="edit" />></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<footer class="page-footer font-small">
    <div class="footer-copyright text-center py-3">&copy; 2020 Copyright:
        <a class="text-light" href="#"> CS472 Final Project</a>
    </div>
</footer>
</body>
</html>