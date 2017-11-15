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
					$email,
					$password,
					$nombre = null,
					$apellido = null,
					$fechaNacimiento = null,
					$ciudad = null,
					$pais = null){
			$this->codUsuario = $codUsuario;
			$this->codTipoUsuario = $codTipoUsuario;
			$this->nombre = $nombre;
			$this->apellido = $apellido;
			$this->email = $email;
			$this->password = $password;
			$this->fechaNacimiento = $fechaNacimiento;
			$this->ciudad = $ciudad;
			$this->pais = $pais;
			echo "Instancia creada!";
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

		public static function obtenerUsuario($conexion, $codigoUsuario = 0) {
			$sql = 'SELECT cod_usuario, cod_tipo_usuario, nombre, apellido, email, password, fecha_nacimiento, ciudad, pais FROM tbl_usuario WHERE cod_usuario = ' . $codigoUsuario;

			$resultado = $conexion->ejecutarConsulta($sql);

			if ($fila = $conexion->obtenerFila($resultado)) {
				echo json_encode($fila);
			}
		}

		public static function obtenerUsuarios($conexion, $tipoUsuario) {
			$sql = 'SELECT cod_usuario, cod_tipo_usuario, nombre, apellido, email, password, fecha_nacimiento, ciudad, pais FROM tbl_usuario WHERE cod_tipo_usuario = ' . $tipoUsuario;

			$resultado = $conexion->ejecutarConsulta($sql);


			if ($fila = $conexion->obtenerFila($resultado)) {
				$usuarios[] = $fila;

				while ($fila = $conexion->obtenerFila($resultado)) {
					$usuarios[] = $fila;
				}

				echo json_encode($usuarios);
			}
		}

		public function insertarUsuario($conexion){
			$sql = sprintf("INSERT INTO tbl_usuario(cod_tipo_usuario, email, password) 
							VALUES (%s, '%s', '%s')",
							$conexion->antiInyeccion($this->codTipoUsuario),
							$conexion->antiInyeccion($this->email),
							$conexion->antiInyeccion($this->password)
						);

			$resultado = $conexion->ejecutarConsulta($sql);

			return $conexion->ultimoId();
		}

		public function insertarUsuarioNuevo($conexion){

			$sql = sprintf("INSERT INTO tbl_usuario(cod_tipo_usuario, email, password) 
							VALUES (%s, '%s', '%s')",
							$conexion->antiInyeccion($this->codTipoUsuario),
							$conexion->antiInyeccion($this->email),
							$conexion->antiInyeccion($this->password)
						);

			echo "<b>Usuario almacenado con exito</b>";
			$resultado = $conexion->ejecutarConsulta($sql);
		}

		public function eliminarUsuario($conexion, $codigoUsuario){
			$sql = 'DELETE FROM tbl_usuario WHERE cod_usuario = ' . $codigoUsuario;

			$resultado = $conexion->ejecutarConsulta($sql);

			echo "usuario eliminado";
		}

		public static function verificarUsuario($conexion, $email,$password, $tipoUsuario){
				$sql = sprintf(
						"SELECT cod_usuario, cod_tipo_usuario, nombre, apellido, email, url_img_usuario
						FROM tbl_usuario 
						WHERE cod_tipo_usuario = %s AND email = '%s' AND password = '%s'",
						$tipoUsuario, $email, $password
					);
				//echo ($sql);
				$resultado = $conexion->ejecutarConsulta($sql);

				$cantidadRegistros = $conexion->cantidadRegistros($resultado);
				$respuesta=array();
				if ($cantidadRegistros==1){
					$fila = $conexion->obtenerFila($resultado);
					$_SESSION["codigo_usuario"] = $fila["cod_usuario"];
					$_SESSION["correo"] = $fila["email"];
					$_SESSION["nombre"] = $fila["nombre"];
					$_SESSION["apellido"] = $fila["apellido"];
					$_SESSION["img"] = $fila["url_img_usuario"];
					$_SESSION["tipo_usuario"] = $fila["cod_tipo_usuario"];
					$respuesta["status"]=1;
					$respuesta["mensaje"]="Si tiene acceso" ;
				}else{
					$respuesta["status"]=0;
					$respuesta["mensaje"]="No tiene acceso" ;
				}

				echo json_encode($respuesta);
		}
	}
?>