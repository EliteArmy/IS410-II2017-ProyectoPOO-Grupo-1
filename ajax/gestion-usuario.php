<?php
	
	include("../class/class-conexion.php");

	$conexion = new Conexion();

	switch ($_GET["accion"]) {

	 	case "registrar-usuario-nuevo":
	 		echo "CADENA!";
	 		//include "../class/class-usuario.php";
	 		//$usuario = new Usuario(null, $_POST['tipo-usuario'],$_POST['email'],
			//		$_POST['password']);
/*
			$usuario = new Usuario(null, 
					$_POST["tipo-usuario"], 
					$_POST["txt-correo"],
					$_POST["txt-contrasena"], 
					null, 
					null, 
					null, 
					null, 
					null
				);
			*/
			//$usuario->insertarUsuarioNuevo($conexion);

	 		break;
	 	
	 	case "actualizar":
	 		include("../class/class-.php");			
	 		break;

	 	case "eliminar":
	 		include("../class/class-.php");			
	 		break;

	 	default:
	 		echo "Accion invalida";
	 		break;
	 }

	 $conexion->cerrarConexion();
?>