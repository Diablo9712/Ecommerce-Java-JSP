<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String fname=request.getParameter("fname");

String lname=request.getParameter("lname");

String mail=request.getParameter("mail");

String msg=request.getParameter("msg");
String subject=request.getParameter("subject");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO `message`(`first_name`, `last_name`, `email`, `subject`, `message`) VALUES ('"+fname+"','"+lname+"','"+mail+"','"+subject+"','"+msg+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("contact.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 