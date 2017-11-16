
function guardarRegistro(){
	alert("Creacion de una nueva seccion");
}

// Slider en pagina honduras.html
function sliderChange(val){
    document.getElementById('sliderStatus').innerHTML = val;
}

// -- Eventos gestionados por JQUERY para "perfil cuenta" -- 
  $("#btn-close").click(function(e){
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
    //$("#sidebar-wrapper").toggleClass("slow, hidden-xs");
    $("#sidebar-wrapper").toggleClass("hidden-xs");
    $("#contenido-pagina").toggleClass("col-sm-offset-3 col-md-offset-2 col-lg-offset-2");
    $("#btn-close").toggleClass("hidden");
});
    
$("#menu-toggle").click(function(e){
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
    //$("#sidebar-wrapper").toggleClass("slow, hidden-xs");
    $("#sidebar-wrapper").toggleClass("hidden-xs");
    $("#contenido-pagina").toggleClass("col-sm-offset-3 col-md-offset-2 col-lg-offset-2");
    $("#btn-close").toggleClass("hidden");
});
/*
$(document).ready(function(){
    alert("Se cargo el documento");

    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
      e.target // newly activated tab
      e.relatedTarget // previous active tab
    })


    $('#myTabs a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    })  
});
*/
