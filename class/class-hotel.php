<?php

	class Hotel{

		private $cod_hotel;
		private $cod_ubicacion;
		private $nombre;
		private $email;
		private $telefono;
		private $n_estrellas;
		private $descripcion ;
		private $n_habitaciones;
		private $habitaciones_disponibles;

		public function __construct($cod_hotel,
					$cod_ubicacion,
					$nombre,
					$email,
					$telefono,
					$n_estrellas,
					$descripcion ,
					$n_habitaciones,
					$habitaciones_disponibles){
			$this->cod_hotel = $cod_hotel;
			$this->cod_ubicacion = $cod_ubicacion;
			$this->nombre = $nombre;
			$this->email = $email;
			$this->telefono = $telefono;
			$this->n_estrellas = $n_estrellas;
			$this->descripcion  = $descripcion ;
			$this->n_habitaciones = $n_habitaciones;
			$this->habitaciones_disponibles = $habitaciones_disponibles;
		}
		public function getCod_hotel(){
			return $this->cod_hotel;
		}
		public function setCod_hotel($cod_hotel){
			$this->cod_hotel = $cod_hotel;
		}
		public function getCod_ubicacion(){
			return $this->cod_ubicacion;
		}
		public function setCod_ubicacion($cod_ubicacion){
			$this->cod_ubicacion = $cod_ubicacion;
		}
		public function getNombre(){
			return $this->nombre;
		}
		public function setNombre($nombre){
			$this->nombre = $nombre;
		}
		public function getEmail(){
			return $this->email;
		}
		public function setEmail($email){
			$this->email = $email;
		}
		public function getTelefono(){
			return $this->telefono;
		}
		public function setTelefono($telefono){
			$this->telefono = $telefono;
		}
		public function getN_estrellas(){
			return $this->n_estrellas;
		}
		public function setN_estrellas($n_estrellas){
			$this->n_estrellas = $n_estrellas;
		}
		public function getDescripcion (){
			return $this->descripcion ;
		}
		public function setDescripcion ($descripcion ){
			$this->descripcion  = $descripcion ;
		}
		public function getN_habitaciones(){
			return $this->n_habitaciones;
		}
		public function setN_habitaciones($n_habitaciones){
			$this->n_habitaciones = $n_habitaciones;
		}
		public function getHabitaciones_disponibles(){
			return $this->habitaciones_disponibles;
		}
		public function setHabitaciones_disponibles($habitaciones_disponibles){
			$this->habitaciones_disponibles = $habitaciones_disponibles;
		}
		public function __toString(){
			return "Cod_hotel: " . $this->cod_hotel .
				" Cod_ubicacion: " . $this->cod_ubicacion .
				" Nombre: " . $this->nombre .
				" Email: " . $this->email .
				" Telefono: " . $this->telefono .
				" N_estrellas: " . $this->n_estrellas .
				" Descripcion : " . $this->descripcion  .
				" N_habitaciones: " . $this->n_habitaciones .
				" Habitaciones_disponibles: " . $this->habitaciones_disponibles;
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
		  	$sql = "SELECT a.cod_hotel, a.nombre, a.email, a.telefono, a.n_estrellas, a.descripcion, a.n_habitaciones, a.habitaciones_diponibles, b.cod_ubicacion, b.latidud, b.latidud, c.ciudad, d.pais FROM tbl_hotel a INNER JOIN tbl_ubicacion b ON a.cod_ubicacion = b.cod_ubicacion INNER JOIN tbl_cuidad c ON b.cod_ciudad = c.cod_ciudad INNER JOIN tbl_pais d ON c.cod_pais = d.cod_pais WHERE c.ciudad = 'Tegucigalpa'";

		  	$resultado = $conexion->ejecutarConsulta($sql);
	
		  	$hoteles['status'] = 0;


		  	while ($fila = $conexion->obtenerFila($resultado)) {
		    	$fila['comentarios'] = Comentario::obtenerComentarios($conexion, $fila['cod_hotel']);
		    	$fila['servicios'] = Servicio::obtenerServicios($conexion, $fila['cod_hotel']);
		    	$hoteles[] = $fila;
		  	}

		  	echo json_encode($hoteles[0]);
		}

	}
?>
