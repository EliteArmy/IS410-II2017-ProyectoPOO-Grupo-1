<?php
	session_start(); 
	switch ($_GET["accion"]) {
		case 'login': 
			include_once("../class/class-conexion.php");
			include_once("../class/class-usuario.php");
			$conexion = new Conexion();
			Usuario::verificarUsuario($conexion,$_POST["email"],
			$_POST["password"], 3);
			break;
	default:
			
			break;
	}
?>