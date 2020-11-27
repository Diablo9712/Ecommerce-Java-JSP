<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




            <%  String hostt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection connn=null;
 			 		Statement statt = null;
 			 		ResultSet rest = null;
 			 		String xx="";
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		connn = DriverManager.getConnection(hostt,"root","");
 			 		statt = connn.createStatement();
 			 		String datat = "SELECT count(*) as nombre FROM `user` where user.permission !='admin'";
 			 		rest = statt.executeQuery(datat);
 			 		while(rest.next()){
 			 		 xx = rest.getString("nombre");	
 			 			
 			 		}
 			 		%>
 			 		
 			 <h3>	<% out.println(xx); %></h3>
 			 		
</body>
</html>