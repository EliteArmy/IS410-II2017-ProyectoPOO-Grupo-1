<?php

	class Usuario{

		private $codUsuario;
		private $codTipoUsuario;
		private $nombre;
		private $apellido;
		private $email;
		private $password;
		private $fechaNacimiento;
		private $cíudad;
		private $pais;

		public function __construct($codUsuario,
					$codTipoUsuario,
					$nombre,
					$apellido,
					$email,
					$password,
					$fechaNacimiento,
					$cíudad,
					$pais){
			$this->codUsuario = $codUsuario;
			$this->codTipoUsuario = $codTipoUsuario;
			$this->nombre = $nombre;
			$this->apellido = $apellido;
			$this->email = $email;
			$this->password = $password;
			$this->fechaNacimiento = $fechaNacimiento;
			$this->cíudad = $cíudad;
			$this->pais = $pais;
		}
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
		public function getCíudad(){
			return $this->cíudad;
		}
		public function setCíudad($cíudad){
			$this->cíudad = $cíudad;
		}
		public function getPais(){
			return $this->pais;
		}
		public function setPais($pais){
			$this->pais = $pais;
		}
		public function toString(){
			return "CodUsuario: " . $this->codUsuario . 
				" CodTipoUsuario: " . $this->codTipoUsuario . 
				" Nombre: " . $this->nombre . 
				" Apellido: " . $this->apellido . 
				" Email: " . $this->email . 
				" Password: " . $this->password . 
				" FechaNacimiento: " . $this->fechaNacimiento . 
				" Cíudad: " . $this->cíudad . 
				" Pais: " . $this->pais;
		}
	}
?>