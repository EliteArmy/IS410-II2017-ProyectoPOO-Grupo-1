<?php
	/**
	* 
	*/
	class Comentario
	{
		public static function obtenerComentarios($conexion, $codigoHotel)
		{
			$sql = 'SELECT a.cod_comentario, a.comentario, b.nombre, b.apellido, b.email
					FROM tbl_comentarios a
					INNER JOIN tbl_usuario b 
					ON a.cod_usuario = b.cod_usuario
					WHERE a.cod_hotel = ' . $codigoHotel;

			$resultado = $conexion->ejecutarConsulta($sql);

			$comentarios = [];

		
			while ($fila = $conexion->obtenerFila($resultado)) {
				$comentarios[] = $fila;
			}

			return $comentarios;
		}
	}
?>