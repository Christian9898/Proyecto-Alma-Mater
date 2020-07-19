<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    String usu="";
    String nom="";
    int ids=0;
    String nombre="";
    HttpSession sesionOK=request.getSession();
    if(sesionOK.getAttribute("perfil")!=null){
    nom=(String)sesionOK.getAttribute("nom");
    ids=Integer.parseInt(request.getParameter("idn"));
    nombre=request.getParameter("nomb");
    }
    else{
    %>
      <jsp:forward page="Login.jsp">
        <jsp:param name="msg" value="Tiene que loguearse"/>
    </jsp:forward>    
    
    <%
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
	<link rel="stylesheet" type="text/css" href="css/mainstd.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap-datetimepicker.min.css">
	<title>Cita | I.E.P ALMA MATER</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
          
  @media (min-width: 993px){
  nav .container .navbar-right{
      background: rgba(0,0,0,.2);
      position: absolute;
      right: 15px;
      
  }
  }
        @media (max-width: 992px) { 
  .navbar-header {
      float: none;
  }
  .navbar-left,.navbar-right {
      float: none !important;
  }
  .navbar-right {
      margin-bottom: 5px;
      background: rgba(0,0,0,.2);
  }
  .navbar-toggle {
      display: block;
  }
  .navbar-collapse {
      border-top: 1px solid transparent;
      box-shadow: inset 0 1px 0 rgba(255,255,255,0.1);
  }
  .navbar-fixed-top {
      top: 0;
      border-width: 0 0 1px;
  }
  .navbar-collapse.collapse {
      display: none!important;
  }
  .navbar-nav {
      float: none!important;
      margin-top: 7.5px;
  }
  .navbar-nav>li {
      float: none;
  }
  .navbar-nav>li>a {
      padding-top: 10px;
      padding-bottom: 10px;
  }
  .collapse.in{
      display:block !important;
  }
  nav .container{
      width: 100%;
  }
}
        </style>
    </head>
    <body>
                   <main>
                   <nav class="navbar navbar-default navbar-fixed-top">
                     <div class="container-fluid">
    <div class="navbar-header navbar-togleable-lg">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">I.E.P ALMA MATER</a>
    </div>
  <div class="container">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Catálogo</a></li>
         <%
                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Alumno")){
                %>
        <li><a href="RegistrarVenta.jsp">Registrar Pedido</a></li>
        <%
                }
         %>        
         <%
                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Docente")){
                %>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Registros<b class="caret"></b></a>
                <ul class="dropdown-menu">
                <li><a href="RegistrarVenta.jsp">Registrar Pedido</a></li>
                <li><a href="ServletControlador?accion=asitendoce&id=<%=(String)sesionOK.getAttribute("codiAd")%>">Registrar Asistencia</a></li>
                <li><a href="ServletControlador?accion=muestranotasig">Registrar Notas</a></li>
                </ul>
                </li>
                <li><a href="ServletControlador?accion=muestraasistencia&id=<%=(String)sesionOK.getAttribute("codiAd")%>">Consultar Asistencias</a></li>

                
                <%
                }
                %>          
                <%
                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Administrador")){
                %>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Registros<b class="caret"></b></a>
                 <ul class="dropdown-menu">
                 <li><a href="ServletControlador?accion=mostrarfichas">Registrar Ficha</a></li>
                 <li><a href="ServletControlador?accion=muestrapagos">Registrar Pago</a></li>
                 </ul>
                 </li>
                 <li><a href="RegistrarVenta.jsp">Registrar Pedido</a></li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Consultas<b class="caret"></b></a>
                 <ul class="dropdown-menu">
                 <li><a href="ServletControlador?accion=MostrarVentas">Consultar Pedidos</a></li>
                 <li><a href="ServletControlador?accion=MostrarSolicitudes">Consultar Solicitud</a></li>
                 <li><a href="ServletControlador?accion=MostrarCitas">Consultar Cita</a></li>
                 <li><a href="ServletControlador?accion=MostrarAdmisiones">Consultar Admisiones</a></li>
                 <li><a href="ServletControlador?accion=consultapagos">Consultar Pagos</a></li>
                 <li><a href="ServletControlador?accion=MostrarReclamo">Consultar Reclamo</a></li>
                 </ul>
                 </li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Mantenimientos<b class="caret"></b></a>
                 <ul class="dropdown-menu">
                 <li><a href="RegistrarProducto.jsp">Mantener Producto</a></li>
                 <li><a href="MantenimientoUsuario.jsp">Mantener Usuarios</a></li>
                 <li><a href="ServletControlador?accion=mostrarAsigna">Mantener Asignaciones Docentes</a></li>
                 <li><a href="ServletControlador?accion=muestranivsa">Mantener Asignaciones Alumnos</a></li>
                 <li><a href="MantenimientoDocente.jsp">Mantener Docente</a></li>
                 </ul>
                 </li>
                <%
                }
                %>   
                 <%if(sesionOK.getAttribute("perfil")!=null)
                {
                %>
                  <li><a href="ServletLogueo?accion=cerrar">Cerrar Sesion</a></li>
                <%
                }
                %>
      </ul>      
      <ul class="nav navbar-nav navbar-right">
                      <%
                if(sesionOK.getAttribute("perfil")!=null)
                {
                %>
                <li><a href="#" style="font-size: 16px;margin-left:6px;margin-right: 6px;padding: 9px;">Hola<br><%=nom%></a></li>
                <%
                }
                %>  
      </ul>
    </div>
  </div>
