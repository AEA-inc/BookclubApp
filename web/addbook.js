$(function (){
    $("#btn_add").click(addBook);
        function addBook() {
            let isbn1 = $('#isbn').val();
            console.log(isbn1)
            let Title = $('#Ttl').val();
            let Price1 = $('#prc').val();
            let Author = $('#Aut').val();
            const book = {isbn: isbn1, bookTitle: Title, author: Author, price: Price1};
            $.post('book', {book: JSON.stringify(book)}, success, "json");
            //const order=JSON.stringify(Book);
            // $.ajax({
            //     type: 'POST',
            //     url: 'book',
            //     data: {book:JSON.stringify(book)},
            //     dataType: 'json',
            //     success: success,
            //
            //
            //     error: function () {
            //         alert("what");
            //     }
            // });

        }
    function success(data){
      // $("#span").textContent="yeyeyeye";
       let td0=$('<td>').text(data.isbn);
       let td1 = $('<td>').text(data.bookTitle);
        let td2 = $('<td>').text(data.author);
        let td3=$('<td>').text(data.price);

        let tr = $('<tr>').append(td0).append(td1).append(td2).append(td3);
        $('#book_body > tbody').append(tr);
    }


  //  $.post('book', {Book: JSON.stringify(Book)}, success, "json");

});