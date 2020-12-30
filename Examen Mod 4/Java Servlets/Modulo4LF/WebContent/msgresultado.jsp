<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Resultado Operacion</title>
</head>
<body>
	<h1>Resultado</h1>
	
	<c:if test="${result == true}">
		<h3>Su proceso ha resultado exitosamente.</h3>
	</c:if>

	<c:if test="${result == false}">
		<h3>Ocurrió un error en su proceso.</h3>
	</c:if>
	
	<div><a class="egt" href="<%= request.getContextPath() %>/index.jsp">Volver al Inicio</a></div>
	<br/><br/><br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/CapacitacionListar">Ver Lista Capacitaciones</a></div>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/UsuarioListar">Ver Lista Usuarios</a></div>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/ClienteListar">Ver Lista Clientes</a></div>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/AdministrativoListar">Ver Lista Administrativo</a></div>
	<br/><br/>
	<div><a class="egt" href="<%= request.getContextPath() %>/ProfesionalListar">Ver Lista Profesional</a></div>
</body>
</html>