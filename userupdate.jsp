<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
 <head><a href="userhome.jsp" ><input type="submit" value="back"></a></head>
<body>
<center>
    <table>
<%
String o4=(String)session.getAttribute("k");
String t=request.getParameter("complaint");
String s=request.getParameter("status");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
PreparedStatement ps=con.prepareStatement("update complaints set complaint=?,status=? where rid='"+o4+"'");
ps.setString(1,t);
ps.setString(2,s);
int r=ps.executeUpdate();
if(r==0){%>
    <tr>
        <td>
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>Updation failure!</strong> <p>click on the x mark to close</p>
              </div>
        </td>
    <td><%out.println("Lodging Complaint Unsuccessfull");%></td>
    </tr>
    <%}
    else
    {%>
        <tr>
            <td><div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                <strong>Thank you!!!make yourself comfortable,as we will reach you in quick time !</strong> <p>click on the x mark to close</p>
              </div></td>
    <td><%out.println("Complaint Lodged Successfully");%></td>
    </tr>
    </table>
    <%}	
con.close();
%>
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
        font-size: 25px;
        padding: 15px;
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
    p{
      font-size: 10px;
    }
    .alert {
  padding: 20px;
  background-color: #720202;
  color: rgb(240, 233, 233);
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
</center>
</body>
</html>
