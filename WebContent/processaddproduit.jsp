<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
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

int i=st.executeUpdate("INSERT INTO `produit` ( `libelle`, `description`, `prix`, `qte`, `image`, `id_cat`) VALUES ('"+libelle+"','"+description+"','"+prix+"','"+qte+"','"+image+"','"+cat+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("produit.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 