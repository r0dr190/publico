<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Editar Administrativo</title>
</head>
<body>
	
 <header>
    <h1>Editar Administrativo</h1>

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
  </header>	<!-- formulario para editar Administrativo -->

	<form method="POST" action="ModificarAdministrative">
	    <p>RUN: <c:out value="${datosadmin.getRun()}" /></p>
		<p>ID: <input type="text" name="txtrun" id="txtrun" value="<c:out value="${datosadmin.getId()}" />"/></p>
		<p>NOMBRES: <input type="text" name="txtnombres" id="txtnombres" value="<c:out value="${datosadmin.getNombre()}" />"/></p>
		<p>APELLIDOS: <input type="text" name="txtapellidos" id="txtapellidos" value="<c:out value="${datosadmin.getApellido()}" />"/></p>
		<p>MAIL: <input type="text" name="txtmail" id="txtmail" value="<c:out value="${datosadmin.getMail()}" />"/></p>
		<p>ÁREA: <input type="text" name="txtarea" id="txtarea" value="<c:out value="${datosadmin.getArea()}" />"/></p>
		<input type="hidden" name="hdnidadmin" id="hdnidadmin" value="${datosadmin.getRun()}" />
		<input type="submit" name="btneditar" id="btneditar" value="Editar">
	</form>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/AdministrativoListar">Ver Lista Administrativo</a></div>
	

</body>
</html>