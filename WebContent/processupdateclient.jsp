<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nom=request.getParameter("nom");

String prenom=request.getParameter("prenom");

String cin=request.getParameter("cin");

String ville=request.getParameter("ville");
String adr=request.getParameter("adr");
String tel=request.getParameter("tel");

String mail=request.getParameter("mail");

String pass=request.getParameter("pass");
String l = request.getParameter("vs");
int num = Integer.parseInt(l);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("update user set first_name = '"+prenom+"', last_name = '"+nom+"', cin = '"+cin+"',id_ville = '"+ville+"', adresse = '"+adr+"', tel = '"+tel+"', email = '"+mail+"',password = '"+pass+"' where id = "+num);
out.println("Data is successfully inserted!");
response.sendRedirect("client.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
