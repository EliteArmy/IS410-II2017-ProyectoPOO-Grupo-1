<?php

	class Hotel {
		
		protected $Nombre;
		protected $ubicacion;
		protected $coordenada; // variable para google maps api
		protected $descripcion;
		protected $numAbitaciones; // Indivdual, Doble, Familiar, Múltiple
		
		protected $valoracion; // Notas de 0 a 10
		protected $categoria; // Numero de estrellas
		protected $precio; // Rango de precios por noche
	
		protected $comentarios;
		protected $ofertas;
	
		public function __construct(){
		
		}
	
		public function __toString(){
				return ;
		}


		public static function obtenerHoteles($conexion)
		{
			$sql = 'SELECT a.cod_hotel, a.nombre, a.email, a.telefono, a.n_estrellas, a.descripcion, a.n_habitaciones, a.habitaciones_diponibles, b.cod_ubicacion, b.latidud, b.longitud, c.ciudad, d.pais
				FROM tbl_hotel a
				INNER JOIN tbl_ubicacion b
				ON a.cod_ubicacion = b.cod_ubicacion
				INNER JOIN tbl_cuidad c 
				ON b.cod_ciudad = c.cod_ciudad
				INNER JOIN tbl_pais d 
				ON c.cod_pais = d.cod_pais';

			$resultado = $conexion->ejecutarConsulta($sql);

			$hoteles = [];

		
			while ($fila = $conexion->obtenerFila($resultado)) {
				$fila['comentarios'] = Comentario::obtenerComentarios($conexion, $fila['cod_hotel']);
				$fila['servicios'] = Servicio::obtenerServicios($conexion, $fila['cod_hotel']);
				$hoteles[] = $fila;
			}

			echo json_encode($hoteles);
		}

		//funcio para la busqueda de hoteles desde el buscador
		public static function buscarHoteles($conexion, $ciudad)
		{
			$sql = 'SELECT a.cod_hotel, a.nombre, a.email, a.telefono, a.n_estrellas, a.descripcion, a.n_habitaciones, a.habitaciones_diponibles, b.cod_ubicacion, b.latidud, b.latidud, c.ciudad, d.pais
				FROM tbl_hotel a
				INNER JOIN tbl_ubicacion b
				ON a.cod_ubicacion = b.cod_ubicacion
				INNER JOIN tbl_cuidad c 
				ON b.cod_ciudad = c.cod_ciudad
				INNER JOIN tbl_pais d 
				ON c.cod_pais = d.cod_pais
				WHERE c.ciudad = ' . $ciudad;

			$resultado = $conexion->ejecutarConsulta($sql);

			$hoteles = [];

		
			while ($fila = $conexion->obtenerFila($resultado)) {
				$fila['comentarios'] = Comentario::obtenerComentarios($conexion, $fila['cod_hotel']);
				$fila['servicios'] = Servicio::obtenerServicios($conexion, $fila['cod_hotel']);
				$hoteles[] = $fila;
			}

			echo json_encode($hoteles);
		}

	}

?>