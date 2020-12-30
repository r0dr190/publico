<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Crear Usuario</title>
</head>
<body>
	<h1>Crear Usuario.</h1>
	
	<c:if test="${result == true}">
		<h3>Usuario agregado exitosamente.</h3>
	</c:if>

	<c:if test="${result == false}">
		<h3>Ocurrió un error al guardar al Usuario.</h3>
	</c:if>
	
	<a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
	<br/><br/>
	<a href="<%= request.getContextPath() %>/UsuarioListar">Listado de Usuarios</a>
	<br/><br/>
	<a href="<%= request.getContextPath() %>/CrearUsuario">Crear Usuario</a>
	
	
	
	
</body>
</body>
</html>