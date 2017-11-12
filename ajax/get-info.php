<?php
	
	include("../class/class-conexion.php");

	$objetoConexion = new Conexion();

	switch ($_GET["accion"]) {

	 	case "obtener_hoteles":
	 		include("../class/class-.php");			
	 	break;
	 	
	 	default:
	 		echo "Accion invalida";
	 		break;
	 }

	 $objConexion->cerrarConexion();
?>