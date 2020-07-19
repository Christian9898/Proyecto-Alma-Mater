//Veriricar que la web terminó de cargar
$(document).ready(function(){
	//console.log("Todo listo, iniciemos");
	$("#destino").val("Caceres 335, Carabayllo 15321, Perú");
	var destino = $("#destino").val();
	/*Verificar si el navegador cuenta con el objeto geolocation*/
	if(navigator.geolocation){
		console.log("geolocation activo");
		navigator.geolocation.getCurrentPosition(correcto,falla); //correcto y falla son funciones que se deben crear
	}else{
		console.log("No podemos usar geolocation");
	}
	//función falla
	function falla(x){
		console.log("Ocurrio un error, no se puede obtener la geolocalización");
	}
	//función correcto
	function correcto(resp){
		console.log(resp);
		var lat = resp.coords.latitude;
		var lon = resp.coords.longitude;
		//llamar a la función mostrarcoordenadas
		mostrarcoordenadas(lat,lon);
		//llamar a la función crearmapa
		crearmapa(lat,lon);
	}
	
	//crenado función mostrarcoodenadas
	function mostrarcoordenadas(lat,lon){
		$("#latitud").val(lat);
		$("#longitud").val(lon);
	}
	
	//Crear mapa con api de google
	function crearmapa(p1,p2){
		var glatlong = new google.maps.LatLng(p1,p2);
		//mostrar dirección
		mostrardireccion(glatlong);
		//configurar el mapa
		var configmapa = {
			center: glatlong,
			zoom: 17
		}
		//capturar el elemento web que contendrá al mapa
		var marcomapa = document.getElementById("marcomapa");
		//crear el mapa
		var gmapa = new google.maps.Map(marcomapa,configmapa);
		//llamar a crearmarcador
		crearmarcador(glatlong,gmapa);
	}
	//CREAR UN MARCADOR
	function crearmarcador(coordenadas,gmapa){
		var configmarcador = {
			position: coordenadas,
			map: gmapa,
			title: "Estas aqui",
			animation: google.maps.Animation.DROP,
			draggable:true
		}
		var gmarcador = new google.maps.Marker(configmarcador);
		//agregar evento al gmarcador
		google.maps.event.addListener(gmarcador,"dragend",function(){
			var l = gmarcador.getPosition().lat();
			var ln = gmarcador.getPosition().lng();
			mostrarcoordenadas(l,ln);
			mostrardireccion(gmarcador.getPosition());
			verruta(gmapa,gmarcador.getPosition(),destino);
		});
		
		
		verruta(gmapa,coordenadas,destino);
	}
	//función para geocodificar la dirección
	function mostrardireccion(coordenadas){
		var gcoder = new google.maps.Geocoder();
		//pasar el argumento a ser traducido
		var traducir = {
			location: coordenadas,
		}
		gcoder.geocode(traducir,verdireccion);
		//función verdireccion
		function verdireccion(resp){
			var dato = resp[1].formatted_address;
			$("#direccion").val(dato);
		}
	}
	
	//mostrar ruta de el punta A al punto B
	//creando variable global
	var configDR = {
		suppressMarkers: true,
		map: null,
	}
	var dr = new google.maps.DirectionsRenderer(configDR);
	function verruta(gmapa,origen,destino){
		dr.setMap(gmapa);
		var configDS = {
			origin: origen,
			destination: destino,
			travelMode: google.maps.TravelMode.DRIVING
		}
		var ds = new google.maps.DirectionsService();
		ds.route(configDS,fruta);
		//creando la función fruta
		function fruta(resultado,status){
			console.log(resultado.routes);
			if(status=="OK"){
			   dr.setDirections(resultado);
			}else{
			   console.log("Error: " + status);
			}
		}
	}
	
	
});


















