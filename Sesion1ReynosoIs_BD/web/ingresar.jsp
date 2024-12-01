<%-- 
    Document   : ingresar
    Created on : 22/11/2024, 11:24:25 AM
    Author     : cantt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="includes/header.jsp"/>



<%@include file="conexion.jsp"%>
<%//Capturando los datos por medio del request y el metodo getParameter
            String nombre = request.getParameter("nombreeditorial");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
         //Sentencia sql para ingresar datos
            st = conexion.prepareStatement("INSERT INTO editorial values (null,?,?,?)");
            st.setString(1, nombre);
            st.setString(2, direccion);
            st.setString(3, telefono);
            st.executeUpdate();
            conexion.close();
        response.sendRedirect("index.jsp");
        %>
        
        S
        
  <jsp:include page="includes/footer.jsp"/>