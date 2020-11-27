<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String id = request.getParameter("input");
String output = request.getParameter("output");
%> 
<%=id%> is stored <br/>output is:<%=output%>