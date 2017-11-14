<?php 
	/**
	* 
	*/
	class Servicio
	{
		public static function obtenerServicios($conexion, $codigoHotel)
		{
			$sql = 'SELECT a.cod_servicio, b.servicio
					FROM tbl_servicios_x_tbl_hotel a
					INNER JOIN tbl_servicios b 
					ON b.cod_servicio = a.cod_servicio
					WHERE a.cod_hotel  = ' . $codigoHotel;

			$resultado = $conexion->ejecutarConsulta($sql);

			$servicios = [];

		
			while ($fila = $conexion->obtenerFila($resultado)) {
				$servicios[] = $fila;
			}

			return $servicios;
		}
	}
?>