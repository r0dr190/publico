<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Form Crear Cliente.</title>
</head>
<body>
	
 <header>
    <h1>Crear Cliente</h1>

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
  </header>	<!-- formulario para crear clientes -->

	<form method="POST" action="ClienteCrear" class="textform">
		<p style="text-align:center;">RUN: <input type="text" name="txtrun" id="txtrun" /></p>
		<p style="text-align:center;">NOMBRE: <input type="text" name="txtnombre" id="txtnombre" /></p>
		<p style="text-align:center;">APELLIDO: <input type="text" name="txtapellido" id="txtapellido" /></p>
		<p style="text-align:center;">TELÉFONO: <input type="text" name="txtfono" id="txtfono" /></p>
		<p style="text-align:center;">AFP: <input type="text" name="txtafp" id="txtafp" /></p>
		<p style="text-align:center;">SALUD(1-Fonasa 2-Isapre): <input type="text" name="txtsalud" id="txtsalud" /></p>
		<p style="text-align:center;">DIRECCIÓN: <input type="text" name="txtdireccion" id="txtdireccion" /></p>
		<p style="text-align:center;">COMUNA: <input type="text" name="txtcomuna" id="txtcomuna" /></p>
		<p style="text-align:center;">EDAD: <input type="text" name="txtedad" id="txtedad" /></p>
		<p style="text-align:center;">IDUSUARIO: <input type="text" name="txtidusuario" id="txtidusuario" /></p>
		<input  style="text-align:center;" type="submit" value="Enviar">
	</form>
	<br><br>
	<div><a class="egt" href="<%= request.getContextPath() %>/ClienteListar">Ver Lista Clientes</a></div>
</body>
</html>