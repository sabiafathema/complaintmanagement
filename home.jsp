<%@ page import="java.io.*" %>
<%
String n=(String)session.getAttribute("f");
String m=(String)session.getAttribute("l");
session.setAttribute("f1",n);
session.setAttribute("l1",m);
%>
<html>
    <head>
        <title>adminwelcomepage</title></head>
    </head>
<body>    
    
    
    <div class="wrapper">
        <div class="logo">
        </div>
        <ul class="nav-area">
            <li> <h2><p style="color:rgb(247, 201, 142);">Welcome To Admin Page</p></h2></li>
            <li> <a href="#">home</a></li>
            <li> <a class="green" href="insert.html">add</a></li>
            <li><a class="red" href="delete.html">remove</a></li>
            <li><a class="yellow" href="update.html">update</a></li>
            <li><a class="blue" href="select.html">search</a></li>
            <li><a class="orange" href="view.jsp">view</a></li>
            <li><a href="rhome.html">logout</a></li>
        </ul>
    </div>
</header>

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
/*.wrapper{
    width:1170px;
    margin:auto;
}*/
header{
    
    -webkit-animation-size: cover;
    background-size:cover;
    background-position: center center;
    position: relative;
}
.nav-area{
    list-style-type: none;
    margin-top: 30px;
    margin: 0;
    padding: 0;
    overflow:hidden;
    right: 20px;
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
    background: #fff;
    color: ORANGE;
}
.nav-area li agreen:hover{
    background:green;
    color: rgb(6, 22, 1);
}
</style>

</body>
</html>




