<%@page import="java.sql.DriverManager" %>

<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%
	String id = request.getParameter("d");
int no = Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
Statement stat = conn.createStatement();
stat.executeUpdate("delete from message where id ='"+no+"'");


		response.sendRedirect("messages.jsp");
		
%>