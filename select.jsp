<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<head><a href="home.jsp" ><input type="submit" value="back"></a>
    </head>
  <br><br>
<body>
<center>
<div class="some">
<table class="stylet">
<tr>
<th>Rid</th>
<th>name</th>
<th>phonenumber</th>
<th>dateofjoining</th>
<th>complaint</th>
<th>status</th>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
String id=request.getParameter("rid");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user m inner join complaints c on  m.rid=c.rid and m.rid='"+id+"' ");
if(rs.next()){
%>

    <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
        <strong>Found the member!</strong> click on the x mark to close
      </div>

<tr>
<td><%=rs.getString("rid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("phonenumber")%></td>
<td><%=rs.getString("dateofjoining")%></td>
<td><%=rs.getString("complaint")%></td>
<td><%=rs.getString("status")%></td>
</tr>
<%}
else{%>
    <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
        <strong>Can't find the member!</strong> click on the x mark to close
      </div>
<%}
con.close();
%>
</table>
</div>
<style>
     *{
margin: 0;
padding: 0;
}
body{
margin:0;
padding:0;
background: url(images/blue.jpg) no-repeat;
background-size: cover;
}
.some{
    opacity: 0.9;
    width: 1000px;
    background-color: rgb(31, 101, 230);
    padding: 20px;
    border-radius: 20px;
    }
    input[type=submit]
    {
        width: 100px;
        padding: 5px 10px;
        margin: 8px 0;
        opacity: inherit;
        box-sizing:border-box;
        border: 2px black;
        border: radius 4px;
        background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
    }
    .alert {
  padding: 20px;
  background-color: #799bf7;
  color: rgb(12, 11, 11);
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
.stylet{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.stylet tr {
    background-color: #0fb0f0;
    color: #ffffff;
    text-align: left;
    border-bottom: 1px solid #f0eaea;
}
.stylet th,
.stylet td {
    padding: 12px 15px;
}
.stylet tr:nth-of-type(even) {
    background-color: #0e0d0d;
}
</style>
</center>
</body>
</html>
