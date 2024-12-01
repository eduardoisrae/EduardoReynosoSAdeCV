<%-- 
    Document   : ingresaredi
    Created on : 22/11/2024, 11:08:43 AM
    Author     : cantt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>



<%@include file="conexion.jsp"%>

<div class="container well">
            <center>
                <img src="img/logoracle.PNG" class="img img-responsive" alt="Logo"/>
                <h3>Alta Editorial Reynoso </h3>
            </center>
            <!--Colocar formulario aqui-->
            <div class="row col-md-4"></div>
                <div class="row col-md-5">
                <form role="form"  action="ingresar.jsp" method="POST">
                    <div class="col-md-10">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                        <div class="form-group">
                            <label for="nombreeditorial">Nombre Editorial:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="nombreeditorial" id="nombreeditorial" placeholder="Ingresa el
                                       nombreeditorial" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="direccion">Direccion:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Ingresa
                                       la direccion" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Telefono:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Ingresa
                                       el telefono" required>
                                <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                            </div>
                        </div>
                        <input type="submit"class="btn btn-info"value="Guardar datos Editorial">
                    </div>
                </form>
           
        </div>    
     </div>

<jsp:include page="includes/footer.jsp"/>