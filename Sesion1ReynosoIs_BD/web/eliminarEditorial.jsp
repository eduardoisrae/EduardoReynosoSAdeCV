<%-- 
    Document   : eliminarEditorial
    Created on : 27/11/2024, 08:00:48 AM
    Author     : cantt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp"%>

<%
int ideditorial=Integer.parseInt(request.getParameter("ideditorial"));
PreparedStatement ps;
ps=conexion.prepareCall("DELETE from editorial WHERE ideditorial = '"+ideditorial+"'");
       ps.executeUpdate();
       response.sendRedirect("index.jsp");
%>