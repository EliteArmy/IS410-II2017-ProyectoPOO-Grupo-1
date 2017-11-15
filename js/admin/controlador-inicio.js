$(document).ready(function () {
	
	$.ajax({
		url:"../ajax/admin-controlador.php?accion=usuario",
		method: "POST",
		data: '',
		dataType: 'json',
		success:function(respuesta){
			if (respuesta) {
				if (respuesta.img != null) {
					$("#img-usuario").attr("src", respuesta.img);
				}

				$('#lbl-nombre').html(((respuesta.nombre != null) ? respuesta.nombre : 'Admin') + ' ' +
					((respuesta.apellido != null) ? respuesta.apellido : ''));
				$('#lbl-usuario').html(((respuesta.nombre != null) ? respuesta.nombre : 'Admin') + ' ' +
					((respuesta.apellido != null) ? respuesta.apellido : ''));
			}
		},
		error:function(){

		}
	});
});