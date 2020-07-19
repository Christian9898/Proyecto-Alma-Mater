<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Colegio | I.E.P ALMA MATER</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" type="text/css" href="css/principalestiloshs.css">
<link rel="stylesheet" type="text/css" href="css/fontellos.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
<div class="pasimagenes">
<div class="container-all">

<input type="radio" id="1" name="image-slide" hidden/>
<input type="radio" id="2" name="image-slide" hidden/>
<input type="radio" id="3" name="image-slide" hidden/>
<input type="radio" id="4" name="image-slide" hidden/>
<input type="radio" id="5" name="image-slide" hidden/>
<input type="radio" id="6" name="image-slide" hidden/>

<div class="slide">
	<div class="item-slide">
            <img src="imagenes/cole.jpg" class="suti" alt="im_carlitos">	
	</div>
	<div class="item-slide">
            <img src="imagenes/escribir.jpg" class="suti" alt="im_escribiendo">	
	</div>
	<div class="item-slide">
            <img src="imagenes/estudiando.jpg" class="suti" alt="im_estudiando">
	</div>
	<div class="item-slide">
            <img src="imagenes/abc.jpg" class="suti" alt="im_letras">
	</div>
	<div class="item-slide">
            <img src="imagenes/profesores.jpg" class="suti" alt="im_profesores">
	</div>
    <div class="item-slide">
        <img src="imagenes/aniversario.png" class="suti" alt="im_aniversario">
	</div>
</div>

<div class="pagination">
	<label class="pagination-item" for="1">
	<img src="imagenes/cole.jpg" class="suti" alt="im_carlitos">	
	</label>
	<label class="pagination-item" for="2">
	<img src="imagenes/escribir.jpg" class="suti" alt="im_escribiendo">	
	</label>
	<label class="pagination-item" for="3">
	<img src="imagenes/estudiando.jpg" class="suti" alt="im_estudiando">
	</label>
	<label class="pagination-item" for="4">
	<img src="imagenes/abc.jpg" class="suti" alt="im_letras">
	</label>
	<label class="pagination-item" for="5">
	<img src="imagenes/profesores.jpg" class="suti" alt="im_profesores">
	</label>
        <label class="pagination-item" for="6">
	<img src="imagenes/aniversario.png" class="suti" alt="im_aniversario">
	</label>
</div>	
</div>
</div>
<div class="presentacion">
	<img src="imagenes/alumnos.png"><article><h2>Bienvenidos a la I.E.P Alma Mater</h2><br>Alma Mater es uno de los colegios líderes en el distrito de Carabayllo, ayudando a sus estudiantes a alcanzar su potencial. Proveemos una educación con un alto rendimiento intelectual y creativo siguiendo nuestro lema "Formamos Triunfadores".<br>
Valoramos la  dedicación, honestidad, responsabilidad y respeto, que  transmitimos a nuestros alumnos desde una temprana edad para ayudarlos a convertirse en jóvenes exitosos y aptos para enfrentar todo tipo de obstaculos.<br><br>
Conozca más acerca del I.E.P Alma Mater en esta web .
</article>
</div>
<div class="presentacion">
	<article><h2>Infraestructura</h2><br>Actualmente contamos con una adecuada ambiente para cada seccion las cuales son (Inicial y Primaria) ,amplios salones,areas adpatadas tanto para laboratorio , arte ,deporte y danza.<br><br>
Conozca más acerca del I.E.P Alma Mater en esta web .</article><img src="imagenes/micole.jpg">
</div>
<div class="noticias"><h3>ÚLTIMAS NOTICIAS</h3></div>
		<div class="portafolio-container">
			<section class="portafolio-item">
				<img src="imagenes/1.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Colaboración</h2>
					<p>Los alumnos de la institucion educativa I.E.P Alma Mater formando parte del apoyo de la lucha contra el cancer.</p>
				</section>
			</section>
			<section class="portafolio-item">
				<img src="imagenes/2.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Exposición Inicial</h2>
					<p>Los pequeños triunfadores comenzando su experiencia como expositores acerca de su familia.</p>
				</section>
			</section>
			<section class="portafolio-item">
				<img src="imagenes/3.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Simulacro</h2>
					<p>Los docentes de la I.E.P Alma Mater participando de la reunion de la municipalidad para la preparacion de cualquier incidente de sismo.</p>
				</section>
			</section>
			<section class="portafolio-item">
				<img src="imagenes/4.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Marcha Escolar</h2>
					<p>Los alumnos marchando en homenaje a la bandera peruana.</p>
				</section>
			</section>
			<section class="portafolio-item">
				<img src="imagenes/5.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Exposicion Primaria</h2>
					<p>Los alumnos de primaria demostrando sus habilidades de ingles con su respectiva exposicion.</p>
				</section>
			</section>
			<section class="portafolio-item">
				<img src="imagenes/6.jpg" alt="" class="portafolio-img">
				<section class="portafolio-text">
					<h2>Olimpiadas</h2>
					<p>Los estudiantes de la I.E.P Alma Mater rumbo a sus olimpiadas 2019 .</p>
				</section>
			</section>
		</div>

<footer>
<p style="float: right;" class="hovearan"><span class="icon-book-open"></span><a href="Reclamacion.jsp" style="text-decoration: none;color: white;font-size: 18px;">Libro de Reclamaciones</a></p><br><br>
<p><span class="icon-location"></span><a>Jr Andres Avelino Caceres 365 El Progreso - Carabayllo</a></p>
<p><span class="icon-mobile"></span><a>Central telefónica (01) 547 - 0894</a></p>
<p><span class="icon-mail-alt"></span><a>reyesrojas251999@gmail.com</a></p>
<div><b>COLEGIO ALMA MATER - TODOS LOS DERECHOS RESERVADOS<b></div>
</footer>
</main>
</body>
</html>