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
		default:
			# code...
			break;
	}

	$conexion->cerrarConexion();
?>