<?php

class Usuario extends Persona{
	
	protected $correo;
	protected $password;

	public function __construct($nombre,$apellido,$edad,$genero,$telefono,
			$correo,$password){

		parent::__construct($nombre, $apellido, $edad, $genero,	$telefono);

		$this->correo = correo;
		$this->password = password;
	}

	public function getCorreo() {
		return $this->correo;
	}
	public function setCorreo(correo) {
		$this->correo = correo;
	}

	public function getPassword() {
		return $this->password;
	}
	public function setPassword(password) {
		$this->correo = password;
	}

	public function __toString(){
			return "";
	}

}

?>