</nav>
            <div class="containers">
		<div class="form__top">
			<h2>Generar Cita <span>para Postulante</span></h2>
			<p>"Cita para los postulantes entre dos fechas"</p>
		</div>		
		<form class="form__reg" action="ServletPostulante" method="get">
                    <input type="hidden" name="accion" value="Generarcita">
                    
			<label>&#128100;  Nombre</label>
                        <input class="input" type="text" name="txtNombre" value="<%=nombre%>" readonly>
			<p class="esti">Datos de la Empresa</p>
			<label>&#9993;  Correo</label>
            <input class="input" type="text" name="txtCorreo" value="reyesrojas251999@gmail.com" readonly>
            <label>&#128222;  Telefono</label>
            <input class="input" type="text" name="txtTelefono" value="5470894" readonly>
            <label>&#8962;  Direccion</label>
            <input class="input" type="text" name="txtDireccion" value="JIRON ANDRES AVELINO CACERES 365, Lima, Carabayllo." readonly>
			<label>Inicio</label>
                        <div id="selecci"></div>
			<input type="text" name="fecha" id="fecha" class="form-control input" placeholder="dd/mm/aaaa" required="" readonly="">
			<label>Termino</label>
                        <div id="selecci2"></div>
			<input type="text"  name="fechat" id="fechat" class="form-control input" placeholder="dd/mm/aaaa" required="" readonly="">
                        <input type="hidden" name="txtIdpos" value="<%=ids%>">
            <div class="btn__form">
            <input class="btn__submit" id="submit" type="submit" value="REGISTRAR">
            <input class="btn__reset" type="reset" id="reset" value="LIMPIAR">	
            </div>
                        
		</form>
	</div>
</main>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/scripts.js"></script>
        <script>
   $('#reset').click(function() { 
         var v1=$('#fecha').val();
  var v2=$('#fechat').val();
          if(v1==="" && v2===""){
  }else{        
       alertify.success("Campos Limpiados");
              document.getElementById("selecci").innerHTML="";
                     document.getElementById("selecci2").innerHTML="";
  }   
                 
    });
                          $('#submit').click(function(){
                                var v1=$('#fecha').val();
  var v2=$('#fechat').val();
      if(v1===""){
 document.getElementById("selecci").innerHTML='<div>Falta asignar Hora Inicio</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
      }else{
 document.getElementById("selecci").innerHTML="";
      }
      if(v2===""){
 document.getElementById("selecci2").innerHTML='<div>Falta asignar Hora Fin</div>';
 $("#selecci2").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
      }else{
 document.getElementById("selecci").innerHTML="";
      }
  
   }); 
   
   $('#selecci').click(function(){
       document.getElementById("selecci").innerHTML="";
}); 
   $('#selecci2').click(function(){
       document.getElementById("selecci2").innerHTML="";
}); 
   $('#fecha').click(function(){
        document.getElementById("selecci2").innerHTML="";
   }); 
      $('#fechat').click(function(){
        document.getElementById("selecci").innerHTML="";
   }); 
        </script>
    </body>
</html>
