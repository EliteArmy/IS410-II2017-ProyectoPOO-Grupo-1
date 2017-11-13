<?php 
	/*aque se manejara todo sobre las paginas de administración*/

	include '../class/class-conexion.php';

	$conexion = new Conexion();

	switch ($_GET['accion']) {
		case 'obtener-usuarios':
			include '../class/class-usuario.php';

			Usuario::obtenerUsuarios($conexion, 3);

			break;
		
		default:
			# code...
			break;
	}

	$conexion->cerrarConexion();
?>