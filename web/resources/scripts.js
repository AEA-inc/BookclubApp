$(function () {
    $('#datetimepicker1').dateTime;
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
            var member = {firstName:fname, lastName:lname,emailAdd:email,password:password};
            $ajax({
                url:'RegisterServlet.jsp',
                type:'POST',
                data:{member:JSON.stringify(member)},
                dataType: "json",
                success:function (response) {alert("success")},
                error:function (response) {
                    alert("Error:Timeout please try again later");
                },
            });


            //$.post('member',{member: JSON.stringify(member)},"json")
        }


    })//end of register










});