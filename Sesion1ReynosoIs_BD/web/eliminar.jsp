<%-- 
    Document   : eliminar
    Created on : 27/11/2024, 07:44:19 AM
    Author     : cantt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>



<%@include file="conexion.jsp"%>
<%    int ideditorial = Integer.parseInt(request.getParameter("ideditorial"));
%>    
<hr>
<h2>Ingresa el numero  de ideditorial: </h2>
<table width=480 height=200 border=0 align=center>
    <form method="post" action="eliminarEditorial.jsp">
        <div class="form-group">
            <tr>
                <td><h3> Numero Id ideditorial a eliminar: </h3> </td>
                <td><input type="text" name="ideditorial" class="form-control" value="<%= ideditorial%>" required placeholder="Captura ideditorial a eliminar" ></td>
            </tr>
            <tr>
                <td colspan=2 align=center>
                    <input type="submit" name="Submit" class="btn btn-danger btn-block" value="Eliminar ideditorial enviar">

                </td>
            </tr>                        
        </div>    
    </form>

</table>
<jsp:include page="includes/footer.jsp"/>