 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String libelle=request.getParameter("lname");
String last_name=request.getParameter("lname");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into categorie values('"+libelle+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("categorie.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 