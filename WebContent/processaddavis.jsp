<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String produit=request.getParameter("produit");

String cmt=request.getParameter("nm");

String rate=request.getParameter("rating");


int x = 0;
String test = "NULL";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
Statement st=conn.createStatement();
if(rate == null){
	System.out.println("true!");

int i=st.executeUpdate("INSERT INTO `avis`(`id`, `id_produit`, `commentaire`, `avis`) VALUES (NULL,"+produit+",'"+cmt+"',"+x+")");
}
if(cmt != null && rate != null){
	
int i=st.executeUpdate("INSERT INTO `avis`(`id`, `id_produit`, `commentaire`, `avis`) VALUES (NULL,"+produit+",'"+cmt+"',"+rate+")");

}

if(cmt == null && rate != null){
	
int i=st.executeUpdate("INSERT INTO `avis`(`id`, `id_produit`, `commentaire`, `avis`) VALUES (NULL,"+produit+",'"+test+"',"+rate+")");

}

if(cmt == null && rate == null){
	
int i=st.executeUpdate("INSERT INTO `avis`(`id`, `id_produit`, `commentaire`, `avis`) VALUES (NULL,"+produit+",'"+test+"',"+x+")");

}
out.println("Data is successfully inserted!");
response.sendRedirect("avis.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 