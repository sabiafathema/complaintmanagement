<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%

String id1=request.getParameter("rid");

String p=request.getParameter("last1");
session.setAttribute("k",id1);

session.setAttribute("l",p);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prjct","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from userlogin where rid='"+id1+"' and password='"+p+"'");
	if(rs.next())
	{%>
	<jsp:forward page="userhome.jsp"></jsp:forward>
	<%}
	else
	{
	out.println("login failed");
	}
con.close();
%>
