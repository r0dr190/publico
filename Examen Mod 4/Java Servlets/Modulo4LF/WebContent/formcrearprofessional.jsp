<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Crear Profesional.</title>
</head>
<body>

	<header>
    <h1>Crear Profesional</h1>

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
  </header>	<!-- formulario para crear profesionales -->


	<form method="POST" action="ProfesionalCrear" class="textform">
		<p style="text-align:center;">RUN: <input type="text" name="txtrun" id="txtrun" /></p>
		<p style="text-align:center;">NOMBRES: <input type="text" name="txtnombres" id="txtnombres" /></p>
		<p style="text-align:center;">APELLIDOS: <input type="text" name="txtapellidos" id="txtapellidos" /></p>
		<p style="text-align:center;">TELÉFONO: <input type="text" name="txtfono" id="txtfono" /></p>
		<p style="text-align:center;">TÍTULO: <input type="text" name="txttitulo" id="txttitulo" /></p>
		<p style="text-align:center;">PROYECTO: <input type="text" name="txtproyecto" id="txtproyecto" /></p>
		<p style="text-align:center;">IDUSUARIO: <input type="text" name="txtidusuario" id="txtidusuario" /></p>
		<input style="text-align:center;" type="submit" value="Enviar">
	</form>
	<br><br>
	<div><a class="egt" href="<%= request.getContextPath() %>/ProfesionalListar">Ver Lista Profesionales</a></div>
</body>
</html>