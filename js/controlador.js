$(document).ready(function(){
	$("#btn-buscar").click(function () {
		window.location = "buscar/index.html?buscar="+$("#caja-busqueda").val();
	});
});

