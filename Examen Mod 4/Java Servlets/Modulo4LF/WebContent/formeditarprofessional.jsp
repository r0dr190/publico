<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Editar Profesional.</title>
</head>
<body>
	<header>
	 <h1>Editar Profesional</h1>

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
  </header>	<!-- formulario para editar Profesional -->

	<form method="POST" action="ModificarProfesional">
	    <p style="text-align:center;">RUN: <c:out value="${pro.getRun()}"/></p>
		<p style="text-align:center;">ID: <input type="text" name="txtrun" id="txtrun" value="<c:out value="${pro.getIdusuario()}"/>"/></p>
		<p style="text-align:center;">NOMBRES: <input type="text" name="txtnombres" id="txtnombres" value="<c:out value="${pro.getNombre()}"/>"/></p>
		<p style="text-align:center;">APELLIDOS: <input type="text" name="txtapellidos" id="txtapellidos" value="<c:out value="${pro.getApellido()}"/>"/></p>
		<p style="text-align:center;">TELÉFONO: <input type="text" name="txtfono" id="txtfono" value="<c:out value="${pro.getTelefono()}"/>"/></p>
		<p style="text-align:center;">TÍTULO: <input type="text" name="txttitulo" id="txttitulo" value="<c:out value="${pro.getTitulo()}"/>"/></p>
		<p style="text-align:center;">PROYECTO: <input type="text" name="txtproyecto" id="txtproyecto" value="<c:out value="${pro.getProyecto()}"/>"/></p>
		<p style="text-align:center;"><input type="submit" name="btneditar" id="btneditar" value="Enviar">
		<p style="text-align:center;"><input type="hidden" name="hdnidpro" id="hdnidpro" value="${pro.getRun()}" />
	</form>
	
	<div><a class="egt" href="<%= request.getContextPath() %>/ProfesionalListar">Ver Lista Profesional</a></div>

</body>
</html>