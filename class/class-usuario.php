<?php

	class Usuario{

		private $codUsuario;
		private $codTipoUsuario;
		private $nombre;
		private $apellido;
		private $email;
		private $password;
		private $fechaNacimiento;
		private $ciudad;
		private $pais;

		public function __construct($codUsuario,
					$codTipoUsuario,
					$nombre,
					$apellido,
					$email,
					$password,
					$fechaNacimiento,
					$ciudad,
					$pais){
			$this->codUsuario = $codUsuario;
			$this->codTipoUsuario = $codTipoUsuario;
			$this->nombre = $nombre;
			$this->apellido = $apellido;
			$this->email = $email;
			$this->password = $password;
			$this->fechaNacimiento = $fechaNacimiento;
			$this->ciudad = $ciudad;
			$this->pais = $pais;
		}

		// Sets y Gets
		public function getCodUsuario(){
			return $this->codUsuario;
		}
		public function setCodUsuario($codUsuario){
			$this->codUsuario = $codUsuario;
		}
		public function getCodTipoUsuario(){
			return $this->codTipoUsuario;
		}
		public function setCodTipoUsuario($codTipoUsuario){
			$this->codTipoUsuario = $codTipoUsuario;
		}
		public function getNombre(){
			return $this->nombre;
		}
		public function setNombre($nombre){
			$this->nombre = $nombre;
		}
		public function getApellido(){
			return $this->apellido;
		}
		public function setApellido($apellido){
			$this->apellido = $apellido;
		}
		public function getEmail(){
			return $this->email;
		}
		public function setEmail($email){
			$this->email = $email;
		}
		public function getPassword(){
			return $this->password;
		}
		public function setPassword($password){
			$this->password = $password;
		}
		public function getFechaNacimiento(){
			return $this->fechaNacimiento;
		}
		public function setFechaNacimiento($fechaNacimiento){
			$this->fechaNacimiento = $fechaNacimiento;
		}
		public function getciudad(){
			return $this->ciudad;
		}
		public function setciudad($ciudad){
			$this->ciudad = $ciudad;
		}
		public function getPais(){
			return $this->pais;
		}
		public function setPais($pais){
			$this->pais = $pais;
		}

		public function __toString(){
			return "CodUsuario: " . $this->codUsuario . 
				" CodTipoUsuario: " . $this->codTipoUsuario . 
				" Nombre: " . $this->nombre . 
				" Apellido: " . $this->apellido . 
				" Email: " . $this->email . 
				" Password: " . $this->password . 
				" FechaNacimiento: " . $this->fechaNacimiento . 
				" ciudad: " . $this->ciudad . 
				" Pais: " . $this->pais;
		}

		public static function obtenerUsuarios($conexion, $tipoUsuario) {
			$sql = 'SELECT cod_usuario, cod_tipo_usuario, Nombre, apellido, email, password, fecha_nacimiento, ciudad, pais FROM tbl_usuario WHERE cod_tipo_usuario = ' . $tipoUsuario;

			$resultado = $conexion->ejecutarConsulta($sql);


			if ($fila = $conexion->obtenerFila($resultado)) {
				$usuarios[] = $fila;

				while ($fila = $conexion->obtenerFila($resultado)) {
					$usuarios[] = $fila;
				}

				echo json_encode($usuarios);
			}
		}

	}
?>