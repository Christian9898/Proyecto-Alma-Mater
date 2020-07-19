<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Empleo | I.E.P ALMA MATER</title>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
       <link rel="stylesheet" type="text/css" href="css/fontellos.css">
       <link rel="stylesheet" type="text/css" href="css/estiloempleo.css">
       <script src="js/jquery-3.3.1.min.js"></script>
       <script src="js/principales.js"></script>
       <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
       <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
            .hovearan:hover{
            color:  yellow;                
            }
        </style>
    </head>
    <body>
        <main>
            <header>
		<div class="contenedor">
		<ul class="acceso">
                    <li><a href="http://www.facebook.com/groups/1412637689025612/" target="_blank"><img src="imagenes/facebook.png" alt="im_facebook"></a></li>
                    <li><a href="https://guia-lima.portaldeeducacion.pe/primaria/COLEGIO-ALMA-MATER-carabayllo-lima-lima-i43048.htm" target="_blank"><img src="imagenes/googleplus.png" alt="im_googleplus"></a></li>
                    <li><a href="https://www.youtube.com/watch?v=dRUxXToeiDI" target="_blank"><img src="imagenes/youtube.png" alt="img_youtuve"></a></li>
                    <li><a href="mailto:reyesrojas251999@gmail.com" target="_blank"><img src="imagenes/gmail.png" alt="img_gmail"></a></li>
		</ul>
	    <ul class="acceso2">
            <li><a href="Login.jsp" class=""><span class="icon-user-circle-o"></span>Login</a></li>
            <!--<li><a href="#" class=""><span class="icon-user"></span>Docentes</a></li>-->
	    </ul>
	</div>
	<div class="prueba"><img src="imagenes/insignianew.png" class="logocole"><img src="imagenes/letras.png" class="letres"></div>
	</header>
	<div class="listash">
		<div class="menu_bar">
		<a href="#" class="bt-menu"><span class="icon-menu"></span>Menu</a>
		</div>

        <nav>
		<ul>
                <li class="submenu"><a href="principal.jsp">INICIO<span class="caret icon-home"></span></a></li>
	        <li class="submenu"><a href="">EL COLEGIO<span class="caret icon-down-open"></span></a>
                <ul class="children">
	        <li><a href="#">Quiénes somos<span class="icon-dot"></span></a></li>
	        <li><a href="#">Historia<span class="icon-dot"></span></a></li>
                <li><a href="#">Directivos<span class="icon-dot"></span></a></li>
                </ul>
		</li>
		<li><a href="ServletControlador?accion=MostratNiGra">ADMISIÓN</a></li>
		<li><a href="PostulacionCV.jsp">TRABAJO</a></li>
		<li><a href="">PROPUESTA EDUCATIVA</a></li>
		<li class="submenu"><a href="#">NIVELES<span class="caret icon-down-open"></a>
		<ul class="children">
		<li><a href="#">Inicial<span class="icon-dot"></span></a></li>
		<li><a href="#">Primaria<span class="icon-dot"></span></a></li>
		</ul>
		</li>
		<li class="submenu"><a href="">PROGRAMAS<span class="caret icon-down-open"></a>
		<ul class="children">
		<li><a href="#">Arte<span class="icon-dot"></span></a></li>
		<li><a href="#">Computación<span class="icon-dot"></span></a></li>
		<li><a href="#">Laboratorio<span class="icon-dot"></span></a></li>
		<li><a href="#">Danzas<span class="icon-dot"></span></a></li>	
		</ul>
		</li>
		<li class="submenu"><a href="">CONTACTO<span class="caret icon-down-open"></a>
                <ul class="children">
             	<li><a href="#">Contáctenos<span class="icon-dot"></span></a></li>
		<li><a href="ubicacion.jsp">Ubicanos<span class="icon-dot"></span></a></li>
                </ul>
		</li>
		</ul>
	    </nav>
            </div>

            <aside class="trabajo">
            <img src="imagenes/ofertalaboral.png" alt="im_trabajo" class="minedu">
            <img src="imagenes/minepe.jpg" alt="im_trabajo" class="minedu2">
            <div class="enlacesh">
            <h2>"I.E.P ALMA MATER"</h2>
            <h3>Convocatoria Docente 2020</h3>
            </div>
            <a href="https://www.ugel04.gob.pe/index.php/contrato-docente"><img src="imagenes/ingresa_aqui.png" alt="im_ingresar" class="ingresar"></a>
            </aside>

             <form name="formulario" id="formulario" action="ServletPostulante" method="post" enctype="multipart/form-data">
 	     <h1>Solicitud de Entrevista</h1>
             <section class="datgene">
             <p class="subti">Datos Genereales de Postulante</p>

			<label for="txtNombre" class="labe">Nombre :</label>
                        <input type="text" name="txtNombre" id="txtNombre" class="todtext" required="">
			
                        <label for="txtApepate" class="labe2">Apellido Paterno :</label><label for="txtApemate" class="labe3 apar">Apellido Materno :</label>

                        <input type="text" name="txtApepate" id="txtApepate" class="apellido2" required=""><label for="txtApemate" class="labe3 apar2">Apellido Materno :</label><input type="text" name="txtApemate" id="txtApemate" class="apellido" required="">

                        <p class="fecna">Fecha de Nacimiento :</p><input type="date" id="nacimiento" name="nacimiento" class="calendario" name="trip-start" value="" min="1900-01-01" required="">

 			<label for="txtNacionalidad" class="labe2">Nacionalidad :</label><label for="txtTelefono" class="labe3 apar">Celular :</label>
                        <input type="text" id="txtNacionalidad" name="txtNacionalidad" class="apellido2" required=""><label for="txtTelefono" class="labe3 apar2">Celular :</label><input type="text" id="txtTelefono" maxlength="9" name="txtTelefono" class="apellido" required="">

 			<label for="txtDireccion" class="labe">Direccion :</label>
                        <input type="text" id="txtDireccion" name="txtDireccion" class="todtext" required="">
 			<label for="txtCorreo" class="labe">Correo :</label>
                        <input type="text" id="txtCorreo" name="txtCorreo" class="todtext" required="">
                        <p class="subti">Formacion Academica</p>
                        <div id="selecci"></div>
			<label>Nivel de Formacion :</label>
			<div class="radiobt">
                        <input type="radio" class="rad" name="rbForma" value="Bachillerato" id="Bachillerato">
                        <label for="Bachillerato" class="labe8">Bachillerato</label>
                        <input type="radio" class="rad" name="rbForma" value="Titulado" id="Titulado">
                        <label for="Titulado" class="labe8">Titulado</label>
                        <input type="radio" class="rad" name="rbForma" value="Maestria" id="Maestria">
                        <label for="Maestria" class="labe8">Maestria</label>
                        <input type="radio" class="rad" name="rbForma" value="Doctorado" id="Doctorado">
                        <label for="Doctorado" class="labe8">Doctorado</label>
                     </div>
                     <label>Adjuntar su CV(*) :</label>
                     <input type="file" name="fichero" accept="application/pdf" id="fichero" value="" class="alertita" required="">
                     </section>

	    <div class="botonsh">
	    <input type="submit" id="submit" name="btnEnviar" value="Enviar">
            <input type="reset" id="reset" name="btnLimpiar" value="Limpiar">
            <input type="hidden" name="accion" value="ingresolicitud">
            </div>
   
   </form>
            <footer>
                <p style="float: right;" class="hovearan"><span class="icon-book-open"></span><a href="Reclamacion.jsp" style="text-decoration: none;color: white;font-size: 18px;">Libro de Reclamaciones</a></p><br><br>
