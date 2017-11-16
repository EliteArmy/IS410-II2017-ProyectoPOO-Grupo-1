	
$("#btn-registrar-usuario").click(function () {
	
	//alert("Se guardara la informacion");
  var temporal = validacionCampos();

  if(temporal){	
		var parametros = 'txt-correo=' + $("#txt-correo").val() + '&' +
		'txt-contrasena=' + $("#txt-contrasena").val() + '&' +
		'tipo-usuario=' + $("#btn-registrar-usuario").val();
		//alert(parametros);

		$.ajax({
			url: "../ajax/gestion-usuario.php?accion=registrar-usuario-nuevo",
			data: parametros,
			method: "POST",
      dataType: "json",
			success: function(respuesta){
        if (respuesta.status == 1) {
          window.location = "registro-exitoso.html"
        } else {
				  $("#error").html("*usuario ya existe*");
          $("#txt-correo").val('');
          $("#txt-correo").focus();
        }
          
				//alert("EXITO!");
				//location.href = "../acceso-cuenta/registro-exitoso.html"
			},
			error:function(err){
				alert("Error: " + err);
        //$("#error").html(err);
			}
		});

  }

});

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