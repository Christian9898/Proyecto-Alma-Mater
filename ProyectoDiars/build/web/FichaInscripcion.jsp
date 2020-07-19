<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
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
      alumno d=new alumno();
      papa p=new papa();
      mama m=new mama();
      fichainscrip f=new fichainscrip();
      if(request.getParameter("idn")!=null){
      d=fichainscriDB.ConAlumno(Integer.parseInt(request.getParameter("idn")));
      p=fichainscriDB.ConPapa(Integer.parseInt(request.getParameter("idn")));
      m=fichainscriDB.ConMama(Integer.parseInt(request.getParameter("idn")));
      f=fichainscriDB.ConFicha(Integer.parseInt(request.getParameter("idn")));
      }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>F.Insc | I.E.P ALMA MATER</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloficha.css">
        <link rel="stylesheet" href="css/estiloshs.css">
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
      <div role="main" class="salmain">
          <form action="ServletControlador" id="formulario" method="get">
<h1 class="sub-title">FICHA DE INSCRIPCION</h2>
             <section class="content-form">
                        <div class="ladoderecho">
                         <div class="form-group width-12">
                         <p>Datos del Alumno</p>
                         </div>
                         <div class="form-group width-12 radiobt">
	            	<div class="width-3">
                       <input type="radio" name="estado" value="Nuevo" id="Nuevo" checked><label for="Nuevo">Nuevo</label>
                        </div>
                        <div class="width-3">
                       <input type="radio" name="estado" value="Reingreso" id="Reingreso"><label for="Reingreso">Reingreso</label>
                        </div>
               		     </div>

            		<div class="ocultobuscar">
			<div class="width-10">
                        <input type="text" name="IdAlumno" id="IdAlumno" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodalu());}%>" class="form-control" placeholder="Id.Alumno *" title="Id" readonly=""> 
			</div> 
			<div class="width-9">
                        <a href="ServletControlador?accion=muestraalumnitos&mes=asigna"><img src="imagenes/buscar.png" title="Buscar"></a>
			</div>  
			</div>
                        <div class="form-group width-12">
                        <div class="width-4">
                            <input type="text" name="txtNombreAlu" id="txtNombreAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getNomalu());}%>" class="form-control" placeholder="Nombre *" title="Nombre" required="">
                        </div>
                        <div class="width-4">
			<input type="text" name="txtApepateAlu" id="txtApepateAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getApepaalu());}%>" class="form-control" placeholder="Apellido Paterno *" title="Apell.Paterno" required="">
                        </div>
                        <div class="width-4">
                        <input type="text" name="txtApemateAlu" id="txtApemateAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getApemaalu());}%>" class="form-control" placeholder="Apellido Materno *" title="Apell.Materno" required="">
                        </div>   
                        <div class="width-4">
                            <input type="text" name="dniAlu" id="dniAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getIdenalu());}%>" maxlength="8" class="form-control" placeholder="Dni *" title="DNI" required="">
                        </div>
                        <div class="width-4">
                            <input type="text" name="txtTelefonoAlu" id="txtTelefonoAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getTelalu());}%>" maxlength="7" class="form-control" placeholder="Telefono *" title="Telefono" required=""> 
                        </div>
      			<div class="width-4">
 			<input type="text" name="txtDireccionAlu" id="txtDireccionAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getDiralu());}%>" class="form-control" placeholder="Dirección  *" title="Direccion" required="">
			</div>
                        <h3 class="sub-form">Fecha de Nacimineto</h3>
                   	<div class="width-4">
                        <input type="date" name="fechanaAlu" id="fechanaAlu" value="<%if(request.getParameter("idn")!=null){out.print(d.getFecnalu());}%>" min="1500-1-1" max="2030-12-31" placeholder="dd/mm/aa" step="1" class="form-control" required=""> 
                        </div>
                        <h3 class="sub-form">Genero</h3>
			            <div class="width-3">
                        <label for="M"><input type="radio" name="sexo" id="M" value="M" required="" <%if(request.getParameter("idn")!=null){if(d.getGenalu().equals("M")){out.print("checked");}}%>>M</label>
                        </div>
                        <div class="width-3">
                        <label for="F"><input type="radio" name="sexo" id="F" value="F" <%if(request.getParameter("idn")!=null){if(d.getGenalu().equals("F")){out.print("checked");}}%>>F</label>
                        </div>
                        <h3 class="sub-form">Tiene Seguro Medico</h3>
			<div class="width-3">
                        <label for="SI"><input type="radio" name="seguro" id="SI" value="SI" required="" <%if(request.getParameter("idn")!=null){if(d.getSegualu().equals("SI")){out.print("checked");}}%>>SI</label>
                        </div>
                        <div class="width-3">
                        <label for="NO"><input type="radio" name="seguro" id="NO" value="NO" <%if(request.getParameter("idn")!=null){if(d.getSegualu().equals("NO")){out.print("checked");}}%>>NO</label>
                        </div>
                         <div class="form-group width-12">
                         <h3 class="sub-form2">Nivel</h3>
                         <h3 class="sub-form2">Grado</h3>
                         </div>
                         <div class="form-group width-12">
                         <div class="width-8">
                         <select name="cbNivel" id="cbNivel" class="form-control presioname" title="Nivel" required>
                        <option value="" class="ocultame"></option>
                        <%
                          ArrayList<Nivel> lista2=(ArrayList<Nivel>)request.getAttribute("lista2");
                         for(Nivel n: lista2){
                         %>
                         <option value="<%=n.getCodigo()%>" <%if(request.getParameter("idn")!=null){if(d.getNivalu()==n.getCodigo()){out.print("selected");}}%>><%=n.getDescnivel()%></option>
                          <%
                          }
                           %>
                        </select>
                  	</div>
                        <div class="width-8">
                        <select name="cbGrado" id="cbGrado" class="form-control presioname" title="Grado" required>
                        <option value="" class="ocultame"></option>
                         <%
                        ArrayList<Grado> lista1=(ArrayList<Grado>)request.getAttribute("lista1");
                        for(Grado g: lista1){
                        %>
                        <option value="<%=g.getCodigo()%>" <%if(request.getParameter("idn")!=null){if(g.getCodigo()==d.getGraalu()){out.print("selected");}}%>><%=g.getDescgrado()%></option>
                        <%
                        }
                        %>
                        </select>
                         </div>
                         </div>
                        <h3 class="sub-form">Estado</h3>
			<div class="width-3">
                        <label for="Activo"><input type="radio" id="Activo" name="estadofi" value="Activo" required="" <%if(request.getParameter("idn")!=null){if(d.getEstado().equals("Activo")){out.print("checked");}}%>>Activo</label>
                        </div>
                        <div class="width-3">
                        <label for="Inactivo"><input type="radio" id="Inactivo" name="estadofi" value="Inactivo" <%if(request.getParameter("idn")!=null){if(d.getEstado().equals("Inactivo")){out.print("checked");}}%>>Inactivo</label>
                        </div>
                        </div>
                        </div><div class="divpadres1">
                 	<div class="form-group width-12">
                        <p>Datos del Apoderado(PAPÁ)</p>
                        </div>
                        <div class="form-group width-12 radiobt">
	                <div class="width-3">
                        <input type="radio" id="Papa" name="padres" value="Papa" checked><label for="Papa">Papa</label>
                        </div>
                        <div class="width-3">
                        <input type="radio" id="Mama" name="padres" value="Mama"><label for="Mama1">Mama</label>
                        </div>
               		    </div>
                        <div class="form-group width-12">
                        <div class="width-4">
			<input type="text" id="txtNombrePa" name="txtNombrePa" value="<%if(request.getParameter("idn")!=null){out.print(p.getNompapa());}%>" class="form-control" title="Nombre" placeholder="Nombre *">
                        </div>
                        <div class="width-4">
			<input type="text" id="txtApepatePa" name="txtApepatePa" value="<%if(request.getParameter("idn")!=null){out.print(p.getApepapapa());}%>" class="form-control" title="Apell.Paterno" placeholder="Apellido Paterno *">
                        </div>
                        <div class="width-4">
                        <input type="text" id="txtApematePa" name="txtApematePa" value="<%if(request.getParameter("idn")!=null){out.print(p.getApemapapa());}%>" class="form-control" title="Apell.Materno" placeholder="Apellido Materno *">
                        </div>   
                        <div class="width-4">
                        <input type="text" id="dniPa" name="dniPa" value="<%if(request.getParameter("idn")!=null){out.print(p.getIdenpapa());}%>" maxlength="8" class="form-control" title="DNI" placeholder="Dni *">
                        </div>
                        <div class="width-4">
			<input type="text" id="txtCelularPa" name="txtCelularPa" value="<%if(request.getParameter("idn")!=null){out.print(p.getCelpapa());}%>" maxlength="9" class="form-control" title="Celular" placeholder="Celular *"> 
                        </div>
      			<div class="width-4">
 			<input type="text" id="txtOcupacionPa" name="txtOcupacionPa" value="<%if(request.getParameter("idn")!=null){out.print(p.getOcupapa());}%>" class="form-control" title="Ocupacion" placeholder="Ocupacion *">
			</div>
			<div class="width-4">
			<input type="text" id="txtCorreoPa" name="txtCorreoPa" value="<%if(request.getParameter("idn")!=null){out.print(p.getCorreopapa());}%>" class="form-control" title="Correo" placeholder="Correo *">
                        </div>
                        <h3 class="sub-form">Fecha de Nacimineto</h3>
                   	<div class="width-4">
                        <input type="date" id="fechanaPa" name="fechanaPa" value="<%if(request.getParameter("idn")!=null){out.print(p.getFecnapapa());}%>" min="1500-1-1" max="2030-12-31" placeholder="dd/mm/aa" step="1" class="form-control"> 
                        </div>
                        <h3 class="sub-form">Grado de Instrucccion</h3>
                        <div class="width-4">
                        <select id="gradoinPa" name="gradoinPa" class="form-control" title="G.Instruccion">
                        <option value="" class="ocultame"></option>
                        <%
                        ArrayList<gradoinstru> lista=(ArrayList<gradoinstru>)request.getAttribute("lista");
                        for(gradoinstru g3: lista){
                        %>
                        <option value="<%=g3.getCodinstru()%>" <%if(request.getParameter("idn")!=null){if(p.getCodgrainpapa()==g3.getCodinstru()){out.print("selected");}}%>><%=g3.getDescinstru()%></option>
                        <%
                        }
                        %>
                        </select>
                        </div>
                        <h3 class="sub-form">Vive</h3>
			<div class="width-3">
                        <label for="SIV"><input type="radio" id="SIV" name="vivePa" value="SI" <%if(request.getParameter("idn")!=null){if(p.getVivepapa().equals("SI")){out.print("checked");}}%>>SI</label>
                        </div>
                        <div class="width-3">
                        <label for="NOV"><input type="radio" id="NOV" name="vivePa" value="NO" <%if(request.getParameter("idn")!=null){if(p.getVivepapa().equals("NO")){out.print("checked");}}%>>NO</label>
                        </div>
                        <h3 class="sub-form">Vive con Alumno</h3>
			<div class="width-3">
                        <label for="SIAV"><input type="radio" id="SIAV" name="convivePa" value="SI" <%if(request.getParameter("idn")!=null){if(p.getVivecapapa().equals("SI")){out.print("checked");}}%>>SI</label>
                        </div>
                        <div class="width-3">
                        <label for="NOAV"><input type="radio" id="NOAV" name="convivePa" value="NO" <%if(request.getParameter("idn")!=null){if(p.getVivecapapa().equals("NO")){out.print("checked");}}%>>NO</label>
                        </div>
			</div>
                        </div>
                 <div class="divpadres2">
                 <div class="form-group width-12">
                        <p>Datos del Apoderado(MAMÁ)</p>
                        </div>
                        <div class="form-group width-12 radiobt">
	                <div class="width-3">
                        <input type="radio" id="Papa1" name="padres" value="Papa"><label for="Papa">Papa</label>
                        </div>
                        <div class="width-3">
                       <input type="radio" id="Mama1" name="padres" value="Mama"> <label for="Mama1">Mama</label>
                        </div>
               		    </div>
                        <div class="form-group width-12">
                        <div class="width-4">
			<input type="text" id="txtNombreMa" name="txtNombreMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getNommama());}%>" class="form-control" title="Nombre" placeholder="Nombre *">
                        </div>
                        <div class="width-4">
			<input type="text" id="txtApepateMa" name="txtApepateMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getApepamama());}%>" class="form-control" title="Apell.Paterno" placeholder="Apellido Paterno *">
                        </div>
                        <div class="width-4">
                        <input type="text" id="txtApemateMa" name="txtApemateMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getApemamama());}%>" class="form-control" title="Apell.Materno" placeholder="Apellido Materno *">
                        </div>   
                        <div class="width-4">
                        <input type="text" id="dniMa" name="dniMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getIdenmama());}%>" maxlength="8" class="form-control" title="DNI" placeholder="Dni *">
                        </div>
                        <div class="width-4">
			<input type="text" id="txtCelularMa" name="txtCelularMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getCelmama());}%>" maxlength="9" class="form-control" title="Celular" placeholder="Celular *"> 
                        </div>
      			<div class="width-4">
 			<input type="text" id="txtOcupacionMa" name="txtOcupacionMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getOcumama());}%>" class="form-control" title="Ocupacion" placeholder="Ocupacion *">
			</div>
			<div class="width-4">
			<input type="text" id="txtCorreoMa" name="txtCorreoMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getCorreomama());}%>" class="form-control" title="Correo" placeholder="Correo *">
                        </div>
                        <h3 class="sub-form">Fecha de Nacimineto</h3>
                   	<div class="width-4">
                        <input type="date" id="fechanaMa" name="fechanaMa" value="<%if(request.getParameter("idn")!=null){out.print(m.getFecnamama());}%>" min="1500-1-1" max="2030-12-31" placeholder="dd/mm/aa" step="1" class="form-control"> 
                        </div>
                        <h3 class="sub-form">Grado de Instrucccion</h3>
                        <div class="width-4">
                        <select id="gradoinMa" name="gradoinMa" class="form-control" title="G.Instruccion">
                        <option value="" class="ocultame"></option>
                        <%
                        for(gradoinstru g2: lista){
                        %>
                        <option value="<%=g2.getCodinstru()%>" <%if(request.getParameter("idn")!=null){if(m.getCodgrainmama()==g2.getCodinstru()){out.print("selected");}}%>><%=g2.getDescinstru()%></option>
                        <%
                        }
                        %>
                        </select>
                        </div>
                        <h3 class="sub-form">Vive</h3>
			<div class="width-3">
                        <label for="SIVM"><input type="radio" id="SIVM" name="viveMa" class="nelo" value="SI" <%if(request.getParameter("idn")!=null){if(m.getVivemama().equals("SI")){out.print("checked");}}%>>SI</label>
                        </div>
                        <div class="width-3">
                        <label for="NOVM"><input type="radio" id="NOVM" name="viveMa" value="NO" <%if(request.getParameter("idn")!=null){if(m.getVivemama().equals("NO")){out.print("checked");}}%>>NO</label>
                        </div>
                        <h3 class="sub-form">Vive con Alumno</h3>
			            <div class="width-3">
                        <label for="SIAVM"><input type="radio" id="SIAVM" name="conviveMa" value="SI" <%if(request.getParameter("idn")!=null){if(m.getVivecamama().equals("SI")){out.print("checked");}}%>>SI</label>
                        </div>
                        <div class="width-3">
                        <label for="NOAVM"><input type="radio" id="NOAVM" name="conviveMa" value="NO" <%if(request.getParameter("idn")!=null){if(m.getVivecamama().equals("NO")){out.print("checked");}}%>>NO</label>
                        </div>    
                 </div>
