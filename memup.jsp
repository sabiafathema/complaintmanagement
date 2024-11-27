<%@ page import="java.io.*" %>

<html>
    <head><title>lodgecomplaint</title><a href="userhome.jsp" ><input type="submit" value="back"></a></head>
<body>
<center>
<%
String l=(String)session.getAttribute("k");
out.println(l);
%>    


<form name="f1" method="POST" action="userupdate.jsp">
    <script>
        function ddlselect()
        {
            var d=document.getElementById("ddselect");
            var displaytext=d.options[d.selectedIndex].text;
            document.getElementById("txtvalue").value=displaytext;
        }
    </script>
<table>    
    
              <h2>Status Category</h2>
        <select id="ddselect" onchange="ddlselect();">
            <option>----select the status----</option>
            <option>Settled</option>
            <option>Unsettled</option>
        </select>         <input type="text" id="txtvalue" name="status"/>
        
            <td>Complaint:</td>
            <td><textarea  name="complaint"  placeholder="enter the complaint" cols="30"  rows="10"></textarea></td> 
        </tr>   
    <tr>   
    <td><input type="submit"  value="Set Complaint"></td>

    </tr>
</table>
<style>
*{
margin: 0;
padding: 0;
}
body{
margin:0;
padding:0;
background: url(images/red.jpg) no-repeat;
background-size: cover;
}
tr,td{
        font-family:Georgia, 'Times New Roman', Times, serif;
        font-size: 20px;
        padding: 10px;
        text-align: left;
    }
    #ddselect{
        background-color:rgb(250, 53, 53);
    }


    input[type=text]
{
    box-sizing:content-box;
    background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
    }
    textarea
{
    box-sizing:content-box;
    background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
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