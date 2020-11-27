<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String host = "jdbc:mysql://localhost:3306/ecommerce";
Connection conn=null;
Statement stat = null;
ResultSet res = null;
PreparedStatement stmt = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(host,"root","");
stat = conn.createStatement();
String c;
String d,dd;
String a = request.getParameter("user");
String b = request.getParameter("pass");
String data = "select * from user where email = '"+a+"' and password = '"+b+"'";
res = stat.executeQuery(data);

if(res.next()){
	c =  res.getString("first_name") +" "+res.getString("last_name") ;
	d = res.getString("permission");
	dd = res.getString("id");
	session.setAttribute("user",c);
	session.setAttribute("id",d);//out.println(d);
	session.setAttribute("idd",dd);
	if(d.equals("admin")){
	response.sendRedirect("client.jsp");
	}
	else {
		if(d.equals("user")){
			response.sendRedirect("clients.jsp");
			}else {
				if(d.equals("client")){
					response.sendRedirect("menuclient.jsp");
					}
			}
	}
}else{
	
	response.sendRedirect("login.jsp");

%>
<script>alert('Email ou password est incorrect !!!!');</script>
<%} %>