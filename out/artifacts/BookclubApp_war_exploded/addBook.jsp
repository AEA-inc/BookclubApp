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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AddBook</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="resource/addbook.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <header> Addbook</header>
</div>
<div  class="container">
    <form>
        <div class="form-group">
            <label for="isbn">Book isbn </label>
            <input  name="book_title" type="Title" class="form-control" id="isbn" placeholder="isbn">
        </div>
        <div class="form-group">
            <label for="Ttl">Book Title</label>
            <input  name="book_title" type="Title" class="form-control" id="Ttl" placeholder="Title">
        </div>
        <div class="form-group">
            <label for="Aut">Author</label>
            <input type="Author" class="form-control" id="Aut" placeholder="Author">
        </div>
        <div class="form-group">
            <label for="prc">Price</label>
            <input type="password" class="form-control" id="prc">
        </div>
        <button id="btn" type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>





<div class="container">

    <table id="book_body" class="table table-striped">
        <thead>
        <tr>
            <th>Book ID</th>
            <th>Book Title</th>
            <th>Author</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
<%--        <c:forEach items="${book}" var="Book">--%>
<%--            <tr>--%>
<%--                <td><c:out value="${.id}" /></td>--%>
<%--                <td><c:out value="${product.name}" /></td>--%>
<%--                <td><c:out value="${product.price}" /></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>b--%>

        </tbody>
    </table>
</div>
</div>
</body>
</html>
