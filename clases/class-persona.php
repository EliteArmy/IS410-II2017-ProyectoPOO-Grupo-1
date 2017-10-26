<?php

	 abstract class Persona {

		protected $nombre;
		protected $apellido;
		protected $edad;
		protected $genero;
		protected $telefono;

		public function __construct(
				$nombre,
				$apellido,
				$edad,
				$genero,
				$telefono){
			$this->nombre = $nombre;
			$this->apellido = $apellido;
			$this->edad = $edad;
			$this->genero = $genero;
			$this->telefono = $telefono;
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

		public function getEdad(){
			return $this->edad;
		}
		public function setEdad($edad){
			$this->edad = $edad;
		}

		public function getGenero(){
			return $this->genero;
		}
		public function setGenero($genero){
			$this->genero = $genero;
		}

		public function getTelefono(){
			return $this->telefono;
		}
		public function setTelefono($telefono){
			$this->telefono = $telefono;
		}

		public function __toString(){
			return "Nombre: " . $this->nombre .
				" Apellido: " . $this->apellido .
				" Edad: " . $this->edad .
				" Genero: " . $this->genero . 
				" Telefono: " . $this->telefono;
		}


	}
?>