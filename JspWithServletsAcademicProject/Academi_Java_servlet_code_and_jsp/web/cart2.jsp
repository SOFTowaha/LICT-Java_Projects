<%-- 
    Document   : cart1
    Created on : 9 Nov, 2013, 11:23:38 AM
    Author     : Ashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
    </head>
    
    <body> 
    <center>
        <br><br>
        <h1> Thanks For your interest in NMIT online music portal</h1>
        <h4> You are about to purchase Hindi movie mixed album songs </h4>
        <h3> cash Payable is 200.Rs  </h3>
        <h5> Please Enter your Details Below </h5>
        <form method="post" name="frm" action="cartprocess1.jsp" onSubmit="return validate()">
            <table border="1" width="30%">
                <thread>
                    <tr>
                        <th colspan="2">Enter your Details</th>
                    </tr>
                </thread>
                     <tr>
                        <td>Name </td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>full address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>city</td>
                        <td><input type="text" name="city" value="" /></td>
                    </tr>
                    <tr>
                        <td>LandLine Number/Phone</td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                    <tr>
                        <td><marquee>Press book to place your order</marquee></td>
                        <td><input type="submit" value="Book!"  /></td>
                    </tr>
                  
                   
            
        </form>
        <script type="text/javascript">
function validate()
{
    if(document.frm.uname.value=="")
    {
      alert(" Name should not be left blank");
      document.frm.uname.focus();
      return false;
    }
    else if(document.frm.address.value=="")
    {
      alert("address should not be left blank");
      document.frm.address.focus();
      return false;
    }
    else if(document.frm.city.value=="")
    {
      alert("we need your city details to process your order");
      document.frm.city.focus();
      return false;
    }
}
</script>
<style media="screen" type="text/css">

/*Simple reset*/
* {margin: 0; padding: 0;}

body {
	/*You can use any kind of background here.*/
        background: #0099ff;
}
canvas {
	display: block;

}

</style>
    </center>
    </body>
    
</html>
