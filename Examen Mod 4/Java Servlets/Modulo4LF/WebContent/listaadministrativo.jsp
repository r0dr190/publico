<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Lista Administrative</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
</head>
<body>

   <header>
    <h1>Administrativo</h1>

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
        <h3>Listado Administrativo.</h3>
      </caption>
    
    <thead>
      <tr>

        <th scope="row">Run</th>
        
        <th>Nombres</th>

        <th>Apellidos</th>

        <th>Mail</th>
        
        <th>�rea</th>

      </tr>
    </thead>
    <tbody>
    
  <c:forEach items="${ladmin}" var="admin">
			<tr>
				<td><c:out value="${admin.getRun()}" /></td>
				<td><c:out value="${admin.getNombre()}" /></td>
				<td><c:out value="${admin.getApellido()}" /></td>
				<td><c:out value="${admin.getMail()}" /></td>
				<td><c:out value="${admin.getArea()}" /></td>
				<td><c:out value="${admin.getIdusuario()}" /></td>
				<td>
				     <a href="EditarAdministrative?id=<c:out value="${admin.getRun()}" />" >Editar</a>
				</td>
			</tr>
		</c:forEach>

    </tbody>
  </table>
  <script>
    $(document).ready( function () {
      $('#tablaUsuarios').DataTable();
  } );
  </script>
 
  
		
</body>
</html>