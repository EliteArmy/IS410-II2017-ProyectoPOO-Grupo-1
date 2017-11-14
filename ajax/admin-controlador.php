<?php 
	/*aque se manejara todo sobre las paginas de administración*/

	include '../class/class-conexion.php';

	$conexion = new Conexion();

	switch ($_GET['accion']) {
		case 'obtener-usuarios':
			include '../class/class-usuario.php';
			Usuario::obtenerUsuarios($conexion, $_POST['tipo-usuario']);
			break;
		case 'insertar-usuario':
			include '../class/class-usuario.php';
			$usuario = new Usuario(null, $_POST['tipo-usuario'],$_POST['email'],
					$_POST['password']);
			$id =$usuario->insertarUsuario($conexion);
			Usuario::obtenerUsuario($conexion, $id);
			break;
		case 'eliminar-usuario':
			include '../class/class-usuario.php';
			Usuario::eliminarUsuario($conexion, $_POST['codigo-usuario']);
			break;
		case 'obtner-hoteles':
			include '../class/class-hotel.php';
			include '../class/class-comentario.php';
			include '../class/class-servicio.php';
			Hotel::obtenerHoteles($conexion);
			break;		
		default:
			# code...
			break;
	}

	$conexion->cerrarConexion();
?>