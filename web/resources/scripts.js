$(function () {
    $('#datetimepicker1').dateTime;

//Slider
    // Activate carousel
    // $("#myCarousel").carousel();
    //
    //     // Enable carousel control
    //     $(".carousel-control-prev").click(function () {
    //         $("#myCarousel").carousel('prev');
    //     });
    //     $(".carousel-control-next").click(function () {
    //         $("#myCarousel").carousel('next');
    //     });
    //
    //     // Enable carousel indicators
    //     $(".slide-one").click(function () {
    //         $("#myCarousel").carousel(0);
    //     });
    //     $(".slide-two").click(function () {
    //         $("#myCarousel").carousel(1);
    //     });
    //     $(".slide-three").click(function () {
    //         $("#myCarousel").carousel(2);
    //     });
    //     $(".slide-four").click(function () {
    //         $("#myCarousel").carousel(3);
    //     });

//submit member registration info
    $('#btnregsubmit').click(function(){
        var fname = $("#firstname").val();
        var lname = $("#lastname").val();
        var email = $("#email").val();
        var password = $("#password").val();
        var conpassword = $("#repassword").val();
        var pas;
        if ((fname == null || fname == "")||(lname == null || lname == "")
            ||(email == null || email == "")||(CheckPassword(password)==false)||password==""||(password != conpassword))
        {
            return false;
        }else{
            addMember();
        }

        function CheckPassword(inputtxt) {
            var re = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;
            return (re.test(inputtxt));

        }
        function addMember(){

           // var member = {firstName:fname, lastName:lname,emailAdd:email,password:password};
            $.ajax("member", {
                "type": "POST",
                "data": {
                    "fname": fname,"lname":lname,"email":email,"password":password,
                    "action":"addmember"
                }
            }) .done(function (response) {
                let me = $(this);
                $("#success_msg ").html("");
                $("#success_msg").css("display","block")
                    .append($("<span>").css("colot","white").
                    text(JSON.parse(response).prodName+"Successfully removed from your cart!"));
                $(this).css("color","red")
                alert($(this).html())
                event.preventDefault();
            })
                .fail(function (xhr, status, exception) {
                    console.log(xhr, status, exception);
                    //  alert("err")
                });
        }
    })//end of register

});