</section>
<section class="content-form2">
	<div class="damecolor">
 <h4>Observaciones</h4>
 <div class="width-4">
<p class="sub-form">En casos de emergencia llamar :</p>
</div>

 <div class="form-group width-12">
 <div class="width-5">
<input type="text" name="txtTelefonoCont" maxlength="7" id="txtTelefonoCont" value="<%if(request.getParameter("idn")!=null){out.print(f.getTelcono());}%>" class="form-control" placeholder="Telefono *" title="Telefono" required=""> 
</div>
<div class="width-5">
<input type="text"  name="txtCelularCont" maxlength="9" id="txtCelularCont" value="<%if(request.getParameter("idn")!=null){out.print(f.getCelcono());}%>" class="form-control" placeholder="Celular *" title="Celular" required=""> 
</div>
<div class="width-5">
    <select name="parentesco" id="parentesco" class="form-control" required="" title="Parentesco">
 <option value="" class="ocultame">Parentesco</option>
 <option value="Abuelito" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Abuelito")){out.print("selected");}}%>>Abuelito</option>
 <option value="Abuelita" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Abuelita")){out.print("selected");}}%>>Abuelita</option>
 <option value="Tio" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Tio")){out.print("selected");}}%>>Tio</option>
 <option value="Tia" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Tia")){out.print("selected");}}%>>Tia</option>
 <option value="Hermano" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Hermano")){out.print("selected");}}%>>Hermano</option>
 <option value="Hermana" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Hermana")){out.print("selected");}}%>>Hermana</option>
 <option value="Primo" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Primo")){out.print("selected");}}%>>Primo</option>
 <option value="Prima" <%if(request.getParameter("idn")!=null){if(f.getParentescono().equals("Prima")){out.print("selected");}}%>>Prima</option>