<p><span class="icon-location"></span><a>Jr Andres Avelino Caceres 365 El Progreso - Carabayllo</a></p>
<p><span class="icon-mobile"></span><a>Central telefónica (01) 547 - 0894</a></p>
<p><span class="icon-mail-alt"></span><a>reyesrojas251999@gmail.com</a></p>
<div><b>COLEGIO ALMA MATER - TODOS LOS DERECHOS RESERVADOS<b></div>
</footer>
        </main>
         <script>
<%if(request.getParameter("soliregis")!=null){%>
var alert = alertify.alert("Error","Solicitud Registrada").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	
<%}%>
       $('#selecci').click(function(){
       document.getElementById("selecci").innerHTML="";
}); 
             $('#txtTelefono').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});

 $('#reset').click(function() { 
  var v2=$('#txtNombre').val();
  var v3=$('#txtApepate').val();
  var v4=$('#txtApemate').val();
  var v5=$('#nacimiento').val();
  var v6=$('#txtNacionalidad').val();
  var v7=$('#txtTelefono').val();
  var v8=$('#txtDireccion').val();
  var v9=$('#txtCorreo').val();
  var v10=$('#fichero').val();
   if(!$("#formulario input[name='rbForma']:radio").is(':checked') && 
  (v2==="") && 
  (v3==="") && 
  (v4==="") && 
  (v5==="") && 
  (v6==="") && 
  (v7==="") && 
  (v8==="") && 
  (v9==="") &&
  (v10==="")){
  
  }else{
      alertify.success("Campos Limpiados");
      document.getElementById("selecci").innerHTML="";
  }  
});
  $('#submit').click(function(){
  var v2=$('#txtNombre').val();
  var v3=$('#txtApepate').val();
  var v4=$('#txtApemate').val();
  var v5=$('#nacimiento').val();
  var v6=$('#txtNacionalidad').val();
  var v7=$('#txtTelefono').val();
  var v8=$('#txtDireccion').val();
  var v9=$('#txtCorreo').val();
  var v10=$('#fichero').val();
   if((v2==="") || 
  (v3==="") || 
  (v4==="") || 
  (v5==="") || 
  (v6==="") || 
  (v7==="") || 
  (v8==="") || 
  (v9==="")){
  }else{  
if($("#formulario input[name='rbForma']:radio").is(':checked')) {
 document.getElementById("selecci").innerHTML="";
 }else{
     document.getElementById("selecci").innerHTML='<div>Falta escoger una opcion</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 }     
   if($("#txtTelefono").val().length < 9 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="") {  
        alertify.success("El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtTelefono").focus();
        return false;  
    } 
   if(($("#txtCorreo").val().indexOf('@', 0) === -1 || $("#txtCorreo").val().indexOf('.', 0) === -1) && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="") {  
        alertify.success("El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        $("#txtCorreo").focus();
        return false;  
    } 
  }
              }); 
 $('#formulario').click(function(){
      document.getElementById("selecci").innerHTML="";
 });  
 
 $('input[type="file"]').on('change', function(){
  var ext = $( this ).val().split('.').pop();
  if ($( this ).val() !== '') {
    if(ext === "pdf"){
      if($(this)[0].files[0].size > 1048576){
        console.log("El documento excede el tamaño máximo");
        /*$('#modal-title').text('¡Precaución!');
        $('#modal-msg').html("Se solicita un archivo no mayor a 1MB. Por favor verifica.");
        $("#modal-gral").modal();*/           
        $(this).val('');
      }else{
        $("#modal-gral").hide();
      }
    }
    else
    {
      $( this ).val('');
      alertify.error("Extensión no permitida: " + ext);
    }
  }
});
</script>
    </body>
</html>
