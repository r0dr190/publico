<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="main.js" type="text/javascript"></script>
    <title>Listado Asesorias</title>
</head>

<body>
    
    
    
    <nav class="menubarra">
        <ul>
            <li><a href="Index.html"> Inicio</a></li>
            <li><a href="crearcapacitacion.html">Capacitacion</a></li>
            <li><a href="crearusuario.html">Usuario</a></li>
            <li><a href="listadoasesorias.html">Asesorias</a></li>
            <li><a href="agregarpago.html">Pagos</a></li>
            <li><a href="Contacto.html">Contacto</a></li>
        </ul>
    </nav>
    <h2>Asesorias</h2>
    <nav class="menubarra">
        <ul>
            <li><a href="listadovisitas.html"> Lista Visitas</a></li>
            <li><a href="listadoaccidentes.html">Lista Accidentes</a></li>
            
        </ul>
    </nav>
    <table class="egt" id="tablaasesorias">
        <tr>
            
            <th scope="row">ID Asesoria </th>
            <th>Fecha</th>
            <th>Cliente</th>
            <th>Realizada por</th>
            <th>Actividades</th>
        </tr>
        <br>
        <tr>
            <td>001</td>
            <td>02/03/20014</td>
            <td>Carlos Cortez</td>
            <td>Vania Gutierrez</td>
            <td><input type="button" value="listado" id="list1" ></td>
            
            
        </tr>
            
    
        <br>
        <tr>
            <td>002</td>
            <td>03/12/2009</td>
            <td>Josefa Gatica</td>
            <td>Sofia Nuñez</td>
            <td><input type="button" value="listado" id="list2"></td>
            
        </tr>
        <br>
        <tr>
            <td>003</td>
            <td>05/11/2016</td>
            <td>Esteban Galaz</td>
            <td>Vania Gutierrez</td>
            <td><input type="button" value="listado" id="list3"></td>
        </tr>
        <br>
        <tr>
            <td>004</td>
            <td>14/02/2018</td>
            <td>Jose Martinez</td>
            <td>Esteban Galaz</td>
            <td><input type="button" value="listado" id="list4"></td>
        </tr>
        <br>
        <tr>
            <td>005</td>
            <td>10/07/2019</td>
            <td>Ricardo Ruiz</td>
            <td>Josefa Gatica</td>
            <td><input type="button" value="listado" id="list5"></td>
        </tr>

    </table>
    

    <div>
        <ul class="listacheck" id="lista1">
            <li>Instalar Señaletica</li>
            <li>Implementar EPP</li>
            <li>Mantencion de Equipos</li>
        </ul>
        <ul class="listacheck" id="lista2">
            <li>Mallas de Seguridad</li>
            <li>Implementar EPP</li>
            <li>Examenes Medicos</li>
            <li>Mantencion de Equipos</li>
        </ul>
        <ul class="listacheck" id="lista3">
            <li>Instalar Señaletica</li>
            <li>Suelo Adherente</li>
            <li>Implementar EPP</li>
            <li>Mantencion de Equipos</li>
        </ul>
        <ul class="listacheck" id="lista4">
            <li>Instalar Señaletica</li>
            <li>Implementar EPP</li>
            <li>Examenes Medicos</li>
            <li>Mantencion de Equipos</li>
        </ul>
        <ul class="listacheck" id="lista5">
            <li>Levantamiento de Informes</li>
            <li>Instalar Señaletica</li>
            <li>Implementar EPP</li>
            <li>Mantencion de Equipos</li>
        </ul>
    </div>

    <div><input type="button" id="cambiadorestilo1" value="Estilo 1">
        <input type="button" id="cambiadorestilo2" value="Estilo 2">
        <input type="button" id="cambiadorestilo3" value="Estilo 3">
        <br>
        <br>
        <a href="administrarasistentes.html"><input type="button" value=" Administrar  Asistentes "></a>
    </div>
</body>
</html>