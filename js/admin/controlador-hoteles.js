$(document).ready(function() {
	$.ajax({
		url:"../ajax/admin-controlador.php?accion=usuario",
		method: "POST",
		data: '',
		dataType: 'json',
		success:function(respuesta){
			if (respuesta) {
				$('#lbl-usuario').html(((respuesta.nombre != null) ? respuesta.nombre : 'Admin') + ' ' +
					((respuesta.apellido != null) ? respuesta.apellido : ''));
			}
		},
		error:function(){

		}
	});
	$.ajax({
			url:'../ajax/admin-controlador.php?accion=obtner-hoteles',
			data: '',
			method: 'POST',
			dataType:"json",
			success: function(resultado){
				if (resultado) {
					for (var i = 0; i < resultado.length; i++) {
						$("#tbl-hoteles").append(
							'<tr>' +
                        		'<td><input type="checkbox" onclick="marcar('+resultado[i].cod_hotel+')" name="checkbox[]" value="'+resultado[i].cod_usuario+'" class="checkbox"></td>' +
                        		'<td>' +
                        			'<div class="btn-group" role="group" aria-label="...">' +
                						'<button type="button" onclick="temp('+resultado[i].cod_usuario+')" class="btn btn-xs btn-default">' +
                							'<span class="glyphicon glyphicon-pencil"></span>' +
            							'</button>' +
            							'<button type="button" onclick="eliminarUsuario('+resultado[i].cod_usuario+')" class="btn btn-xs btn-default">' +
	                						'<span class="glyphicon glyphicon-trash"></span>' +
            							'</button>' +
    								'</div>' +
                        		'</td>' +
                    			'<td>'+resultado[i].nombre+'</td>' +
                            	'<td>'+resultado[i].email+'</td>' +
                            	'<td>'+resultado[i].telefono+'</td>' +
                            	'<td>'+resultado[i].ciudad+'</td>' +
                            	'<td>'+resultado[i].latidud+'</td>' +
                            	'<td>'+resultado[i].longitud+'</td>' +
                    		'</tr>'
							);
					}
				} else 
					alert("No exite");
			},
			error:function(e){
				
			}
	});
});