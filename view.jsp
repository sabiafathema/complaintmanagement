<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <title>viewusers</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <a href="home.jsp" ><input type="submit" value="back"></a>
    </head>
<body>
    <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
        <strong>Retrived succesfully!</strong> click on the x mark to close
      </div>
<center>
<div class="some">  
<table class="stylet">
    <tr>
    <th>rid</th>
    <th>name</th>
    <th>phonenumber</th>
    <th>dateofjoining</th>
    <th>Town</th>
    <th>District</th>
    <th>State</th>
    <th>Pin code</th>
    <th>complaint</th>
    <th>status</th>
    </tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from userlogin l,user m,nativeplace n,complaints c where m.rid=c.rid and m.rid=n.rid and m.rid=l.rid  ");
while(rs.next()){ 
%>

<tr>
<td><%=rs.getString("rid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("phonenumber")%></td>
<td><%=rs.getString("dateofjoining")%></td>
<td><%=rs.getString("town")%></td>
<td><%=rs.getString("district")%></td>
<td><%=rs.getString("state")%></td>
<td><%=rs.getString("Pincode")%></td>
<td><%=rs.getString("complaint")%></td>
<td><%=rs.getString("status")%></td>
</tr>
<%
}

con.close();
%>


<div class="nav">
    <div>
    <a href="home.jsp" ><input type="submit" value="back"></a>
    <a href="rhome.html" ><input type="submit" value="logout"></a>
    </div>
</div>

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
        background-size:1000rem;
    }
    /*
    th,td{
        font-family:Georgia, 'Times New Roman', Times, serif;
        font-size: 15px;
        padding: 15px;
        text-align: left;
    }
    table,th,td{
        border: 1px solid black;
        border-radius: 5px;
    }*/
    .some{
        opacity: 0.9;
        width: 1000px;
        background-color: rgb(243, 109, 31);
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
    .nav{
        position: relative;
        float:right;
        top:20%;
        right:1%;

    }
    .nav  a{
    color: rgb(15, 14, 14);
    text-decoration: none;
    padding:5px 20px;
    font-family: poppins;
    font-size: 20px;
}
.nav  a:hover{
    background: rgb(14, 13, 13);
    color: rgb(243, 237, 237);
}
.alert {
  padding: 20px;
  background-color: #f8c621;
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
.stylet{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9rem;
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

   