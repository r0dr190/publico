<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="mainindi.js" type="text/javascript"></script>
    <title>Listados de Pago</title>

</head>


<body>
    <header>
        <h1>Listado de Pagos Clientes</h1>
    </header>
        <table class="egt">
            <tr>
                
                <th scope="row">ID Pago </th>
                <th>Mes de Pagos</th>
                <th>Año de Pago</th>
                <th>RuT Cliente</th>
                <th>Nombre Cliente</th>
            </tr>
            <br>
            <tr>
                <td>001</td>
                <td>Junio</td>
                <td>2014</td>
                <td>9.158.634-3</td>
                <td>Jose Alberto Gutierrez</td>
                <td><input type="button" value="Agregar Pago" onclick="window.location.href=agregarpago.html"></td>
            </tr>
            <br>
            <tr>
                <td>002</td>
                <td>Abril</td>
                <td>2011</td>
                <td>15.667.235-4</td>
                <td>Christian Javier Arrau</td>
                <td><input type="button" value="Agregar Pago" onclick="window.location.href=agregarpago.html"></td>
            </tr>
            <br>
            <tr>
                <td>003</td>
                <td>Septiembre</td>
                <td>2006</td>
                <td>9.158.634-3</td>
                <td>Jose Alberto Gutierrez</td>
                <td><input type="button" value="Agregar Pago" onclick="window.location.href=agregarpago.html"></td>
            </tr>
            <br>
            <tr>
                <td>004</td>
                <td>Febrero</td>
                <td>2017</td>
                <td>13.978.365-1</td>
                <td>Carolina Andrea Valdebenito</td>
                <td><input type="button" value="Agregar Pago" onclick="window.location.href=agregarpago.html"></td>
            </tr>
            <br>
            <tr>
                <td>005</td>
                <td>Octubre</td>
                <td>2019</td>
                <td>9.158.634-3</td>
                <td>Jose Alberto Gutierrez</td>
                <td><input type="button" value="Agregar Pago" onclick="window.location.href=agregarpago.html"></td>
            </tr>

        </table>

    
</body>
</html>