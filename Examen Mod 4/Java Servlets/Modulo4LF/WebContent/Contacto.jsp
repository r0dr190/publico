<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
    <title>Contactenos</title>
    <script src="main.js"></script>
</head>

<body>
     <header class="col-12 col-s-9">
        <h1>EMPRESA DE ASESORIAS DE  <br><br>
            PREVENCIÓN DE RIESGOS</h1>

    </header>
    <nav class="menubarra">
        <ul>
            <li><a href="<%= request.getContextPath() %>/index.jsp">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Contacto.jsp">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearCapacitacion.jsp">Crear Capacitacion</a></li>
            <li><a href="<%= request.getContextPath() %>/crearUsuario">Crear Usuario</a></li>  <!-- colocamos la llamada al servlet para que muestre la lista creada -->
            <li><a href="<%= request.getContextPath() %>/login.jsp">Login</a></li>
            <li><a href="<%= request.getContextPath() %>/logout">Logout</a></li>
        </ul>
    </nav>


    <h2>Contáctenos</h2>

    <form class="textform" action="ContactoCrear" method="POST">
        <p style="text-align:center;">Nombre: <input type="text" name="nombre" id="nombre" size="40"></p>
        <p style="text-align:center;">Apellido: <input type="text" name="txtapellido" id="txtapellido" size="40"></p>
        <p style="text-align:center;">Correo Electronico: <input type="email" name="txtcorreoelectronico" id="txtcorreoelectronico" size="30"></p>
        <p style="text-align:center;">Teléfono: <input type="text" name="txttelefono" id="txttelefono" size="40"></p>
        <p style="text-align:center;">Mensaje: <input type="text" name="txtmensaje" id="txtmensaje" size="40"></p>
        <p style="text-align:center;"><input type="submit" name="btnboton" value="Enviar" /></p>

    </form>
</body>

</html>