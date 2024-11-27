<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <head><a href="home.jsp" ><input type="submit" value="back"></a>
        
        </head>
<body>
<center>
    <table>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
String id=request.getParameter("rid");

PreparedStatement ps=con.prepareStatement("delete from user where rid='"+id+"' ");
PreparedStatement ps1=con.prepareStatement("delete  from userlogin where rid='"+id+"' ");
PreparedStatement ps2=con.prepareStatement("delete from complaints where rid='"+id+"' ");


int r=ps.executeUpdate();
int r2=ps1.executeUpdate();
int r3=ps2.executeUpdate();

if(r==0 && r2==0 && r3==0){%>
    <tr>
        <td>
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>deletion failure!</strong> click on the x mark to close
              </div>
        </td>
    <td><%out.println("Deletion was not successfull");%></td>
    </tr>
    <%}
    else
    {%>
        <tr>
            <td><div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>deletion succesfull!</strong> click on the x mark to close
              </div></td>
    <td><%out.println("Deleted Resident Successfully");%></td>
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
background: url(images/red.jpg) no-repeat;
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
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
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
