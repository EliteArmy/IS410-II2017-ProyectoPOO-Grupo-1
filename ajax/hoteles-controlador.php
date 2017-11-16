<?php
	include '../class/class-conexion.php';

	$conexion = new Conexion();

	switch ($_GET['accion']) {
		case 'obtner-hoteles':
			include '../class/class-hotel.php';
			include '../class/class-comentario.php';
			include '../class/class-servicio.php';
			Hotel::buscarHoteles($conexion, $_POST['ciudad']);
			break;	
		default:
			# code...
			break;
	}

	$conexion->cerrarConexion();
?>
