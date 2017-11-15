$(document).ready(function () {
	$("#btn-iniciar").click(function () {
		var parametros = "email=" +$("#txt-correo").val() + 
						"&password="+$("#txt-contrasena").val();
			// alert(parametros);
			$.ajax({
				url:"../ajax/admin-login.php?accion=login",
				method: "POST",
				data: parametros,
				dataType: 'json',
				success:function(respuesta){
					if (respuesta.status == 1) {
						window.location = "inicio.php";
					} else {
						$("#lbl-info").show();
					}
				},
				error:function(){

			}
		});
	});
});