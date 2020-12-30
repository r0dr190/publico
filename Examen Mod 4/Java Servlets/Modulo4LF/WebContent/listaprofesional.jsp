<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="estilos.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

</head>
<body>

   <header>
    <h1>Profesional</h1>

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
        <h3>Listado Profesional.</h3>
      </caption>
    
    <thead>
      <tr>

        <th scope="row">Run</th>
        
        <th>Nombre</th>

        <th>Apellido</th>

        <th>Fono</th>
        
        <th>Título</th>
        
        <th>Proyecto</th>

      </tr>
    </thead>
    <tbody>
    
  <c:forEach items="${lprof}" var="pro">
			<tr>
				<td><c:out value="${pro.getRun()}" /></td>
				<td><c:out value="${pro.getNombre()}" /></td>
				<td><c:out value="${pro.getApellido()}" /></td>
				<td><c:out value="${pro.getTelefono()}" /></td>
				<td><c:out value="${pro.getTitulo()}" /></td>
				<td><c:out value="${pro.getProyecto()}" /></td>
				<td><c:out value="${pro.getIdusuario()}" /></td>
				<td><a href="ProfesionalEditar?id=<c:out value="${pro.getRun()}"/>">Editar</a>
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