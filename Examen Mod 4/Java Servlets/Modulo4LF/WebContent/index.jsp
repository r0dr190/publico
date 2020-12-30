<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
    <title>Home</title>
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
            <li><a href="<%= request.getContextPath() %>/formcrearusuario.jsp">Crear Usuario</a></li>  <!-- colocamos la llamada al servlet para que muestre la lista creada -->
            <li><a href="<%= request.getContextPath() %>/login.jsp">Login</a></li>
            <li><a href="<%= request.getContextPath() %>/logout">Logout</a></li>
        </ul>
    </nav>

        
     
    <h2>Sistema de Información</h2>
   
    <section id="post1" class="col-12 col-s-12">
        <h4>Objetivo del Sistema de Información</h4><br>
        <img src="https://images.unsplash.com/photo-1558698972-c50e325e6799?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" class= "col-5 col-s-5" width=100% id="foto1" >
        <p >El sistema de informacion permite mantener un registro en tiempo real de sus necesidades en virtud de una mayor atencion. Tambien nos permite seguir comoda y eficientemente su caso, proponerle soluciones e incoporarlo a capacitaciones especificas para el mejor desarrollo de las actividades de su empresa.</p>
    </section>
    

    <section id="post2" class="col-12 col-s-12">
        <h4 >Usuarios del Sistema de Información</h4>
        <img src="https://images.unsplash.com/photo-1516216628859-9bccecab13ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80" class="col-5 col-s-5" width=100% id="foto2">
    <p >Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa neque repudiandae quas, dicta veniam itaque omnis cumque suscipit laudantium facere sapiente repellat? Laboriosam incidunt eveniet necessitatibus! Libero alias obcaecati odit.</p>
    </section>
    <section id="post3" class="col-12 col-s-12">
        <h4>Procesos involucrados en el Sistema de Información</h4>
       <img src="https://images.unsplash.com/photo-1584291527908-033f4d6542c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=925&q=80" class="col-5 col-s-5" width=100% id="foto3">
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, cupiditate. Quam possimus perspiciatis laborum impedit repudiandae earum nihil, sapiente, quas cupiditate odio est unde aliquid nostrum voluptatum! Pariatur, modi magni!</p>
    </section>

    <footer class="col-12 col-s-12">
        <!--<img src="pngkey.com-tape-png-1562005.png">-->
        <section id="footdatos">

            <p>prevencion@empresaprevencion.cl</p>
           
            
        </section>
        <div class="container">
            <!-- (p>lorem)*20 (código a usar si tienes instalada la extensión emmet)-->
        </div>
    
        <div class="social">
            <a href="#"><img src="facebook_109862.png" alt="facebook"></a>
            <a href="#"><img src="youtube_109860.png" alt="youtube"></a>
            <a href="#"><img src="whatsapp_109861.png" alt="linkedin"></a>
            <a href="#"><img src="instagam_109863.png" alt="instagram"></a>
        </div>
    </footer>
    <script src="main.js"></script>
</body>
</html>