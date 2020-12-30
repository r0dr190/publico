<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
<title>Día 8</title>

</head>
<body>

	
	
	<header>
    <h1>Crear Capacitación</h1>

 	<nav class="menubarra">
        <ul >
            <li><a href="<%= request.getContextPath() %>/index.jsp">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Contacto.jsp">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearusuario.jsp">Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearcliente.jsp">Cliente</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearadministrativo.jsp">Administrativo</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearprofesional.jsp">Profesional</a></li>
            <li><a href="<%= request.getContextPath() %>/logout">Logout</a></li>
        </ul>
    </nav>
  </header>

	<form method="POST" action="CapacitacionCrear" class="textform">
		<p style="text-align:center;">ID CAPACITACIÓN: <input type="text" name="txtid" id="txtid" /></p>
		<p style="text-align:center;">FECHA CAPACITACIÓN: <input type="text" name="txtcedula" id="txtcedula" /></p>
		<p style="text-align:center;">HORA CAPACITACIÓN: <input type="text" name="txtnombre" id="txtnombre" /></p>
		<p style="text-align:center;">LUGAR CAPACITACIÓN: <input type="text" name="txtapellido" id="txtapellido" /></p>
		<p style="text-align:center;">DURACION CAPACITACION: <input type="text" name="txtnombres" id="txtnombres" /></p>
		<P style="text-align:center;">ID CLIENTE: <input type="text" name="txtidcliente" id="txtidcliente"/><p>
		<p style="text-align:center;"><input type="submit" name="btnguardar" id="btnguardar" value="Guardar" /></p>		
	</form>
	
	
	<div><a class="egt" href="<%= request.getContextPath() %>/CapacitacionListar">Ver Lista Capacitaciones</a></div>

</body>
</html>