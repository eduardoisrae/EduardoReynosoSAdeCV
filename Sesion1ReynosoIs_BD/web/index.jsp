<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="includes/header.jsp"/>

<br>
        <div class="container">
           <div class="jumbotron">
            <center>
                <div class="thumbnail">
                   
                </div>
                <h4>Fecha y hora del sistema : <%= new java.util.Date() %></h4>
            </center>  
                <%@include file="conexion.jsp"%>
                <a class="btn bg-primary" href="ingresaredi.jsp"><h3>Alta de Editoriales</h3></a><br>
           
                <div class="row col-md-12" >
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">CODIGO</th>
                            <th style="text-align: center">Nombre</th>
                            <th style="text-align: center">Direccion</th>
                            <th style="text-align: center">Telefono</th>
                            <th style="text-align: center">Operaciones</th>
                            <th style="text-align: center">Operaciones</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <%
                          st=conexion.prepareStatement("select * from editorial");
                          rs=st.executeQuery();
                          while(rs.next()){//inicia while
                        %>  
                        <tr>
                            <td><%=rs.getString("ideditorial")%></td>
                            <td><%=rs.getString("NombreEditorial")%></td>
                            <td><%=rs.getString("Direccion")%></td>
                            <td><%=rs.getString("Telefono")%></td>
                            <td><a class="btn btn-primary" href="eliminar.jsp?ideditorial=<%=rs.getString("ideditorial")%>">Eliminar</a></td>
                            <td><a class="btn btn-info" href="editar.jsp?ideditorial=<%= rs.getString(1)%>&nombreeditorial=<%= rs.getString(2)%>&direccion=<%= rs.getString(3)%>&telefono=<%= rs.getString(4)%>">Editar</a></td>
                        </tr>
                        <%
                          }//termina while  
                        %>
                    </tbody>
                </table>
            </div>
       
         </div>
        </div>
                    
         <jsp:include page="includes/footer.jsp"/>