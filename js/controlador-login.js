$(document).ready(function () {
	$("#txt-correo").focus();
	$("#btn-iniciar").click(function () {
		var parametros = "email=" +$("#txt-correo").val() + 
						"&password="+$("#txt-contrasena").val();
		 //alert(parametros);
		$.ajax({
				url:"../ajax/gestion-usuario.php?accion=login",
				method: "POST",
				data: parametros,
				dataType: 'json',
				success:function(respuesta){
					if (respuesta.status == 1) {
						window.location = "../user/index.php";
					} else {
						//alert('fallo');
						//$("#lbl-info").show();
						$("#txt-correo").focus();
						$("#txt-correo").val('');

					}
				},
				error:function(){

			}
		});
	});
});