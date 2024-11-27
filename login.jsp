<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%

String id=request.getParameter("first");
String p=request.getParameter("last");
session.setAttribute("f",id);
session.setAttribute("l",p);
out.println(id);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where username='"+id+"' and password='"+p+"'");
	if(rs.next())
	{%>
	<jsp:forward page="home.jsp"></jsp:forward>
	<%}
	else
	{
	out.println("login failed");
	}
con.close();
%>
