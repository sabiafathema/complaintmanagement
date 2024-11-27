<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
 <head><a href="home.jsp" ><input type="submit" value="back"></a></head>
<body><center>
<%
String id=request.getParameter("rid");
String n=request.getParameter("name");
String r1=request.getParameter("phno");
String d=request.getParameter("dateofjoining");
String id1=id;
String p=request.getParameter("password");

String pn=request.getParameter("complaint");
String st=request.getParameter("status");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?)");
PreparedStatement ps1=con.prepareStatement("insert into userlogin values(?,?)");
PreparedStatement ps2=con.prepareStatement("insert into complaints values(?,?,?)");
ps.setString(1,id);
ps.setString(2,n);
ps.setString(3,r1);
ps.setString(4,d);
ps1.setString(1,id);
ps1.setString(2,p);
ps2.setString(1,id);
ps2.setString(2,pn);
ps2.setString(3,st);

int r=ps.executeUpdate();
int r2=ps1.executeUpdate();
int r3=ps2.executeUpdate();

if(r==0 && r2==0 && r3==0){%>
    <tr>
        <td>
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>insertion failure!</strong> click on the x mark to close
              </div>
        </td>
    <td><%out.println("Insertion was not successfull");%></td>
    </tr>
    <%}
    else
    {%>
        <tr>
            <td><div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>insertion succesfull!</strong> click on the x mark to close
              </div></td>
    <td><%out.println("Inserting Resident Successfull");%></td>
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
background: url(images/green.jpg) no-repeat;
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
  background-color: #336d0c;
  color: rgb(12, 12, 12);
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