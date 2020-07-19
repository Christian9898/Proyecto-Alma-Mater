<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Reclamacion | I.E.P ALMA MATER</title>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
       <script src="http://code.jquery.com/jquery-latest.js"></script>
       <link rel="stylesheet" type="text/css" href="css/fontellos.css">
       <link rel="stylesheet" type="text/css" href="css/estiloreclamacion.css">
       <script src="js/jquery-3.3.1.min.js"></script>
       <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
       <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
       <style>
            .hovearan:hover{
            color:  yellow;                
            }
            .cole{
                text-align: center;
                background:transparent;
                border: none;
    outline:none !important;
    outline-width: 0 !important;
    box-shadow: none;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
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
            <form action="ServletControlador?accion=Registarreclama" id="formulario" method="post">
		<section class="content-form">
		<h1 class="formulario__titulo">Libro de Reclamacion I.E.P ALMA MATER</h1>


	<h3 class="sub-form">Datos del Alumno</h3>
		<div class="form-group width-12">
		<div class="width-4">
                    <input type="text" name="txtNombre" id="txtNombre" class="formulario__input" required="">
	    <label class="formulario__label">Nombre</label>
	</div>
		<div class="width-4">
                    <input type="text" name="txtApePat" id="txtApePat" class="formulario__input" required="">
	    <label class="formulario__label">Apellido Paterno</label>
	</div>
		<div class="width-4">
                    <input type="text" name="txtApeMat" id="txtApeMat" class="formulario__input" required="">
		<label class="formulario__label">Apellido Materno</label>
	</div>
	</div>
	<div class="form-group width-12">
		<div class="width-10">
                    <input type="text" name="txtIden" id="txtIden" maxlength="8" class="formulario__input" required="">
	    <label class="formulario__label">Dni</label>
	</div>
	<div class="width-10">
            <input type="number" name="edad" id="edad" min="1" max="15" placeholder="Edad" onKeyPress="if(this.value.length===2) return false;" class="formulario__input" required="">
	</div>
	</div>
	<h3 class="sub-form">Datos Apoderado</h3>
		<div class="form-group width-12">
		<div class="width-4">
                    <input type="text" name="txtNombreApode" id="txtNombreApode" class="formulario__input" required="">
	    <label class="formulario__label">Nombre</label>
	</div>
		<div class="width-4">
                    <input type="text" name="txtApePatApode" id="txtApePatApode" class="formulario__input" required="">
	    <label class="formulario__label">Apellido Paterno</label>
	</div>
		<div class="width-4">
                    <input type="text" name="txtApeMatApode" id="txtApeMatApode" class="formulario__input" required="">
		<label class="formulario__label">Apellido Materno</label>
	</div>
	</div>
	<div class="form-group width-12">
		<div class="width-10">
                    <input type="text" name="txtIdenApode" id="txtIdenApode" maxlength="8" class="formulario__input" required="">
	    <label class="formulario__label">Dni</label>
	</div>
		<div class="width-10">
                    <input type="text" name="txtCorreoApode" id="txtCorreoApode" class="formulario__input" required="">
	    <label class="formulario__label">Correo</label>
	</div>
	</div>
		<div class="form-group width-12">
		<div class="width-10">
                    <input type="text" name="txtTelfApode" id="txtTelfApode" maxlength="7" class="formulario__input" required="">
	    <label class="formulario__label">Telefono</label>
	</div>
		<div class="width-10">
                    <input type="text" name="txtCelApode" id="txtCelApode" maxlength="9" class="formulario__input" required="">
	    <label class="formulario__label">Celular</label>
	</div>
	</div>
    <div class="form-group width-13">
		<div class="width-12">
                    <input type="text" name="txtDireApode" id="txtDireApode" class="formulario__input" required="">
	    <label class="formulario__label">Direccion</label>
	</div>
	</div>
        <h3 class="sub-form">Informacion General</h3>
        <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 30px;font-size: 20px;">Institucion Educativa: </p>
	</div>
		<div class="width-10">
                    <input type="text" name="txtNomCole" class="formulario__input cole" value="I.E.P ALMA MATER" readonly>
	</div>
	</div>
         <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 50px;font-size: 20px;">Identificacion del bien contratado: </p>
	</div>
		<div class="width-10">
                    <div class="form-group width-12">
                    	<div class="width-10">
                        <label for="PRODUCTO"><input type="radio" name="txtbiecon" value="PRODUCTO" id="PRODUCTO" required="">PRODUCTO</label>
                        </div>
                        <div class="width-10">
                        <label for="SERVICIO"><input type="radio" name="txtbiecon" value="SERVICIO" id="SERVICIO" >SERVICIO</label>
                        </div>  
                    </div>
	</div>
	</div>
        <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 30px;font-size: 20px;">Descripcion: </p>
	</div>
		<div class="width-10">
                    <textarea name="txtdescripci" id="txtdescripci" class="width-4" placeholder="Describa" style="color: black;width: 100%;max-width: 100%;height: 50px;max-height: 50px;" required=""></textarea>
	</div>
	</div>
        <h3 class="sub-form">Detalles del Reclamo</h3>
                 <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 50px;font-size: 20px;">Tipo: </p>
	</div>
		<div class="width-10">
                    <div class="form-group width-12">
                    	<div class="width-10">
                        <label for="RECLAMO"><input type="radio" name="txttip" value="RECLAMO" id="RECLAMO" required="">RECLAMO</label>
                        </div>
                        <div class="width-10">
                        <label for="QUEJA"><input type="radio" name="txttip" value="QUEJA" id="QUEJA" >QUEJA</label>
                        </div>  
                    </div>
	</div>
	</div>
                <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 30px;font-size: 20px;">Detalle del Reclamo: </p>
	</div>
		<div class="width-10">
                    <textarea name="txtreclam" id="txtreclam" class="width-4" placeholder="Detalle Reclamo" style="color: black;width: 100%;max-width: 100%;height: 50px;max-height: 50px;" required=""></textarea>
	</div>
	</div>
                <div class="form-group width-12">
		<div class="width-10">
                    <p style="line-height: 30px;font-size: 20px;">Pedido: </p>
	</div>
		<div class="width-10">
                    <textarea name="txtpedido" id="txtpedido" class="width-4" placeholder="Pedido" style="color: black;width: 100%;max-width: 100%;height: 50px;max-height: 50px;" required=""></textarea>
	</div>
	</div>
        
        
	<div class="form-group width-13">
            <input type="submit" id="submit" value="Guardar" class="btn">
            <input type="reset" id="reset" value="Limpiar" class="btn">
	</div>
	</section>
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
            <%if(request.getAttribute("soliadmi")!=null){%>
var alert = alertify.alert("Error","Reclamo Guardado").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	
<%}%>
            $('#txtIden').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtIdenApode').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtTelfApode').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtCelApode').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});

