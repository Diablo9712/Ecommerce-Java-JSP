<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String qte=request.getParameter("test");
String produit=request.getParameter("ww");
String commande=request.getParameter("vvv");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO `detail_commande` (`id`, `id_commande`, `id_produit`, `qte`) VALUES (NULL, '"+commande+"', '"+produit+"', '"+qte+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("menuclient.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 