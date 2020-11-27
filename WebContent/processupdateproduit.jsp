<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String l = request.getParameter("vs");
int num = Integer.parseInt(l);
String libelle=request.getParameter("libelle");

String prix=request.getParameter("prix");

String description=request.getParameter("description");

String qte=request.getParameter("qte");
String image=request.getParameter("image");

String cat=request.getParameter("cat");




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate(" update produit set libelle = '"+libelle+"', description = '"+description+"', prix = '"+prix+"', qte = '"+qte+"', id_cat = '"+cat+"',image = '"+image+"' where id = '"+num+"'");
out.println("Data is successfully inserted!");
response.sendRedirect("produit.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 