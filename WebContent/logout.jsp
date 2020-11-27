<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv='content-type' content="text/html">
<title>Smart Shop | ACCUEIL</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body >
<%
session.invalidate();
response.sendRedirect("login.jsp");
%>
</body>
</html>