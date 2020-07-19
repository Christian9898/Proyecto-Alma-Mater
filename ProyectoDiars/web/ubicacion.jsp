<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <title>Ubicacion | I.E.P ALMA MATER</title>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
       <script src="http://code.jquery.com/jquery-latest.js"></script>
       <link rel="stylesheet" type="text/css" href="css/fontellos.css">
       <link rel="stylesheet" type="text/css" href="css/estiloreclamacion.css">
       
       <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDE4bdhHorpNIQthpzQt2dbIGpOUT7RS-g"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<script src="js/ubicascript.js"></script>
	
	<style>
		.mapa{
			width: 65%;
                        height: 500px;
			background: rgba(209,241,170,1.00);
		}
                .datos{
                    margin-left: auto;
                    margin-right: auto;
                width: 30%;
                }
                .pans{
                    margin-top: 20px;
                    margin-bottom: 8px;
                    width: 100%;
                    display: block;
               color: #08c;
                    font-size: 25px;
                    font-weight: bold;
                }
                .letras{
                    width: 100%;
                    display: block;
                    font-size: 14px;
                    background: transparent;
                     border: none;
    outline:none !important;
    outline-width: 0 !important;
    box-shadow: none;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
                }
                .contactelos{
                    margin-top: 50px;
                    width: 80%;
                    display: flex;
                    margin-left: auto;
                    margin-right: auto;
  margin-bottom: 100px;
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
             
             <h1 class="formulario__titulo">NUESTRA UBICACION</h1>
             
             <div class="contactelos">
                    	<div class="mapa" id="marcomapa">
		...
	</div>
                    <div class="datos">
		<input type="hidden" id="latitud">
		<input type="hidden" id="longitud">
                <span class="pans">TU UBICACION</span>
                <input type="text" class="letras" id="direccion">
                <span class="pans">DESTINO</span>
                <input type="text" class="letras" id="destino">
                 <span class="pans">HORARIO DE ATENCION</span>
                 <p>lun – vie: 08:00 - 18:00</p>
                 <p>sabádo,domingos y feriados:cerrado</p>
                    </div>
                </div>
             <footer>
    <p style="float: right;" class="hovearan"><span class="icon-book-open"></span><a href="Reclamacion.jsp" style="text-decoration: none;color: white;font-size: 18px;">Libro de Reclamaciones</a></p><br><br>
<p><span class="icon-location"></span><a>Jr Andres Avelino Caceres 365 El Progreso - Carabayllo</a></p>
<p><span class="icon-mobile"></span><a>Central telefónica (01) 547 - 0894</a></p>
<p><span class="icon-mail-alt"></span><a>reyesrojas251999@gmail.com</a></p>
<div><b>COLEGIO ALMA MATER - TODOS LOS DERECHOS RESERVADOS<b></div>
</footer>
           </main>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/asignar.js"></script>  
         <script src="js/principales.js"></script>
    </body>
</html>