</select>
</div>
</div>
	<p class="sub-form">Observaciones Medicas</p>
<div class="form-group width-12">
    <textarea name="txtcomentario" id="txtcomentario" class="width-4" placeholder="Comentario" style="color: black;"><%if(request.getParameter("idn")!=null){out.print(f.getObservacion());}%></textarea>
</div>
</div>
</section>

<section class="content-form2 bordesino">

	    <div class="form-group width-13">
                
	    <input type="submit" id="submit" name="Guardar" value="Guardar" class="form-control btn">
            <%if(request.getParameter("idn")!=null){%>
            <input type="submit" id="submit" name="Modificar" value="Modificar" class="form-control btn">
            <%}else{%>
            <button type="button" id="Modificar1" class="form-control btn">Modificar</button>
             <%}%>
            <input type="reset" id="reset" name="btnLimpiar" value="Limpiar" class="form-control btn">
            <input type="hidden" name="accion" value="insertarfichas">
            </div>

</section>
   </form>
</div>
</main>
<script>
           $('#Modificar1').click(function(){
var alert = alertify.alert("Error","Seleccione una ficha para Modificar").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	

      });
          <%if(request.getParameter("idn")!=null){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}%>
 if("guardado"==="<%=request.getParameter("mensig")%>"){
alertify.success("Inscripcion Registrada");
    }
 if("modificado"==="<%=request.getParameter("mensig")%>"){
alertify.success("Inscripcion Modificada");
    }
    $('.presioname').click(function(){
$('.ocultame').hide();
});
    if($('#cbNivel').val()===''){
    $("#cbGrado").attr('disabled', 'disabled');    
    }else{
     $('#cbGrado').removeAttr('disabled');   
    }
    $('#cbNivel').on('change', function(){
    $('#cbGrado').removeAttr('disabled');
$("#cbGrado").removeAttr('disabled');
var select2 = document.getElementById("cbGrado");
for (let i = select2.options.length; i >= 0; i--) {
    select2.remove(i);
  }
  select2.innerHTML = "<option value='' class='ocultame'></option>";
    //filtrado grado
  <%
   lista1=AsignacionesDB.obtenerGrado();
   for(Grado g: lista1){
if(g.getDescgrado().substring(3,8).equals("Grado")){
    %>
    if(this.value=="2"){     
    select2.innerHTML += "<option value='<%=g.getCodigo()%>' style='font-size: 14px;'><%=g.getDescgrado()%></option>";     
    }
<%    
}       
else{%>
    if(this.value=="1"){     
select2.innerHTML += "<option value='<%=g.getCodigo()%>' style='font-size: 14px;'><%=g.getDescgrado()%></option>";

}<%}%>

  <%
  }
  %>
});
$('#submit').click(function (){
var v1=$('#txtNombrePa').val();
var v2=$('#txtApepatePa').val();
var v3=$('#txtApematePa').val();
var v4=$('#dniPa').val();
var v5=$('#txtCelularPa').val();
var v6=$('#txtOcupacionPa').val();
var v7=$('#txtCorreoPa').val();
var v8=$('#fechanaPa').val();
var v9=$('#gradoinPa').val();
var v10=$('#txtNombreMa').val();
var v11=$('#txtApepateMa').val();
var v12=$('#txtApemateMa').val();
var v13=$('#dniMa').val();
var v14=$('#txtCelularMa').val();
var v15=$('#txtOcupacionMa').val();
var v16=$('#txtCorreoMa').val();
var v17=$('#fechanaMa').val();
var v18=$('#gradoinMa').val();

var v19=$('#txtNombreAlu').val();
var v20=$('#txtApepateAlu').val();
var v21=$('#txtApemateAlu').val();
var v22=$('#dniAlu').val();
var v23=$('#txtTelefonoAlu').val();
var v24=$('#txtDireccionAlu').val();
var v25=$('#fechanaAlu').val();
var v26=$('#cbNivel').val();
var v27=$('#cbGrado').val();
var v28=$('#txtTelefonoCont').val();
var v29=$('#txtCelularCont').val();
var v30=$('#parentesco').val();
var v31=$('#txtcomentario').val();
if((v1==="") || (v2==="") ||
  (v3==="") || (v4==="") || 
  (v5==="") || (v6==="") || 
  (v7==="") || (v8==="") || 
  (v9==="") || (v10==="") ||
  (v11==="") || (v12==="") ||
  (v13==="") || (v14==="") ||
  (v15==="") || (v16==="") ||
  (v17==="") || (v18==="") ||
  (v19==="") || (v20==="") ||
  (v21==="") || (v22==="") ||
  (v23==="") || (v24==="") ||
  (v25==="") || (v26==="") ||
  (v27==="") || (v28==="") ||
  (v29==="") || (v30==="") ||
  (v31==="")){
  }else{  
      if($("#dniAlu").val().length < 8 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Alumno)-El dni debe tener 8 caracteres. Ej. 72180104");
        $("#dniAlu").focus();
        return false;  
} 
if($("#txtTelefonoAlu").val().length < 7 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Alumno)-El telefono debe tener 7 caracteres. Ej. 5564416");
        $("#txtTelefonoAlu").focus();
        return false;  
} 
      if($("#dniPa").val().length < 8 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Papa)-El dni debe tener 8 caracteres. Ej. 72180104");
        $("#dniPa").focus();
        return false;  
} 
if($("#txtCelularPa").val().length < 9 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Papa)-El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtCelularPa").focus();
        return false;  
}
if(($("#txtCorreoPa").val().indexOf('@', 0) === -1 || $("#txtCorreoPa").val().indexOf('.', 0) === -1) && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Papa)-El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        $("#txtCorreoPa").focus();
        return false;  
} 
      if($("#dniMa").val().length < 8 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Mama)-El dni debe tener 8 caracteres. Ej. 72180104");
        $("#dniMa").focus();
        return false;  
}
if($("#txtCelularMa").val().length < 9 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Mama)-El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtCelularMa").focus();
        return false;  
}
if(($("#txtCorreoMa").val().indexOf('@', 0) === -1 || $("#txtCorreoPa").val().indexOf('.', 0) === -1) && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Mama)-El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        $("#txtCorreoMa").focus();
        return false;  
} 
if($("#txtTelefonoCont").val().length < 7 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Contacto)-El telefono debe tener 7 caracteres. Ej. 5564416");
        $("#txtTelefonoCont").focus();
        return false;  
} 
if($("#txtCelularCont").val().length < 9 && v1!=="" && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="" && v11!=="" && v12!=="" && v13!=="" && v14!=="" && v15!=="" && v16!=="" && v17!=="" && v18!=="" && v19!=="" && v20!=="" && v21!=="" && v22!=="") {  
        alertify.success("(Contacto)-El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtCelularCont").focus();
        return false;  
}
      }
