<%@ page import="java.io.*" %>
<html>
    <head><title>changepassword</title><a href="userhome.jsp" ><input type="submit" value="back"></a></head>
<body>
<center>
    <%
    String o2=(String)session.getAttribute("k");
    %> 
    <div class="login-box">  
       
<form name="f1" method="POST" action="passwordc.jsp">
<table>
    
        <td>change password:</td>
        <td><input type="text" placeholder="password" name="password"></td>
    </tr>
    <tr>
    	<td><input type="submit" value="change"></td>
    	</tr>
    </table>
    </form>
    </div>
    <style>
        *{
margin: 0;
padding: 0;
}
body{
margin:0;
padding:0;
background: url(images/yellow.jpg) no-repeat;
background-size: cover;
}
    .login-box{
        position:absolute;
        top:20%;
        left:50%;
        transform:translate(-50%,-50%);
        color:white;
      }
      .login-box{
        float:left;
        font-size:20px;
        border-bottom:6px solid;
}

input[type=submit]
    {
        width: 100px;
        padding: 5px 10px;
        margin: 8px 0;
        box-sizing:border-box;
        border: 2px black;
        border: radius 4px;
        background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
    }
      </style>
</center>
</body>
</html>