$('#submit').click(function(){
  var v2=$('#txtNombre').val();
  var v3=$('#txtApePat').val();
  var v4=$('#txtApeMat').val();
  var v5=$('#txtIden').val();
  var v6=$('#edad').val();
  var v7=$('#txtNombreApode').val();
  var v8=$('#txtApePatApode').val();
  var v9=$('#txtApeMatApode').val();
  var v10=$('#txtIdenApode').val();
  var v11=$('#txtCorreoApode').val();
  var v12=$('#txtTelfApode').val();
  var v13=$('#txtCelApode').val();
  var v14=$('#txtreclam').val();
  var v15=$('#txtpedido').val();
  var v16=$('#txtDireApode').val();
  var v17=$('#txtdescripci').val();
  if(!($("#formulario input[name='txtbiecon']:radio").is(':checked')) ||
     !($("#formulario input[name='txttip']:radio").is(':checked')) ||
  (v2==="") ||
  (v3==="") ||
  (v4==="") || 
  (v5==="") || 
  (v6==="") || 
  (v7==="") || 
  (v8==="") || 
  (v9==="") ||
  (v10==="") ||
  (v11==="") ||
  (v12==="") ||
  (v13==="") ||
  (v14==="") ||
  (v15==="") ||
  (v16==="") ||
  (v17==="")){
  }else{  
if($("#txtIden").val().length < 8 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="") {  
        alertify.success("El dni debe tener 8 caracteres. Ej. 72180104");
        $("#txtIden").focus();
        return false;  
} 
if($("#txtIdenApode").val().length < 8 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="") {  
        alertify.success("El dni debe tener 8 caracteres. Ej. 72180104");
        $("#txtIdenApode").focus();
        return false;  
} 
if(($("#txtCorreoApode").val().indexOf('@', 0) === -1 || $("#txtCorreoApode").val().indexOf('.', 0) === -1) && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="") {  
        alertify.success("El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        $("#txtCorreoApode").focus();
        return false;  
} 
if($("#txtTelfApode").val().length < 7 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="") {  
        alertify.success("El telefono debe tener 7 caracteres. Ej. 5564416");
        $("#txtTelfApode").focus();
        return false;  
} 
if($("#txtCelApode").val().length < 9 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="") {  
        alertify.success("El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtCelApode").focus();
        return false;  
} 
  }
 });
  $('#reset').click(function() { 
  var v2=$('#txtNombre').val();
  var v3=$('#txtApePat').val();
  var v4=$('#txtApeMat').val();
  var v5=$('#txtIden').val();
  var v6=$('#edad').val();
  var v7=$('#txtNombreApode').val();
  var v8=$('#txtApePatApode').val();
  var v9=$('#txtApeMatApode').val();
  var v10=$('#txtIdenApode').val();
  var v11=$('#txtCorreoApode').val();
  var v12=$('#txtTelfApode').val();
  var v13=$('#txtCelApode').val();
  var v14=$('#txtreclam').val();
  var v15=$('#txtpedido').val();
  var v16=$('#txtDireApode').val();
  var v17=$('#txtdescripci').val();
   if(!($("#formulario input[name='txtbiecon']:radio").is(':checked')) &&
     !($("#formulario input[name='txttip']:radio").is(':checked')) &&
  (v2==="") &&
  (v3==="") &&
  (v4==="") && 
  (v5==="") && 
  (v6==="") && 
  (v7==="") && 
  (v8==="") && 
  (v9==="") &&
  (v10==="") &&
  (v11==="") &&
  (v12==="") &&
  (v13==="") &&
  (v14==="") &&
  (v15==="") &&
  (v16==="")&&
  (v17==="")){
  
  }else{
      alertify.success("Campos Limpiados");
  }  
});

        var inputs = document.getElementsByClassName('formulario__input');
        for(var i =0;i<inputs.length;i++){
	inputs[i].addEventListener('keyup',function(){
	if(this.value.length>=1){
        this.nextElementSibling.classList.add('fijar');
	}else{
	this.nextElementSibling.classList.remove('fijar');
	}
});
}
        </script>
         <script src="js/principales.js"></script>
    </body>
</html>
