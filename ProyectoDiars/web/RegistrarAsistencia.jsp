<%@page import="Modelo.Asistencia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    String usu="";
    String nom="";
    HttpSession sesionOK=request.getSession();
    if(sesionOK.getAttribute("perfil")!=null){
    nom=(String)sesionOK.getAttribute("nom");
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
        <title>Asist. |I.E.P ALMA MATER</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloasistenciashstndds.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <script src="js/jquery-3.3.1.min.js"></script>
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
        <script src="js/jquery-3.3.1.min.js"></script>
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
            <form method="post" action="ServletControlador?accion=regisasitencia">
        <div class="containers">
		<div class="form__top">
			<h2>Registro<span> Asistencia</span></h2>
		</div>		
          <div class="widget">
          <input type="text" name="txtFecha" id="fechina" class="input4" readonly>
          <input type="hidden" name="txtFecha2" id="fechina2" class="input4" readonly>
          <input type="hidden" name="txtFecha3" id="fechina2" class="input4" readonly>
          <input type="hidden" name="txtFecha4" id="fechina2" class="input4" readonly>
          <input type="text" name="txtestado" id="txtestado" class="input4" readonly>
          <div class="reloj">      
          <input type="text" name="txtHoras" id="horas" class="input3" readonly>
          <p>:</p>
          <input type="text" name="txtMin" id="minutos" class="input3" readonly>
          <p>:</p>
          <input type="text" name="txtSeg" id="segundos" class="input3" readonly>
          <p id="ampm" class="ampm"></p>
          </div>
          </div>

			<div class="form__reg">
                        <div class="width-3">
			<div class="width-2"><label class="label2">Codigo</label>
                        </div><div class="width-2"><label class="label2">Nombre</label></div>
                        </div>
                            
                        <div class="width-3">
			<div class="width-2">
                        <input class="input2" type="text" name="txtCodigo" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("codiAd"));}%>" readonly="readonly"></div><div class="width-2">
			<input class="input2" type="text" name="txtNombre" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("nom"));}%>" readonly="readonly"></div>
			</div>
                        
                        <div class="width-3">
			<div class="width-2"><label class="label2">Apellido Paterno</label>
			</div><div class="width-2"><label class="label2">Apellido Materno</label></div>
			</div>

			<div class="width-3">
			<div class="width-2">
            <input class="input2" type="text" name="txtApelPater" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("apepa"));}%>" readonly="readonly"></div><div class="width-2">
            <input class="input2" type="text" name="txtApelMater" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("apema"));}%>" readonly="readonly"></div>
        	</div>
            <div class="btn__form">
            <%
                     ArrayList<Asistencia> listar2 =(ArrayList<Asistencia>)request.getAttribute("lista2");
                    Date date = new Date();
                    DateFormat dateFormat = new SimpleDateFormat("d/MM/yyyy");
                    int validar=0;
                    if (listar2.size() >= 0) {
                        for (Asistencia as : listar2) {
                          if(as.getFecdocen().equals(dateFormat.format(date))){
                           if(as.getHordocensa().equals("00:00:00")){validar=1;}%>
                    <%
                    }
                    }

                    if(validar==1){%>
                    <input class="btn__submit2" type="submit" name="Salida" value="Marcar Asitencia" title="Salida">   
<a href="index.jsp" class="btn__reset">Salir</a>  
<%}else{%>
<input class="btn__submit" type="submit" name="Ingreso" value="Marcar Asitencia" title="Ingreso">
<a href="index.jsp" class="btn__reset">Salir</a>  
<%} }%>
            
           	
            </div>
            </div>
        </div>
            </form>
            </main>
<script>
     if("ingreso"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Ingreso Registrado");
    }
    if("salida"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Salida Registrada");
    } 
    
</script>
<script src="js/asistenciasjs.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
    </body>
</html>
