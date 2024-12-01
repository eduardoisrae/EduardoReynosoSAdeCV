<%-- 
    Document   : editar
    Created on : 29/11/2024, 10:59:16 AM
    Author     : fcoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>
<%@include file="conexion.jsp"%>

<%    int ideditorial = Integer.parseInt(request.getParameter("ideditorial"));
    String nombreeditorial = request.getParameter("nombreeditorial");
    String direccion = request.getParameter("direccion");
    String telefono = request.getParameter("telefono");
%>
<div class="container mt-5">
    <div class="row">
        <div class="col-sm">

            <form action="editar.jsp" method="post">
                <div class="form-group">
                    <label for="nombreeditorial">Nombre Editorial</label>
                    <input type="text" class="form-control" id="nombreeditorial" value="<%= nombreeditorial%>" name="nombreeditorial" required="required">
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección</label>
                    <input type="text" class="form-control" id="direccion" value="<%= direccion%>"  name="direccion" required="required">
                </div>
                <div class="form-group">
                    <label for="telefono">telefono</label>
                    <input type="text" class="form-control" id="telefono"  value="<%= telefono%>"  name="telefono" required="required">
                </div>
                <a href="index.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                <button type="submit" name="enviar" class="btn btn-primary">Guardar cambios<i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <input type="hidden" name="ideditorial" value="<%= ideditorial%>" >
            </form>

        </div>
    </div>
</div>
<%
    if (request.getParameter("enviar") != null) {
        try {
            PreparedStatement ps;
            ps = conexion.prepareStatement("update editorial set nombreeditorial='" + nombreeditorial + "', direccion='" + direccion + "', telefono='" + telefono + "' where ideditorial='" + ideditorial + "';");
            ps.executeUpdate();
            response.sendRedirect("index.jsp");//redirecciona a paginina principal idex.jsp
            //request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (Exception e) {
            out.print(e);
        }
    }
%>

<jsp:include page="includes/footer.jsp"/>