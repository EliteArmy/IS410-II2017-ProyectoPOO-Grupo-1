function temp(codigo) {
	if($("input[value='"+codigo+"']").prop('checked'))
		$("input[value='"+codigo+"']").parent().parent().addClass("warning");
	else 
		$("input[value='"+codigo+"']").parent().parent().removeClass("warning");
}

$(document).ready(function() {
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
                            '<td><input type="checkbox" onclick="temp('+resultado[i].cod_usuario+')" name="checkbox[]" value="'+resultado[i].cod_usuario+'" class="checkbox"></td>' +
                            '<td>'+resultado[i].cod_usuario+'</td>' +
                            '<td>'+resultado[i].nombre+'</td>' +
                            '<td>'+resultado[i].apellido+'</td>' +
                            '<td>'+resultado[i].email+'</td>' +
                            '<td>'+resultado[i].password+'</td>' +
                        '</tr>'
					);
				}
			} else 
				alert("No exite");
		},
		error:function(e){
			
		}
	});

	//alert($("#btn-agregar").val());

	$("#btn-desplegar").click(function () {
		$("#div-agregar").slideDown("slow");
		$("#txt-email").focus();
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
				if (resultado) {
					$("#tbl-usuarios").append(
						'<tr>' +
                            '<td><input type="checkbox" onclick="temp('+resultado.cod_usuario+')" name="checkbox[]" value="'+resultado.cod_usuario+'" class="checkbox"></td>' +
                            '<td>'+resultado.cod_usuario+'</td>' +
                            '<td>'+resultado.nombre+'</td>' +
                            '<td>'+resultado.apellido+'</td>' +
                            '<td>'+resultado.email+'</td>' +
                            '<td>'+resultado.password+'</td>' +
                        '</tr>'
					);
				}
			},
			error:function(e){
				
			}
		});
	});

});
