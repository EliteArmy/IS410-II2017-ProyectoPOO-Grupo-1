function guardarNuevoRegistroUsuario(){
    
    alert("Se guardara la informacion");
    var temporal = validacionCampos();
    
    alert(temporal);
    
    if(temporal){
      // URLEncoded
      var parametros = 
        "txt-correo="+$("#txt-correo").val()+"&"+
        "txt-contrasena="+$("#txt-contrasena").val();
    }
    
    return temporal;

    /*Por los momentos no hace la peticion AJAX, solo hace la validacion de los campos*/
    //alert("Parametros: " + parametros);
    /*
    $.ajax({
        url: "ajax/...",
        data: parametros,
        method: "POST",
        success: function(respuesta){
            $("#").html(respuesta  +  $("").html()); 
        error: function(e){
            alert("Error: " + e);
        }
    });
    */
}

function validacionCampos(){

  var sinErrores = true; // Sin Error

  if (document.getElementById("txt-correo").value) {
    document.getElementById("txt-correo").style.borderColor = "#ccc";
    document.getElementById("txt-correo-error").innerHTML = "";

  } else {

    //document.getElementById("txt-correo").style.borderColor = "#ff0000";
    //document.getElementById("txt-correo-error").innerHTML = "Debe de incluir un correo";
    sinErrores = false; // Tiene Error
  }

  if (document.getElementById("txt-contrasena").value) {
  document.getElementById("txt-contrasena").style.borderColor = "#ccc";
  document.getElementById("txt-contrasena-error").innerHTML = "";

  } else {

    //document.getElementById("txt-contrasena").style.borderColor = "#ff0000";
    //document.getElementById("txt-contrasena-error").innerHTML = "Debe incluir una contrasena valida";
    sinErrores = false; // Tiene Error
  }

  //alert(sinErrores);
  return sinErrores;
}

function guardarRegistro(){
	alert("Creacion de una nueva seccion");
}

// Slider en pagina honduras.html
function sliderChange(val){
    document.getElementById('sliderStatus').innerHTML = val;
}

// -- Eventos gestionados por JQUERY para "perfil cuenta" -- 
  $("#btn-close").click(function(e){
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
    //$("#sidebar-wrapper").toggleClass("slow, hidden-xs");
    $("#sidebar-wrapper").toggleClass("hidden-xs");
    $("#contenido-pagina").toggleClass("col-sm-offset-3 col-md-offset-2 col-lg-offset-2");
    $("#btn-close").toggleClass("hidden");
});
    
$("#menu-toggle").click(function(e){
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
    //$("#sidebar-wrapper").toggleClass("slow, hidden-xs");
    $("#sidebar-wrapper").toggleClass("hidden-xs");
    $("#contenido-pagina").toggleClass("col-sm-offset-3 col-md-offset-2 col-lg-offset-2");
    $("#btn-close").toggleClass("hidden");
});

