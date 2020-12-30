



function ConfirmDemo() {
//Ingresamos un mensaje a mostrar
var mensaje = confirm("¿Desea validar la Entrada");
//Detectamos si el usuario acepto el mensaje
if (mensaje) {
alert("¡Gracias por aceptar!")
window.location.href = 'respondercheqlist.html';
}
//Detectamos si el usuario denegó el mensaje
else {
alert("¡Has Cancelado!");
}
}


function myFunction() {
    // Get the checkbox
    var checkBox = document.getElementById("myCheck");
    // Get the output text
    var text = document.getElementById("text");
    var cont = 0;

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }

    var checkBox = document.getElementById("myCheck2");
    // Get the output text
    var text = document.getElementById("text2");
    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck3");
    // Get the output text
    var text = document.getElementById("text3");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck4");
    // Get the output text
    var text = document.getElementById("text4");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck5");
    // Get the output text
    var text = document.getElementById("text5");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck6");
    // Get the output text
    var text = document.getElementById("text6");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck7");
    // Get the output text
    var text = document.getElementById("text7");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    var checkBox = document.getElementById("myCheck8");
    // Get the output text
    var text = document.getElementById("text8");

    // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        text.style.display = "block";
        cont++;
    } else {
        
        text.style.display = "none";
    }
    if (cont==0){
        alert("Seleccione al menos una opcion");
    }
}


function validacionpago(){
    var payment= document.getElementById("monto").value;
    var colormonto=document.getElementById("monto");
    var rut=document.getElementById("rutero").value;
    var colorrut=document.getElementById("rutero");
    var datanio=document.getElementById("anio").value;
    var coloranio=document.getElementById("anio");
    var datames=document.getElementById("mes").value;
    var colormes=document.getElementById("mes");
    var cont=0;
    /*validacion pago como campo vacio*/
        if (payment == 0 || payment == null || payment==" "){
            alert("Error campos vacíos");
            colormonto.style.backgroundColor= "red";
            cont++;
            
        /*validacion pago como texto*/
        } else if(isNaN(payment)){
            alert("La cantidad no es un numero");
            colormonto.style.backgroundColor="red";
            cont++;

        /*validacion pago como monto incorrecto*/
        }else {var paymentnum = parseInt(payment);
            if ( paymentnum < 0 || paymentnum > 99999999 ){
            alert("Monto Incorrecto");
            colormonto.style.backgroundColor="red";
            cont++;}

        }
        
        if(datames == "- Mes -"){
            alert("No ha seleccionado un Mes");
            colormes.style.backgroundColor="red";
            cont++;
        }else{colormes.style.backgroundColor="white";}

        if(datanio == "- Año -"){
            alert("No ha seleccionado un Año");
            coloranio.style.backgroundColor="red";
            cont++;
        }else{coloranio.style.backgroundColor="white";}
        
        /*validacion rut como campo vacio*/
        if (rut==0 || rut==" " || rut==null){
            alert("Campo rut vacio");
            colorrut.style.backgroundColor="red";
            cont++;
        /*validacion rut como rango de numero*/
        }else {var rutnum = parseInt(rut);
            if (rutnum<999999 || rutnum.legnth>99999999){
            alert("el rut es incorrecto");
            colorrut.style.backgroundColor="red";
            cont++;
        }}
        if(cont==0){
        alert("Formulario validado");
        colormonto.style.backgroundColor= "white";
        colormes.style.backgroundColor="white";
        coloranio.style.backgroundColor="white";
        colorrut.style.backgroundColor="white";
        window.location.href="listadopago.html"}
    
   
}    
function formEnviado(){
    alert("Recibido con Exito.");
}
/*Funcion ocultar listas Grupal 7 Modulo3*/
$(document).ready(function () {
    $('.listacheck').hide();
    $("#list1").click(function(){
        $('#lista1').fadeToggle(300);
            
    });
    $("#list2").click(function(){
        $('#lista2').fadeToggle(300);
            
    });
    $("#list3").click(function(){
        $('#lista3').fadeToggle(300);
            
    });
    $("#list4").click(function(){
        $('#lista4').fadeToggle(300);
            
    });
    $("#list5").click(function(){
        $('#lista5').fadeToggle(300);
            
    });
/* funcion cambio de estilo Grupal 7 Modulo3*/



});

$(document).ready(function () {
    $("#cambiadorestilo1").click(function(){
        $(".egt").toggleClass("cambioestilo1");
    });
    $("#cambiadorestilo2").click(function(){
        $(".egt").toggleClass("cambioestilo2");
    });
    $("#cambiadorestilo3").click(function(){
        $(".egt").toggleClass("cambioestilo3");
    });
});    

/*Funcion validar formulario grupal 9 modulo 3*/
jQuery(document).ready(function($) {
    jQuery("#contacto_formulario").validate({
    rules: {

            invento:{},
            rut : {
                required:true,
                number:true,
                minlength:"8",
                maxlength:"10",
            },
            nombre : {
                required : true,
                minlength:"3"
            },
            apellidos : {
                required : true,
                minlength:"3"
            },
            email : {
                required : true,
                email : true
            },
            telefono : {
                required : true,
                number: true,
                minlength:"9"
            },
            direccion : {
                required : true
            },
            comuna : {
                required : true
            },
            afp : {
                required : true
            },
            sistsalud : {
                required : true
            },
            edad : {
                required : true
                
            },
            },

            messages: {

            
            rut: {
                required:"Ingresa un Rut",
                number: "Debes ingresar solo Numeros",
                minlength: "Por lo menos deben ser 8 cifras",
                maxlength:"Deben ser maximo 10 cifras"
            },    

            nombre: {
                required: "Ingresa un nombre",
                minlength: "Minimo 3 Caracteres"
            },
            apellidos: {
                required: "Ingresa un Apellido",
                minlength: "Minimo 3 Caracteres"
            },
            telefono: {
                required: "Ingresa un número de teléfono",
                number: "Sólo debes ingresar números",
                minlength:"Debe tener 9 digitos"
            },
            direccion: {
                required: "Ingresa una Direccion"
            },
            comuna: {
                required: "Ingresa una Comuna"
            },
            afp: {
                required: "Ingresa una AFP"
            },
            sistsalud: {
                required: "Ingresa un Sistema de Salud"
            },
            edad: {
                required: "Ingresa una Edad"
            },
}
});
});



