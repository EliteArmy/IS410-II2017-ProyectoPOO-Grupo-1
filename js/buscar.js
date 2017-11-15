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
	var parametro = gup('buscar');

	$('#txt-buscar').val(parametro);
	$('#txt-buscar').focus();

});