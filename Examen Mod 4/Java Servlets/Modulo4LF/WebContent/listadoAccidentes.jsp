<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="estilos.css" rel="stylesheet" type="text/css">

    <title>Listado de Accidentes</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>



</head>

<body>

    <nav class="menubarra">
        <ul>
            <li><a href="listadoasesorias.html"> Lista Asesorias</a></li>
            <li><a href="listadovisitas.html"> Lista Visitas</a></li>

        </ul>
    </nav>
    <div class="col-12">
        <div class="col-3"></div>
        <form class="col-6 error textform" id="formulario_accidentes" method="get" action="reportes.html">
            <fieldset>
                <legend>
                    <h2>Sistema de Registro de Accidentes</h2>
                </legend>

                <label for="Idacci" class="Idacci">Identificador Accidente:</label>
                <input id="Idacci" type="number" name="Idacci">
                <br><br>
                <label for="fechaacci">Fecha Accidente</label>
                <input id="fechaacci" name="fechaacci" type="date">
                <br><br>
                <label for="horaacci">Hora Accidente:</label>
                <input id="horaacci" name="horaacci" type="text" />
                <br><br>
                <label for="lugaracci">Lugar Accidente:</label>
                <input id="lugaracci" name="lugaracci" type="text">
                <br><br>
                <label for="origenacci">Origen Accidente:</label>
                <input id="origenacci" name="origenacci" type="text">
                <br><br>
                <select name="clienteacci" id="clienteacci">
                    <option>
                        Cliente
                    </option>
                    <option>
                        Trump Cobre Corporation
                    </option>
                    <option>
                        LA PAPA HUAPA INTERNATIONAL COMPANY
                    </option>
                    <option>
                        CODELCO
                    </option>
                    <option>
                        PRODAL S.A.
                    </option>
                    <option>
                        ENAP
                    </option>
                </select>
                <br><br>
                <input class="submit" type="submit" value="Enviar">
                <input class="submit" type="reset" value="Eliminar">

            </fieldset>
        </form>
    </div>
    <script>
        jQuery(document).ready(function ($) {
            jQuery("#formulario_accidentes").validate({
                rules: {

                    invento: {},
                    Idacci: {
                        required: true,
                        number: true,
                        min: 1,
                        max: 10000,
                    },
                    fechaacci: {
                        required: true,
                        text: true,

                    },
                    horaacci: {
                        required: true

                    },
                    lugaracci: {
                        required: true,
                        minlength: "1",
                        maxlength: "149"
                    },
                    origenacci: {
                        required: true,
                        minlength: "1",
                        maxlength: "100"
                    },
                    clienteacci: {
                        required: true

                    }
                },
                messages: {
                    Idacci: {
                        required: "Campo obligatorio",
                        number: "Debe ingresar solo numeros",
                        min: "El numero minimo a ingresar es 1",
                        max: "El numero máximo a ingresar es 10000",
                    },
                    fechaacci: {
                        required: "Ingresa una Fecha"

                    },
                    horaacci: {
                        required: "Ingresa una Hora"

                    },
                    lugaracci: {
                        required: "Debe ingresar una Ciudad o Comuna",
                        minlength: "Debe ingresar un caracter al menos",
                        maxlength: "Debe ingresar un max de 150 caracteres"
                    },
                    origenacci: {
                        required: "Debe ingresar un origen del accidente",
                        minlength: "El campo no debe estar vacio",
                        maxlength: "Debe tener maximo 100 caracteres",
                    },
                    clienteacci: {
                        required: "Debe ingresar un Cliente"
                    }
                }
            });
            $('#fechaacci').datepicker({
                format: 'dd-mm-yyyy',
                orientation: "auto left",
                forceParse: false,
                autoclose: true,
                todayHighlight: true,
                toggleActive: true,
                endDate: '0',
            });


        });
        $(document).ready(function () {
            $('#horaacci').timepicker({
                timeFormat: 'HH:mm p',
                interval: 60,
                minTime: '00',
                maxTime: '23',
                defaultTime: '',
                startTime: '',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });
        });
    </script>

</body>

</html>