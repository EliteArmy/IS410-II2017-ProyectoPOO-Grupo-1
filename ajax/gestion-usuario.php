<?php
	
	include("../class/class-conexion.php");

	$objetoConexion = new Conexion();

	switch ($_GET["accion"]) {

	 	case "guardar":
	 		include("../class/class-.php");			
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

	 $objConexion->cerrarConexion();
?>