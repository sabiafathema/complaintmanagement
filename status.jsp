<%@ page import="java.io.*" %>
<html>
    <head><title>updatestatus</title><a href="userhome.jsp" ><input type="submit" value="back"></a></head>
<body style="background-color: burlywood;">
<center>
<%
String o2=(String)session.getAttribute("k");
%>    
<script>
    function ddlselect()
    {
        var d=document.getElementById("ddselect");
        var displaytext=d.options[d.selectedIndex].text;
        document.getElementById("txtvalue").value=displaytext;
    }
</script>
<div class="select-box">
<form name="f1" method="POST" action="status1.jsp">
<table><h2>Status Category</h2>
<select id="ddselect" onchange="ddlselect();">
    <option>----select the status----</option>
    <option>Settled</option>
    <option>Unsettled</option>
</select>
<tr>
<input type="text" id="txtvalue" name="status"/>
    <tr>
        <td><input type="submit"  value="Update Status"></td>
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
/*background: url(images/green.jpg) no-repeat;*/
background-size: cover;
}
.select-box{
position:absolute;
        top:20%;
        left:40%;
        color:rgb(248, 241, 241);
      }
      .select-box{
        float:left;
        font-size:20px;
        border-bottom:6px solid;
}
#ddselect{
        background-color:rgb(248, 225, 150);
    }
    input[type=text]
{
    box-sizing:content-box;
    background: rgb(250, 247, 247);
    color: rgb(15, 95, 5);
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