<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Crear Cliente.</title>
</head>
<body>
	
 <h1>Editar Cliente</h1>

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
  </header>	<!-- formulario para editar cliente -->

	<form method="POST" action="ModificarClient">
	    <p>RUN: <c:out value="${cli.getIdcliente()}"/></p>
		
		<p>NOMBRE: <input type="text" name="txtnombre" id="txtnombre" value="<c:out value="${cli.getNombres()}" />"/></p>
		<p>APELLIDO: <input type="text" name="txtapellido" id="txtapellido" value="<c:out value="${cli.getApellidos()}" />"/></p>
		<p>TELÉFONO: <input type="text" name="txtfono" id="txtfono" value="<c:out value="${cli.getTelefono()}" />"/></p>
		<p>AFP: <input type="text" name="txtafp" id="txtafp" value="<c:out value="${cli.getAfp()}" />"/></p>
		<p>SALUD: <input type="text" name="txtsalud" id="txtsalud" value="<c:out value="${cli.getSalud()}" />"/></p>
		<p>DIRECCIÓN: <input type="text" name="txtdireccion" id="txtdireccion" value="<c:out value="${cli.getDireccion()}" />"/></p>
		<p>COMUNA: <input type="text" name="txtcomuna" id="txtcomuna" value="<c:out value="${cli.getComuna()}" />"/></p>
		<p>EDAD: <input type="text" name="txtedad" id="txtedad" value="<c:out value="${cli.getEdad()}" />"/></p>
		<p>ID: <input type="text" name="txtrun" id="txtrun" value="<c:out value="${cli.getId()}" />"/></p>
		<input type="hidden" name="hdnidcliente" id="hdnidcliente" value="${cli.getIdcliente()}" />
		<input type="submit" name="txtmodificar" id="txtmodificar" value="modificar" />
	</form>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/ClienteListar">Ver Lista Clientes</a></div>

</body>
</html>