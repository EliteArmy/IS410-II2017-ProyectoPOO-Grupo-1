<?php
    session_start();
    if (!isset($_SESSION["codigo_usuario"])){
        header("Location: ../login/index.html");
    } else if (!($_SESSION["tipo_usuario"] == 1))
        header("Location: ../login/index.html");
?>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->

  <meta name="viewport" content="width=device-width, user-scalable=0, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="Coffee Icon" href="../img/trivago.png">

  <title> Zona para miembros </title>

  <!-- Bootstrap core CSS -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../css/dashboard.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="../css/ariel-custom-css.css">

</head>

<body>

<!-- Todo el Cuerpo de la pagina -->
<div>

  <!-- Barra de Parte Superior -->
  <nav class="navbar">
    <div class="container-fluid envoltura-barra-navegacion-top">
      
      <div class="navbar-header text-center">
        <!---<button type="button" class="boton-barra-menu navbar-toggle collapsed glyphicon glyphicon-align-justify" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> Menú
          <span class="sr-only">Toggle navigation</span>
        </button>-->

        <a onclick="abrirMenu();" href="#menu-toggle" class="btn btn-default boton-barra-menu navbar-toggle collapsed glyphicon glyphicon-align-justify" id="menu-toggle"> Abrir Menú </a>

        <a class="foto" href="../index.html">
            <img src="../img/notTrivago.png" alt="Nottrivago" height="44" width="152">
        </a>
        
      </div>

      <!---<div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Dashboard</a></li>
          <li><a href="#">Settings</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Help</a></li>
        </ul>
      </div>-->

    </div>
  </nav>
  <!-- /#Barra de Parte Superior -->
  
  <!-- Envoltura Barra Izquierda & Contenido de la Pagina -->
  <div id="wrapper">
    
    <!-- Barra Izquierda & Contenido de la Pagina -->
    <div class="container-fluid container-fluid-fix">
      
      <div class="row row-margin-fix">
        
        <!-- Barra de Menu Izquierdo-->
        <div id="sidebar-wrapper" class="col-sm-3 col-md-2 col-lg-2 sidebar hidden-xs envoltura-barra-principal">
          <ul id="btn-close" class="nav nav-sidebar hidden borde-close">
            <li class="active"><a class="lista" href="#">[x] Close</a></li>
          </ul>
          <ul class="nav nav-sidebar borde">
            <li class="active"><a class="lista " href="../index.html"> < Volver a la Búsqueda <span class="sr-only">(current)</span></a></li>
          </ul>
          <ul class="nav nav-sidebar borde-dos">
            <li class="active"><a class="lista" href="index.php">Panel de Control</a></li>
            <li class="active"><a class="lista" href="ajustes.php">Ajustes</a></li>
            <li class="active"><a class="lista" href="reservas.php">Reservas</a></li>
            <li class="active"><a class="lista" href="lista-hoteles.php">Listas de Hoteles</a></li>
            <li class="active"><a class="lista" href="alerta-precios.php">Alerta de Precios</a></li>
            <li class="active"><a class="lista" href="busqueda-reciente.php">Busquedas Recientes</a></li>
            <li class="active"><a class="lista" href="suscripciones.php">Suscripciones</a></li>
          </ul>
          <ul class="nav nav-sidebar borde-tres">
            <li class="active"><a class="lista" href="cerrar_sesion.php">Cerrar Sesión</a></li>
          </ul>

        </div>
        <!-- /#Barra de Menu Izquierdo-->

        <!-- Contenido de la Pagina-->
        <div id="contenido-pagina" class="col-sm-9 col-md-10 col-lg-10 main">
          <h1 class="titulo-cuenta page-header">Panel de control</h1>

          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
              <section class="fondo-tarjeta">
                  <div class="fondo-tarjeta-envoltura">
                    <div class="fondo-tarjeta-imagen">
                    
                      <div class="fondo-tarjeta-imagen-final"> 
                        <picture>
                        <img src="../img/perfil-cuenta/dashboard_image_1000x226.png" class="img-responsive center-block imagen-fondo" alt="trivago">
                        <!-- Images can be made responsive-friendly via .img-responsive class. This applies max-width: 100%;, height: auto; and display: block; to the image so that it scales to the parent element. To center images which use the .img-responsive class, use .center-block -->
                        </picture>
                        <span class="gradiente"></span>
                        <h4 class="mensaje-bienvenida">¡Hola de nuevo, viajero!</h4>
                      </div>
                    </div>
                  </div>

                  <div class="random1">
                  <picture class="fondo-avatar">
										<img src="../img/perfil-cuenta//avatar.png" class="text-center imagen-fondo2" alt="Avatar">
            			</picture>
                  </div>

                  <p class="fondo-tarjeta-titulo">
                    <span>Tu perfil está al 0 %.</span>
                    <a class="text-primary" href="#">¡Complétalo ahora!</a>
                  </p>
              </section>

            </div>
          </div>

          <section class="arreglo-tamanio">
            <h2 class="sub-titulo-cuenta">Aspectos destacados de tu cuenta</h2>
           
            <div class="resumen-cuenta">
              
              <table class="tabla-resumen table">
                <tbody class="sub-tabla-resumen">
                  <tr> <!--Fila-->
                      <th class="sub-tabla-titulo">Añadidos recientemente
                        <p class="sub-tabla-infomacion">
                          Haz clic en el corazón sobre la imagen de un hotel para añadirlo a la lista.
                        </p>
                      </th>
                  </tr> <!-- /#Fila-->
                </tbody>
              </table>

              <table class="table tabla-resumen">
                <tbody class="sub-tabla-resumen">
                  <tr> <!--Fila-->
                      <th class="sub-tabla-titulo">Alerta de precios para tu hotel ideal
                        <p class="sub-tabla-infomacion">
                          Te enviaremos un correo electrónico cuando el hotel baje su precio
                        </p>
                      </th>
                  </tr> <!-- /#Fila-->
                </tbody>
              </table>

            </div>
          </section>

        </div>
        <!-- /#Contenido de la Pagina -->

      </div>
    </div>
    <!-- /# Barra Izquierda & Contenido de la Pagina -->
  </div>
  <!-- /#Envoltura Barra Izquierda & Contenido de la Pagina -->

</div>
<!-- /#Todo el Cuerpo de la pagina -->

  <!-- ========================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

  <!-- jQuery -->
  <script src="../../js/jquery.min.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="../../js/bootstrap.min.js"></script>

  <!-- Custom JavaScript -->
  <script src="../../js/controlador.js"></script>
  <script src="../../js/funcionalidades.js"></script>

</body>
</html>
