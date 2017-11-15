<?php
    session_start();
    if (!isset($_SESSION["codigo_usuario"])){
        header("Location: index.html");
    }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../img/trivago.png">

    <title>NotTrivago: admin</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/admin.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span style="color: #293339;">Not</span><span style="color: #0073CF;">Tri</span><span style="color: #F48F00;">va</span><span style="color: #C94A38;">go</span>: admin</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li> -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Navegar <span class="caret"></span></a>
                <ul class="dropdown-menu" >
                    <li><a href="#">Usuarios</a></li>
                    <li><a href="#">Hoteleros</a></li>
                    <li><a href="#">Administradores</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Configuraciones</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="glyphicon glyphicon-user" aria-hidden="true"></span><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Configurar Perfil</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="cerrar_sesion.php">Cerrar Sesion</a></li>
                </ul>
            </li>
          </ul>
          <!-- <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form> -->
        </div>
      </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="">Inicio</a></li>
                    <br>
                    <li><a href="usuarios.php">Usuarios</a></li>
                    <li><a href="hoteleros.php">Hoteleros</a></li>
                    <li><a href="administradores.php">Administradores</a></li>
                    <br>                                        
                    <li><a href="hoteles.php">Hoteles</a></li>
                    <li><a href="#">configuraciones</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Administradores</h1>
                <div class="row placeholders">
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="../img/admin/luffy.png" width="200" style="position: center" height="200" class="img-responsive img-circle" alt="Generic placeholder thumbnail">
                        <h4>Mugiwara No Luffy</h4>
                        <span class="text-muted">Admin: Supremo</span>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                        <h4>Label</h4>
                        <span class="text-muted">Something else</span>
                    </div>
                </div>

                <h2 class="sub-header">Notificaciones</h2>
                <div class="row">
    	            <div class="col-sm-4">
    				    <div class="input-group">
      		                <input type="text" class="form-control" placeholder="buscar Usuario">
              				<span class="input-group-btn">
            				    <button class="btn btn-primary" type="button">
        			     	       <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
        	       	            </button>
      		                </span>
    				    </div><!-- /input-group -->
  				    </div><!-- /.col-lg-6 -->
  		            <div class="btn-group" role="group" aria-label="...">
	                    <button type="button" class="btn btn-default">
	                    	<span class="glyphicon glyphicon-pencil"></span>
	                    </button>
	                    <button type="button" class="btn btn-default">
	                    	<span class="glyphicon glyphicon-floppy-disk"></span>
	                    </button>
	                    <button type="button" class="btn btn-default">
	                    	<span class="glyphicon glyphicon-trash"></span>
	                    </button>
			        </div>
			    </div><!-- /.row -->
			    <br>
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                	<th><input type="checkbox" class="checkbox"></th>
                  	<th>#</th>
                  	<th>Header</th>
                  	<th>Header</th>
                  	<th>Header</th>
                  	<th>Header</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                	<td><input type="checkbox" class="checkbox"></td>
                  	<td>1,001</td>
                  	<td>Lorem</td>
                  	<td>ipsum</td>
                  	<td>dolor</td>
                  	<td>sit</td>
                </tr>
                <tr class="danger">
                	<td><input type="checkbox" class="checkbox"></td>
                  	<td>1,002</td>
                  	<td>amet</td>
                  	<td>consectetur</td>
                  	<td>adipiscing</td>
                  	<td>elit</td>
                </tr>
                <tr>
                	<td><input type="checkbox" class="checkbox"></td>
                  	<td>1,003</td>
                  	<td>amet</td>
                  	<td>consectetur</td>
                  	<td>adipiscing</td>
                  	<td>elit</td>
                </tr>

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
