<?php

	class Ubicacion{

		private $cod_ubicacion;
		private $cod_ciudad;
		private $latitud;
		private $longitud;

		public function __construct($cod_ubicacion,
					$cod_ciudad,
					$latitud,
					$longitud){
			$this->cod_ubicacion = $cod_ubicacion;
			$this->cod_ciudad = $cod_ciudad;
			$this->latitud = $latitud;
			$this->longitud = $longitud;
		}
		public function getCod_ubicacion(){
			return $this->cod_ubicacion;
		}
		public function setCod_ubicacion($cod_ubicacion){
			$this->cod_ubicacion = $cod_ubicacion;
		}
		public function getCod_ciudad(){
			return $this->cod_ciudad;
		}
		public function setCod_ciudad($cod_ciudad){
			$this->cod_ciudad = $cod_ciudad;
		}
		public function getLatitud(){
			return $this->latitud;
		}
		public function setLatitud($latitud){
			$this->latitud = $latitud;
		}
		public function getLongitud(){
			return $this->longitud;
		}
		public function setLongitud($longitud){
			$this->longitud = $longitud;
		}
		public function toString(){
			return "Cod_ubicacion: " . $this->cod_ubicacion .
				" Cod_ciudad: " . $this->cod_ciudad .
				" Latitud: " . $this->latitud .
				" Longitud: " . $this->longitud;
		}
	}
?>
