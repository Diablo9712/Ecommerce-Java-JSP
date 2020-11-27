<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String libelle=request.getParameter("nm");
String l = request.getParameter("vs");
int num = Integer.parseInt(l);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("update ville set libelle = '"+libelle+"' where id = "+num);
out.println("Data is successfully inserted!");
response.sendRedirect("ville.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 

