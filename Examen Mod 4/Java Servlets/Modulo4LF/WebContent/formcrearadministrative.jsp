<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Crear Administrativo.</title>
</head>
<body>

<header>
    <h1>Crear Administrativo</h1>

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
  </header>	<!-- formulario para ingresar administrativo -->

	<form method="POST" action="AdministrativoCrear" class="textform">
		<p style="text-align:center;">RUN: <input type="text" name="txtrun" id="txtrun" /></p>
		<p style="text-align:center;">NOMBRES: <input type="text" name="txtnombres" id="txtnombres" /></p>
		<p style="text-align:center;">APELLIDOS: <input type="text" name="txtapellidos" id="txtapellidos" /></p>
		<p style="text-align:center;">MAIL: <input type="text" name="txtmail" id="txtmail" /></p>
		<p style="text-align:center;">ÁREA: <input type="text" name="txtarea" id="txtarea" /></p>
		<p style="text-align:center;">IDUSUARIO: <input type="text" name="txtidusuario" id="txtidusuario" /></p>
		<input style="text-align:center;" type="submit" value="Enviar">
	</form>
	<br><br>
	<div><a class="egt" href="<%= request.getContextPath() %>/AdministrativoListar">Ver Lista Administrativos</a></div>
	
</body>
</html>