<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="estilos.css" rel="stylesheet" type="text/css">
  <title>Listado Usuarios</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
	  
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
</head>
<body>

         <header>
    <h1>USUARIOS</h1>

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
  </header>
 

  <table id="tablaUsuarios" class="egt">

    
      <caption>
        <h3>Listado de Usuarios</h3>
      </caption>
    
    <thead>
      <tr>

        <th scope="row">Id </th>
        
        <th>Rut:</th>

        <th>Nombre:</th>

        <th>Fecha:</th>

      </tr>
    </thead>
    <tbody>
    
  <c:forEach items="${luser}" var="user">
			<tr>
				<td><c:out value="${user.getId()}" /></td>
				<td><c:out value="${user.getRun()}" /></td>
				<td><c:out value="${user.getNombre()}" /></td>
				<td><c:out value="${user.getFecha()}" /></td>
			<!--  <td><a href="UsuarioEditar?id=<c:out value="${cap.getRun()}"/>">Editar</a>-->
			</tr>
		</c:forEach>

     <!--  <tr>

        <td>11.3</td>

        <td>Espacio Confinado</td>

        <td>24/11/2020</td>

        <td>10:00 hrs</td>

        <td>Codelco Ventanas </td>

      </tr>

      <tr>

        <td>11.3</td>

        <td>Espacio Confinado</td>

        <td>24/11/2020</td>

        <td>10:00 hrs</td>

        <td>Codelco Ventanas </td>

      </tr>

      <tr>

        <td>5.6</td>

        <td>Prevencion de Contagio Covid</td>

        <td>28/11/2020</td>

        <td>16:00 hrs</td>

        <td>Enap Refinerias </td>

      </tr>

      <tr>

        <td>5.6</td>

        <td>Prevencion de Contagio Covid</td>

        <td>28/11/2020</td>

        <td>16:00 hrs</td>

        <td>Enap Refinerias </td>

      </tr>
      <tr>

        <td>5.6</td>

        <td>Prevencion de Contagio Covid</td>

        <td>28/11/2020</td>

        <td>16:00 hrs</td>

        <td>Enap Refinerias </td>

      </tr>
      <tr>

        <td>2.0</td>

        <td>Manipulacion de explosivos</td>

        <td>13/12/2020</td>

        <td>09:00 hrs</td>

        <td>Minning Company International</td>

      </tr>
      <tr>

        <td>2.0</td>

        <td>Manipulacion de explosivos</td>

        <td>13/12/2020</td>

        <td>09:00 hrs</td>

        <td>Minning Company International</td>

      </tr>

      <tr>

        <td>2.0</td>

        <td>Manipulacion de explosivos</td>

        <td>13/12/2020</td>

        <td>09:00 hrs</td>

        <td>Minning Company International</td>

      </tr>
      <tr>

        <td>1.0</td>

        <td>Prevención de consumo de Drogas</td>

        <td>16/12/2020</td>

        <td>13:00 hrs</td>

        <td>Minning Company International</td>

      </tr>-->
    </tbody>
  </table>
  <script>
    $(document).ready( function () {
      $('#tablaUsuarios').DataTable();
  } );
  </script>
		
</body>
</html>