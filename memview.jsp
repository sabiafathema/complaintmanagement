><%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <head><title>viewdetails</title><a href="userhome.jsp" ><input type="submit" value="back"></a></head>
    <body background="images/view.jpg">
<center>
    <div class="some">  
    <table class="stylet">
        <tr>
        <th>rid</th>
        <th>name</th>
        <th>phonenumber</th>
        <th>dateofjoining</th>
        <th>complaint</th>
        <th>status</th>
        </tr>
<%
String o2=(String)session.getAttribute("k");

String n=(String)session.getAttribute("l");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user m,complaints c where m.rid=c.rid and m.rid='"+o2+"' ");
while(rs.next()){ 
%>
<tr>
<td><%=rs.getString("rid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("phonenumber")%></td>
<td><%=rs.getString("dateofjoining")%></td>
<td><%=rs.getString("complaint")%></td>
<td><%=rs.getString("status")%></td>
</tr>
<%
}
con.close();
%>


</div>
</table>
</center>

<style>
    *{
    margin: 0;
    padding: 0;
}
body{
    margin:0;
    padding:0;
    background: url(images/orange.jpg) no-repeat;
    background-size: cover;
}
.some{
    opacity: 0.9;
    width: 1000px;
    background-color: rgb(226, 91, 13);
    padding: 20px;
    border-radius: 20px;
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
.stylet{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.stylet tr {
    background-color: #e0a31e;
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


</body>
</html>
