function gup( name ){
	var regexS = "[\\?&]"+name+"=([^&#]*)";
	var regex = new RegExp ( regexS );
	var tmpURL = window.location.href;
	var results = regex.exec( tmpURL );
	if( results == null )
		return"";
	else
		return results[1];
}

$(document).ready(function () {
  $("#btn-map").click(function () {
    window.location = "mapa.html";
  });

	var parametro = gup('buscar');

	$('#txt-buscar').val(parametro);
	$('#txt-buscar').focus();

	$.ajax({
			url:'../ajax/hoteles-controlador.php?accion=obtner-hoteles',
			data: 'ciudad=Tegucigalpa',
			method: 'POST',
			dataType:"html",
			success: function(resultado){
				alert(resultado);
	
						$('#div-resultados').append(
		'<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 float-left col-padding-fix3">' +
                
                '<div class="envoltura-lista-hoteles"> ' +

                  '<section class="primer-cuadro form-inline form-group">' +
                    '<img onclick="verMas()" class="borde-imagen" src="../img/hoteles/hotel1.jpg">' +
                  '</section>' +
                  
                  '<section class="segundo-cuadro form-inline form-group">' +
                    '<h3 class="nombre-hotel">' +
                      'Grand Roatan Caribbean Res...' +
                    '</h3>' +

                    '<h5 class="ubicacion">' +
                      'Roatán,Islas de la Bahía, Honduras' +
                    '</h5>' +
                    
                    '<p class="detalles-calificacion">' +
                      '<button id="boton-calificacion" class="btn boton-excelente"> 87 </button>' +
                      '<span id="calidad-hotel" class="calidad">Excelente</span>' +
                      '<span id="numero-opiniones" class="opiniones">(151 opiniones)</span>' +
                    '</p>' +

                    '<div id="servicios-hotel" class="servicios-del-hotel">' +
                      '<button class="btn btn-corregido">' +
                        'Alberca genial' +
                      '</button>' +
                    '</div>' +

                  '</section>' +

                  '<section class="tercer-cuadro form-inline form-group">' +
                    '<button class="btn btn-pag">Expedia<br>' +
                      '<strong>$240</strong>' +
                    '</button> ' +

                    '<button class="btn btn-pag">Hotels.com<br>' +
                      '<strong>$240</strong>' +
                    '</button>' +

                    '<button class="btn btn-pag">Cancelon<br>' +
                      '<strong style="color: #CC4A30;">$283</strong>' +
                    '</button>' +

                    '<hr class="hr1">' +

                    '<button class="btn btn-pag" style="color: #333;">' +
                      '<strong>Más ofertas: 20</strong>' +
                    '</button>' +
                  '</section>' +

                  '<section class="ultimo-cuadro form-inline form-group">' +
                    '<button class="btn btn-pag" style="color: #333;">Expedia' +
                      '<strong class="precio-rojo"><strike>$140</strike></strong><br>' +
                      '<strong class="precio-verde">$103</strong>' +
                    '</button>' +
                    '<button class="btn btn-desayuno">' +
                      'Desayuno gratis' +
                    '</button>' +
                    '<button class="btn btn-lg btn-oferta">' +
                      'Ver oferta' +
                    '</button>' +
                  '</section>' +

                  '<section id="mostrar-informacion-extra" class="hidden informacion-extra">' +

                      '<div class="navbar" role="navigation">' +
                        '<ul class="nav nav-tabs" id="myTabs">' +
                          
                          '<li class="active"><a href="#fotos-hotel" data-toggle="tab">Fotos</a></li>' +
                          
                          '<li><a href="#informacion-hotel" data-toggle="tab">Información</a></li>' +
                          
                          '<li><a href="#opiniones-hotel" data-toggle="tab">Opiniones</a></li>' +
                          
                          '<li><a href="#ofertas-hotel" data-toggle="tab">Ofertas</a></li>' +

                        '</ul>' +
                      '</div>' +

                      '<div class="tab-content" id="myTabContent">' +

                        '<div class="tab-pane fade in active carousel" id="fotos-hotel">' +
                          
                          '<div id="carousel-hotel" class="carousel slide" data-ride="carousel">' +
                            '<ol class="carousel-indicators">' +
                              '<li data-target="#carousel-hotel" data-slide-to="0" class="active"></li>' +
                              '<li data-target="#carousel-hotel" data-slide-to="1"></li>' +
                              '<li data-target="#carousel-hotel" data-slide-to="2"></li>' +
                            '</ol>' +

                            '<div class="carousel-inner" role="listbox">' +
                              '<div class="item active">' +
                                '<img src="../img/hoteles/hotel4.jpg" alt="Hotel">' +
                              '</div>' +

                              '<div class="item">' +
                                '<img src="../img/hoteles/hotel2.jpg" alt="Hotel">' +
                              '</div>' +

                              '<div class="item">' +
                                '<img src="../img/hoteles/hotel3.jpg" alt="Hotel">' +
                              '</div>' +
                            '</div>' +

                            '<a class="left carousel-control" href="#carousel-hotel" role="button" data-slide="prev">' +
                              '<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>' +
                              '<span class="sr-only">Previous</span>' +
                            '</a>' +
                            '<a class="right carousel-control" href="#carousel-hotel" role="button" data-slide="next">' +
                              '<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>' +
                              '<span class="sr-only">Next</span>' +
                            '</a>' +
                          '</div>' +

                        '</div>' +
                        
                        '<div class="tab-pane fade" id="informacion-hotel">' +
                          '<div class="descripcion-hotel">' +
                            '<h5>' +
                              '<b>Por la mañana, deléitate con un delicioso desayuno tradicional en cortesía. Entre las'  +
                              'demás comodidades de la habitación, se incluyen plancha y tabla de planchar, secador de pelo' +
                               'y caja fuerte, Si deseas hacer ejercicio visita el moderno gimnasio en el último piso, que' +
                                'ofrece pista para trotar y una magnífica vista a la ciudad que puedes contemplar mientras' +
                                 'realizas tu rutina.' +
                              '</b>' +
                            '</h5>' +
                          '</div>' +
                        '</div>' +
                        
                        '<div class="tab-pane fade opiniones-hotel" id="opiniones-hotel">' +
                            '<div id="opinion-Usuario">' +
                              '<h5>' +
                                '<b>Usuario</b>' +
                              '</h5>' +
                            '</div>' +
                            '<div id="comentario-Usuario">' +
                              '<h5>' +
                                '<b>Hotel está bien, para ser nuevo debería tener un poco más de limpieza. El desayuno deja' +
                                'mucho que desear y el mobiliario del restaurante está mal (mesas). La ubicación del mall' +
                                'da un extra.' +
                              '</b>' +
                            '</h5>' +
                            '</div>' +
                        '</div>' +

                        '<div class="tab-pane fade ofertas-hotel" id="ofertas-hotel">' +
                          '<h5><b>Recomendamos</b></h5>' +
                          '<div class="ofertas-hotel-inner">' +
                            '<img id="" class="" src="../img/hoteles-iconos/despegar.com.png">' +
                            '<h5><b>Habitación Doble - ¡Reserva ahora y paga después! - Desayuno incluido - Conexión WiFi' +
                            'gratuita Desayuno gratis Paga en el hotel </b>' +
                            '</h5>' +
                          '</div>' +
                          '<div class="ofertas-hotel-inner">' +
                            '<img id="" class="" src="../img/hoteles-iconos/booking.com.png">' +
                            '<h5><b>Habitación, 1 cama de matrimonio grande, frigorífico (Desayuno gratis, Aparcamiento' +
                             'gratis, Wifi gratis) Desayuno gratis</b>' +
                            '</h5>' +
                            
                          '</div>' +
                          
                        '</div>' +

                      '</div>' +

                  '</section>' +

                '</div>' +

              '</div>'
	);

						
			},
			error:function(e){
				alert(e + " asdfa");
			}
	});


	

});