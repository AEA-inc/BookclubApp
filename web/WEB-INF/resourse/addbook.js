$(function (){
    $("btn").click(addBook)
    function addBook(){
        var isbn1=$('#isbn').val();
        var Title= $('#Ttl').val();
        var Price1 = $('#prc').val();
        var Author=$('#Aut').val();
        var Book= {isbn:isbn1, bookTitle:Title, author:Author, price:Price1}};
    $.post('/books', {Book: JSON.stringify(Book)}, success, "json");
    function success(data){
        var td0=$('<td>').text(data.isbn);
        var td1 = $('<td>').text(data.bookTitle);
        var td2 = $('<td>').text(data.author);
        var td3=$('<td>').text(data.price)
        var tr = $('<tr>').append(td0).append(td1).append(td2).append(td3);
        $('#book_body>tbody').append(tr);
    }


})