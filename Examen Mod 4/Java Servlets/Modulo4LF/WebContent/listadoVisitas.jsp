<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
    <title>Listado Visitas</title>
</head>

<body>
  
    <nav class="menubarra">
      <ul>
          <li><a href="listadoasesorias.html"> Lista Asesorias</a></li>
          <li><a href="listadoaccidentes.html">Lista Accidentes</a></li>
          
      </ul>
  </nav>

    <table class="egt">

        <caption><h2>Listado de Vistas</h2></caption>
        
        <tr>
      
          <th scope="row"> ID Visitas</th>

          <th>Fecha</th>

          <th>Hora Visita</th>
      
          <th>Rut Cliente</th>
      
          <th>Nombre Cliente</th>
      
          <th></th>

          
      
        </tr>
        <br>
      
        <tr>
      
          <td>1</td>

          <td>12/04/2006</td>
      
          <td>18:00</td>
      
          <td>9.158.634-3</td>

          <td>Juan Carlos Norambuena</td>

          

          <td><input type="button" onclick="ConfirmDemo()" value="Validar" />
          </td>
      
        </tr>
      
        <tr>
      
            <td>2</td>

            <td>25/10/2013</td>

            <td>21:00</td>

            <td>12.998.456-7</td>
        
            <td>Andres Fernandez</td>
        
            

           

          <td><input type="button" onclick="ConfirmDemo()" value="Validar" />
          </td>
        
        </tr>
      
        <tr>
      
            <td>3</td>

            <td>17/09/2015</td>

            <td>13:00</td>

            <td>15.667.235-4</td>
        
            <td>Christian Javier Cortez</td>
        
            <td><input type="button" onclick="ConfirmDemo()" value="Validar" /></td>
        
        </tr>
          
        <tr>
      
            <td>4</td>

            <td>13/02/2006</td>

            <td>14:15</td>

            <td>8.679.436-2</td>
        
            <td>Pablo Eduardo Saenz</td>
        
            <td><input type="button" onclick="ConfirmDemo()" value="Validar" /></td>
        
        </tr>
        
        <tr>
      
            <td>5</td>

            <td>25/08/2006</td>

            <td>17:00</td>

            <td>9.337.462-1</td>
        
            <td>Luis Alberto Lazo</td>
        
            <td><input type="button" onclick="ConfirmDemo()" value="Validar" />
          </td>
        
        </tr>
        

    </table>
    
    <script src="main.js"></script>  
</body>
</html>