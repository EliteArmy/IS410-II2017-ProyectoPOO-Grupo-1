$(document).ready(function(){
	$("#btn-iniciar").click(function () {
		window.location = "buscar/index.html?buscar=tegucigalpa";
	});

	$.ajax({
		url:"ajax/get-info.php?accion=obtener_hoteles",
		data:"",
		method:"POST",
		success:function(resultado){
			$("#div-hoteles").html(resultado);
		},
		error:function(e){
			alert("Error: " + e);
		}
	});
});