/*if(v1===""){$('#txtNombrePa').val('Ninguno');}if(v2===""){$('#txtApepatePa').val('Ninguno');}if(v3===""){$('#txtApematePa').val('Ninguno');
}if(v4===""){$('#dniPa').val('0');}if(v5===""){$('#txtCelularPa').val('0');}if(v6===""){$('#txtOcupacionPa').val('Ninguno');}
if(v7===""){$('#txtCorreoPa').val('Ninguno');}if(v8===""){$('#fechanaPa').val('Ninguno');}if(v9===""){$('#gradoinPa').val('0');
}if(v10===""){$('#txtNombreMa').val('Ninguno');}if(v11===""){$('#txtApepateMa').val('Ninguno');}if(v12===""){$('#txtApemateMa').val('Ninguno');
}if(v13===""){$('#dniMa').val('0');}if(v14===""){$('#txtCelularMa').val('0');}if(v15===""){$('#txtOcupacionMa').val('Ninguno');
}if(v16===""){$('#txtCorreoMa').val('Ninguno');}if(v17===""){$('#fechanaMa').val('Ninguno');}if(v18===""){$('#gradoinMa').val('0');
}*/
    });
$('#txtTelefonoAlu').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#dniAlu').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtCelularMa').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#dniMa').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtCelularPa').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#dniPa').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtTelefonoCont').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
$('#txtCelularCont').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
 $('#reset').click(function() { 
var v1=$('#txtNombrePa').val();
var v2=$('#txtApepatePa').val();
var v3=$('#txtApematePa').val();
var v4=$('#dniPa').val();
var v5=$('#txtCelularPa').val();
var v6=$('#txtOcupacionPa').val();
var v7=$('#txtCorreoPa').val();
var v8=$('#fechanaPa').val();
var v9=$('#gradoinPa').val();
var v10=$('#txtNombreMa').val();
var v11=$('#txtApepateMa').val();
var v12=$('#txtApemateMa').val();
var v13=$('#dniMa').val();
var v14=$('#txtCelularMa').val();
var v15=$('#txtOcupacionMa').val();
var v16=$('#txtCorreoMa').val();
var v17=$('#fechanaMa').val();
var v18=$('#gradoinMa').val();

var v19=$('#txtNombreAlu').val();
var v20=$('#txtApepateAlu').val();
var v21=$('#txtApemateAlu').val();
var v22=$('#dniAlu').val();
var v23=$('#txtTelefonoAlu').val();
var v24=$('#txtDireccionAlu').val();
var v25=$('#fechanaAlu').val();
var v26=$('#cbNivel').val();
var v27=$('#cbGrado').val();
var v28=$('#txtTelefonoCont').val();
var v29=$('#txtCelularCont').val();
var v30=$('#parentesco').val();
var v31=$('#txtcomentario').val();
   if((v1==="" || v1===null) &&
  (v2==="" || v2===null) &&
  (v3==="" || v3===null) &&
  (v4==="" || v4===null) && 
  (v5==="" || v5===null) && 
  (v6==="" || v6===null) && 
  (v7==="" || v7===null) && 
  (v8==="" || v8===null) && 
  (v9==="" || v9===null) &&
  (v10==="" || v10===null) &&
  (v11==="" || v11===null) &&
  (v12==="" || v12===null) &&
  (v13==="" || v13===null) &&
  (v14==="" || v14===null) &&
  (v15==="" || v15===null) &&
  (v16==="" || v16===null) &&  
  (v17==="" || v17===null) &&
  (v18==="" || v18===null) &&
  (v19==="" || v19===null) &&
  (v20==="" || v20===null) &&
  (v21==="" || v21===null) &&
  (v22==="" || v22===null) &&
  (v23==="" || v23===null) &&
  (v24==="" || v24===null) &&
  (v25==="" || v25===null) &&
  (v26==="" || v26===null) &&
  (v27==="" || v27===null) &&
  (v28==="" || v28===null) &&
  (v29==="" || v29===null) &&
  (v30==="" || v30===null) &&
  (v31==="" || v31===null) &&
  !$("#formulario input[name='estadofi']:radio").is(':checked') && 
  !$("#formulario input[name='vivePa']:radio").is(':checked') && 
  !$("#formulario input[name='convivePa']:radio").is(':checked') && 
  !$("#formulario input[name='viveMa']:radio").is(':checked') && 
  !$("#formulario input[name='conviveMa']:radio").is(':checked')&&
  !$("#formulario input[name='sexo']:radio").is(':checked') && 
  !$("#formulario input[name='seguro']:radio").is(':checked')){
  }else{
      alertify.success("Campos Limpiados");
  }  
});
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jqfichasiin.js"></script>
</body>
</html>
