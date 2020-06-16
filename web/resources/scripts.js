(function(){
    window.onload= function() {
        let checkoutButton = document.getElementById("checkout");
        checkoutButton.onclick = checkoutValues;

    }
    let isbn;
    let title;
    let author;
    let checkoutdate;
    function checkoutValues(event) {
        event.preventDefault();
        isbn = document.getElementById("bookISBN");
        title = document.getElementById("bookTitle");
        author = document.getElementById("authorName");
        checkoutdate = document.getElementById("datetimepicker1");

        let memberCheckout = {"isbn":isbn.value,"title":title.value, "author":author.value,"checkoutdate":checkoutdate.value};
        $.ajax({
            type: 'POST',
            url: 'checkout',
            data: {memberCheckout:JSON.stringify(memberCheckout)},
            success: function(){
                alert("success: book checked out");
            },

            error: function () {
                alert("fail");
            }
        });
    }

})($);