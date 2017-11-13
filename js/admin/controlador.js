$(document).ready(function() {
	$.ajax({
		url:'../ajax/admin-controlador.php?accion=obtener-usuarios',
		data: '',
		method: 'POST',
		dataType:"json",
		success: function(resultado){
			if (resultado) {
				for (var i = 0; i < resultado.length; i++) {
					$("#tbl-usuarios").append(
						'<tr>' +
                            '<td><input type="checkbox" class="checkbox"></td>' +
                            '<td>'+resultado[i].cod_usuario+'</td>' +
                            '<td>'+resultado[i].Nombre+'</td>' +
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
});