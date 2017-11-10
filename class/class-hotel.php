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

}

?>