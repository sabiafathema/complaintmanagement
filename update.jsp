<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <head><a href="home.jsp" ><input type="submit" value="back"></a></head>
<body>
<center>
    <table>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
String id=request.getParameter("rid");
String n=request.getParameter("name");
String s=request.getParameter("phno");
String d=request.getParameter("dateofjoining");
PreparedStatement ps=con.prepareStatement("update user set phonenumber=? where rid='"+id+"'");
ps.setString(1,s);
int r=ps.executeUpdate();
if(r==0){%>
    <tr>
        <td>
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>Updation failure!</strong> click on the x mark to close
              </div>
        </td>
    <td><%out.println("Updation was not successfull");%></td>
    </tr>
    <%}
    else
    {%>
        <tr>
            <td><div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>Updation succesfull!</strong> click on the x mark to close
              </div></td>
    <td><%out.println("Updating Resident Successfull");%></td>
    </tr>
    </table>
    <%}	
con.close();
%>
</center>

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
tr,td{
        font-family:Georgia, 'Times New Roman', Times, serif;
        font-size: 20px;
        padding: 10px;
        text-align: left;
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
    .alert {
  padding: 20px;
  background-color: #e7f713;
  color: rgb(12, 12, 12);
}

.closebtn {
  margin-left: 15px;
  color: rgb(14, 13, 13);
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>

</body>
</html>
