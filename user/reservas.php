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
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
            <li class="active"><a class="lista" href="dashboard.php">Panel de Control</a></li>
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
          <h1 class="titulo-cuenta page-header">Reservas</h1>

          <div class="row placeholders">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left">

              <div class="envoltura-contenedor-reservas">
                <div class="contenedor-reservas">
                  <h3 class="reservas">No hay reservaciones disponibles.</h3>
                </div>
              </div>
              
            </div>
          </div>

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
  <script src="../js/jquery.min.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="../js/bootstrap.min.js"></script>

  <!-- Custom JavaScript -->
  <script src="../js/controlador.js"></script>
  <script src="../js/funcionalidades.js"></script>

</body>
</html>
