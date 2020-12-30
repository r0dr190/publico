<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Editar Capacitacion</title>

</head>
<body>
<header>
    <h1>Editar Capacitación</h1>

 	<nav class="menubarra">
        <ul>
            <li><a href="<%= request.getContextPath() %>/index.jsp">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Contacto.jsp">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearusuario.jsp">Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearclient.jsp">Cliente</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearadministrative.jsp">Administrativo</a></li>
            <li><a href="<%= request.getContextPath() %>/formcrearprofessional.jsp">Profesional</a></li>
            <li><a href="<%= request.getContextPath() %>/logout">Logout</a></li>
        </ul>
    </nav>
  </header>	<!-- formulario para editar capacitacion -->

	<form method="POST" action="Actualizar"  class="textform">
		<p style="text-align:center;">ID CAPACITACIÓN: <c:out value="${cap.getIdentificador()}"></c:out></p>
		<p style="text-align:center;">FECHA CAPACITACIÓN:<input type="text" name="txtcedula" id="txtcedula" value="<c:out value="${cap.getCapfecha()}"></c:out>"></p>
		<p style="text-align:center;">HORA CAPACITACIÓN: <input type="text" name="txtnombre" id="txtnombre" value='<c:out value="${cap.getCaphora()}"></c:out>'></p>
		<p style="text-align:center;">LUGAR CAPACITACIÓN: <input type="text" name="txtapellido" id="txtapellido" value="<c:out value="${cap.getCaplugar()}"></c:out>"></p>
		<p style="text-align:center;">DURACION CAPACITACION: <input type="text" name="txtnombres" id="txtnombres" value="<c:out value="${cap.getCapduracion()}"></c:out>"></p>
		<P style="text-align:center;">ID CLIENTE: <input type="text" name="txtidcliente" id="txtidcliente"value="<c:out value="${cap.getId()}"></c:out>"><p>
		<p style="text-align:center;"><input type="submit" name="btnmodificar" id="btnmodificar" value="Modificar" /></p>		
	</form>

	<div><a class="egt" href="<%= request.getContextPath() %>/CapacitacionListar">Ver Lista Capacitaciones</a></div>
</body>
</html>