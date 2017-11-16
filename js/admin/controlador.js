function marcar(codigo) {
	if($("input[value='"+codigo+"']").prop('checked'))
		$("input[value='"+codigo+"']").parent().parent().addClass("warning");
	else 
		$("input[value='"+codigo+"']").parent().parent().removeClass("warning");
}

function eliminarUsuario(codigoUsuario) {
	$.ajax({
			url:'../ajax/admin-controlador.php?accion=eliminar-usuario',
			data: 'codigo-usuario='+codigoUsuario,
			method: 'POST',
			dataType:"html",
			success: function(resultado){
				alert(resultado);
				$("input[value='"+codigoUsuario+"']").closest('tr').remove();
			},
			error:function(e){
				
			}
		});
}

function temp(codigoUsuario) {
	$("input[value='"+codigoUsuario+"']").closest('tr').remove();
}

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
		url:'../ajax/admin-controlador.php?accion=obtener-usuarios',
		data: 'tipo-usuario=' + $("#btn-guardar").val(),
		method: 'POST',
		dataType:"json",
		success: function(resultado){
			
			if (resultado) {
				for (var i = 0; i < resultado.length; i++) {
					$("#tbl-usuarios").append(
						'<tr>' +
                            '<td><input type="checkbox" onclick="marcar('+resultado[i].cod_usuario+')" name="checkbox[]" value="'+resultado[i].cod_usuario+'" class="checkbox"></td>' +
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
                            '<td>'+resultado[i].apellido+'</td>' +
                            '<td>'+resultado[i].email+'</td>' +
                            '<td>'+resultado[i].password+'</td>' +
                        '</tr>'
					);
				}
			} 
		},
		error:function(e){
			
		}
	});

	//alert($("#btn-agregar").val());

	$("#btn-desplegar").click(function () {
		$("#btn-desplegar").parent().hide();
		$("#div-agregar").show();
		$("#txt-email").focus();
	});

	$("#btn-cancelar").click(function () {
		$("#btn-desplegar").parent().show();
		$("#div-agregar").hide();
		//$("#txt-email").focus();
	});

	$("#btn-guardar").click(function () {
		var datos = 'email=' + $("#txt-email").val() + '&' +
					'password=' + $("#txt-password").val() + '&' +
					'tipo-usuario=' + $("#btn-guardar").val();

		
		$.ajax({
			url:'../ajax/admin-controlador.php?accion=insertar-usuario',
			data: datos,
			method: 'POST',
			dataType:"json",
			success: function(resultado){
				$("#btn-desplegar").parent().show();
				$("#div-agregar").hide();
				$("#txt-email").val('');
				$("#txt-password").val('');

				if (resultado.status == 1) {
					$("#tbl-usuarios").append(
						'<tr>' +
                            '<td><input type="checkbox" onclick="temp('+resultado.cod_usuario+')" name="checkbox[]" value="'+resultado.cod_usuario+'" class="checkbox"></td>' +
                            '<td>' +
                            	'<div class="btn-group" role="group" aria-label="...">' +
                    				'<button type="button" class="btn btn-xs btn-default">' +
                    				'<span class="glyphicon glyphicon-pencil"></span>' +
                					'</button>' +
                					'<button type="button" onclick="eliminarUsuario('+resultado.cod_usuario+')" class="btn btn-xs btn-default">' +
                    					'<span class="glyphicon glyphicon-trash"></span>' +
                					'</button>' +
         						'</div>' +
                            '</td>' +
                            '<td>'+resultado.nombre+'</td>' +
                            '<td>'+resultado.apellido+'</td>' +
                            '<td>'+resultado.email+'</td>' +
                            '<td>'+resultado.password+'</td>' +
                        '</tr>'
					);
				} else {
					alert('el usuario ya exite');
				}
			},
			error:function(e){
				
			}
		});
	});

});
