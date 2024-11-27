<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
    <title>userwelcomepage</title></head>
<body>    
  
    <div class="wrapper">
        <ul class="nav-area">
            <li><h2><p style="color:rgb(12, 11, 11);">Member Page </p></h2></li>
            <div class="sep" >
            <li><a href="#">home</a></li>
            <li><a class="orange" href="userview.jsp">view</a></li>
            <li><a class="red" href="userup.jsp">complaint</a></li>
            <li> <a class="green" href="status.jsp">status</a></li>
            <li><a class="yellow" href="password.jsp">change password</a></li>
          
            <li><a href="rhome.html">logout</a></li>
            </div>
        </ul>
    </div>

<script>
    function preventBack() 
    {
         window.history.forward();
    }  
         setTimeout("preventBack()", 0);  
         window.onunload = function () 
         { 
             null
         };
         </script>
<style>
    *{
    margin: 0;
    padding: 0;
}
body{
    margin:0;
    padding:0;
    background: url(images/home.jpg) no-repeat;
    background-size:cover;
}
/*
.wrapper{
    width:1170px;
    margin:auto;
}*/
.nav-area{
    list-style-type: none;
    margin-top: 30px;
    margin: 0;
    padding: 0;
    overflow:hidden;
    background-color: rgb(148, 98, 5);
}
.nav-area li {
    display: inline-block;
}
.nav-area li a{
    display:block;
    color: rgb(245, 241, 241);
    text-align: center;
    text-decoration: none;
    padding:14px 16px;
    font-family: poppins;
    font-size: 25px;
}
.nav-area li a:hover{
    background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
}

.sep{
    float:right;
}

</style>




</body>
<%
String o4=(String)session.getAttribute("k");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select name from  user where rid='"+o4+"'");
    if(rs.next())
{
%>
<h2 class="a" style="color:rgb(7, 7, 7);">Welcome Mr.<%= rs.getString(1) %> !!</h2>
<%
}
con.close();
%>
</html>

