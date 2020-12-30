<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>login</title>
</head>
<body>

<h1>Ingrese sus datos</h1>

<form action="LoginUsuario" method="post" class="textform">
 <p style="text-align:center;">Ingrese su Usuario: <input type="text" name="nombre"></p>
 <p style="text-align:center;">Ingrese su Contraseña: <input type="password" name="clave"></p>
 <input type="submit" value="Enviar">
</form>

</body>
</html>