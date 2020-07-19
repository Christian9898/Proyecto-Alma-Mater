<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>
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
Docentesh d=new Docentesh();
AsignaxDocen as=new AsignaxDocen();
     
      if(request.getParameter("idn")!=null){
      d=DocentesDB.ConDocen(Integer.parseInt(request.getParameter("idn")));
      }
    if(request.getParameter("ids")!=null){
      as=AsignacionesDB.conAsignadito(Integer.parseInt(request.getParameter("ids")));
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <title>Asignaciones |I.E.P ALMA MATER</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <link rel="stylesheet" href="css/estiloasignadocente.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
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
#IdDocente{
    background: yellowgreen;
}
.deco:hover{
    background: yellowgreen;
    border-radius: 4px;
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
      <form name="addForm" action="ServletControlador" method="post" id="formulario">
                
		<section class="content-form">
		<h1 class="formulario__titulo">Asignaciones - Docentes</h1>

	<div class="form-group width-12">
		<div class="width-9">
                    <a href="ServletControlador?accion=MostrarDocentes&mes=asigna"><img src="imagenes/buscar.png" title="Buscar" class="deco"></a>
		</div>  
	</div>
                <h3 class="sub-form">Datos del Docente<div id="alerta" class="inival"></div></h3>
	<div class="form-group width-12">
        <div class="width-8">
        <input type="text" placeholder="Id" class="formulario__input" name="IdDocente" id="IdDocente" title="IdDocente" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodocen());}if(request.getParameter("ids")!=null){out.print(as.getCodoce());}%>" readonly="">
	</div>  
	<div class="width-8">
        <input type="text" placeholder="Nombre" class="formulario__input" title="Nombre" value="<%if(request.getParameter("idn")!=null){out.print(d.getNomdocen());}if(request.getParameter("ids")!=null){out.print(as.getNomdocen());}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Apellido Paterno" class="formulario__input" title="Apell.Paterno" value="<%if(request.getParameter("idn")!=null){out.print(d.getApepatdocen());}if(request.getParameter("ids")!=null){out.print(as.getApepatdocen());}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Apellido Materno" class="formulario__input" title="Apell.Materno" value="<%if(request.getParameter("idn")!=null){out.print(d.getApematdocen());}if(request.getParameter("ids")!=null){out.print(as.getApematdocen());}%>" readonly="">
	</div>
	</div>

        <h3 class="sub-form">Asignacion de Curso</h3>
        <table class="tablilla">
        <tr>
        <th>Nivel</th>
        <th>Grado</th>
        </tr>
        <tr>
        <td>
        <select name="cbNivel" id="cbNivel" class="presioname">
        <option value="" class="ocultame"></option>
        <%
                ArrayList<Nivel> lista=(ArrayList<Nivel>)request.getAttribute("lista");
                for(Nivel n: lista){
                %>
                <option value="<%=n.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodniv()==n.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=n.getDescnivel()%></option>
                <%}%>
        </select>
        </td>
        <td><select name="cbGrado" id="cbGrado" class="presioname">
        <option value="" class="ocultame"></option>
         <%
                ArrayList<Grado> lista2=(ArrayList<Grado>)request.getAttribute("lista2");
                for(Grado g: lista2){
                if(request.getParameter("ids")!=null){
                if(as.getCodgra()==5 || as.getCodgra()==6 ||as.getCodgra()==7 ||as.getCodgra()==8 ||as.getCodgra()==9 ||as.getCodgra()==10){
                if(g.getDescgrado().substring(3,8).equals("Grado")){%>             
                <option value="<%=g.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=g.getDescgrado()%></option>
                <%}}else{if(g.getDescgrado().substring(0,7).equals("Inicial")){%>
                <option value="<%=g.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=g.getDescgrado()%></option>
                <%}}}else{%>
                <option value="<%=g.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=g.getDescgrado()%></option>
                <%}}%>
        </select>
        </td>
        </tr>
        <tr>
        <th>Materia</th>
        <th>Seccion</th>
        </tr>
<tr>
<td>
<select name="cbMateria" id="cbMateria" class="presioname">
                <option value="" class="ocultame"></option>
 <%
                ArrayList<Materia> lista6=(ArrayList<Materia>)request.getAttribute("lista6");
                for(Materia m: lista6){
                if(request.getParameter("ids")!=null){
                if(as.getCodniv()==1){
                if(m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Comunicacion") || m.getDescmateria().equals("Matematica") || m.getDescmateria().equals("Psicomotriz") || m.getDescmateria().equals("C.Fonologica") || m.getDescmateria().equals("Formacion G.")){%>
                <option value="<%=m.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=m.getDescmateria()%></option>
                <%}}else{if(m.getDescmateria().equals("Aritmetica") || m.getDescmateria().equals("Algebra") || m.getDescmateria().equals("Geometría") || m.getDescmateria().equals("Razonamiento Matemático") || m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Lenguaje") || m.getDescmateria().equals("Ort. Y Calig.") || m.getDescmateria().equals("Tutoria") || m.getDescmateria().equals("Razonamiento Verbal")){%>
                <option value="<%=m.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=m.getDescmateria()%></option>
                <%}}}else{%>
                <option value="<%=m.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=m.getDescmateria()%></option>
                <%}}%>
</select>
</td>  
 <td>
 <select name="cbSeccion" id="cbSeccion" class="presioname">
        <option value="" class="ocultame"></option>        
  <%
                ArrayList<Seccion> lista3=(ArrayList<Seccion>)request.getAttribute("lista3");
                for(Seccion s: lista3){
                %>
                <option value="<%=s.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodsec()==s.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=s.getDescseccion()%></option>
                <%}%>
</select>
</td>   
</tr>
<tr>
<th>Dia</th>
<th>Turno</th>
</tr>
<tr>
	<td><select name="cbDia" id="cbDia" class="presioname">
                <option value="" class="ocultame"></option>
 <%
                ArrayList<Dias> lista5=(ArrayList<Dias>)request.getAttribute("lista5");
                for(Dias di: lista5){%>
                <option value="<%=di.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCoddia()==di.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=di.getDescdias()%></option>
                <%}%>
</select>
</td>
	<td><select name="cbTurno" id="cbTurno" class="presioname">
                <option value="" class="ocultame"></option>
  <%
                ArrayList<Turno> lista4=(ArrayList<Turno>)request.getAttribute("lista4");
                for(Turno t: lista4){
                if(request.getParameter("ids")!=null){
                if(as.getCodniv()==1){
                if(t.getDescturno().equals("Mañana")){%>
                <option value="<%=t.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=t.getDescturno()%></option>
                <%}}else{%>
                <option value="<%=t.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=t.getDescturno()%></option>
                <%}}else{%>
                <option value="<%=t.getCodigo()%>" <%if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}%> style="font-size: 14px;"><%=t.getDescturno()%></option>
                <%}}%>
                
</select>
</td>
</tr>
</table>
<h3 class="sub-form">Horario de Asignacion</h3>
<div class="form-group width-12">
    <div class="width-8">
<label for="">Hora de Inicio</label>
<input type="time" name="HoraIn" id="HoraIn" value="<%if(request.getParameter("ids")!=null){out.print(as.getHorain());}else{out.print("");}%>" class="formulariodeco">
</div>
<div class="width-8">
<label for="">Hora Fin</label>
<input type="time" name="HoraFin" id="HoraFin" value="<%if(request.getParameter("ids")!=null){out.print(as.getHorafin());}else{out.print("");}%>" class="formulariodeco">
</div>
</div>
<div class="datagrid">
<table class="tablilla2" border=1 cellspacing=0 cellpadding=2 bordercolor="#0000ff">
    <tr>
<th>C.Asigna</th>
<th>N.Docent</th>
<th>Nivel</th>
<th>Grado</th>
<th>Seccion</th>
<th>Dia</th>
<th>Materia</th>
<th>Turno</th>
<th>H.Inicio</th>
<th>H.Fin</th>
	</tr>
 <%
     ArrayList<Asignacion> listar7 = (ArrayList<Asignacion>)request.getAttribute("lista7");
      ArrayList<Docentesh> lista8=(ArrayList<Docentesh>)request.getAttribute("lista8");
     if(request.getParameter("idn")!=null){
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
    if(Integer.parseInt(request.getParameter("idn"))==asi.getCodoce()){
%>
<tr id="seleccionalist">
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%}
 }
}
}
else{
if(request.getParameter("codt")!=null){
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
if(Integer.parseInt(request.getParameter("codt"))==asi.getCodoce()){
%>
<tr id="seleccionalist">
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&codt=<%=asi.getCodoce()%>&ids=<%=asi.getCodasi()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%
 }
}
}
}else{
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
%>
<tr id="seleccionalist">
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=mostrarAsigna&ids=<%=asi.getCodasi()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%
}}}}
%>
</table>
</div>
 <div id="aparicion"></div>
 <div id="alertanew"></div>
<div class="form-group width-13">
                <button type="submit" id="submit" class="form-control btn">Guardar</button>
                <!--Para funcion eliminaro modificar-->
                <%if(request.getParameter("ids")!=null){%>
                <button type="submit" id="submit2" class="form-control btn">Modificar</button>
                <a href="ServletPostulante?accion=eliminasigna&id=<%if(request.getParameter("ids")!=null){out.print(as.getCodasi());}%>" id="Eliminar2" class="form-control btn"><input type="button" value="Eliminar" style="background: transparent;border: none;"></a>
		<%}else{%>
                   <!--Para el aviso eliminar o modificar-->
                <button type="button" id="Modificar1" class="form-control btn">Modificar</button>
                <input type="button" value="Eliminar" id="Eliminar1" class="form-control btn">
                <%}%>
                
                <button type="button" id="limpiar" class="form-control btn">Limpiar</button>
                <input type="hidden" name="accion" value="insertoasignacion">
                <input type="hidden" name="IdAsignacion" value="<%if(request.getParameter("ids")!=null){out.print(as.getCodasi());}%>">
	</div>
	</section>
	</form>
         </main>
          <script>
     
            <%if(request.getParameter("ids")==null){%>
$("#cbGrado").attr('disabled', 'disabled');
$("#cbTurno").attr('disabled', 'disabled');
$("#cbMateria").attr('disabled', 'disabled');
$("#cbDia").attr('disabled', 'disabled');
$("#cbSeccion").attr('disabled', 'disabled');
<%}%>    
            if("satisfactorio"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Registrada");
    }
                if("modificar"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Modificada");
    }
                    if("eliminado"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Eliminada");
    }
    if("repetido"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.error("Asignacion Repetida");  
    }
$('#limpiar').click(function() {
  var v2=$('#cbNivel').val();
  var v3=$('#cbGrado').val();
  var v4=$('#cbSeccion').val();
  var v5=$('#cbTurno').val();
  var v6=$('#cbMateria').val();
  var v7=$('#cbDia').val();
  var v8=$('#HoraIn').val();
  var v9=$('#HoraFin').val();
   if((v2==="" || v2===null)&& 
  (v3==="" || v3===null ) && 
  (v4==="" || v4===null ) && 
  (v5==="" || v5===null ) && 
  (v6==="" || v6===null ) && 
  (v7==="" || v7===null ) && 
  (v8==="" || v8===null ) && 
  (v9==="" || v9===null )){  
    }else{
        alertify.success("Campos Limpiados");
    }
        $('#cbGrado').val('');
        $('#cbTurno').val('');
        $('#cbMateria').val('');
        $('#cbDia').val('');
        $('#cbSeccion').val('');
        $('#cbNivel').val('');
        $('#HoraIn').val('');
        $('#HoraFin').val('');
       
         <%if(request.getParameter("ids")==null){
         %>
$("#cbGrado").attr('disabled', 'disabled');
$("#cbTurno").attr('disabled', 'disabled');
$("#cbMateria").attr('disabled', 'disabled');
$("#cbDia").attr('disabled', 'disabled');
$("#cbSeccion").attr('disabled', 'disabled');
<%}else{as.setCodgra(0);
         as.setCodtur(0);
         as.setCodmate(0);%>
    $("#cbGrado").attr('disabled', 'disabled');
$("#cbTurno").attr('disabled', 'disabled');
$("#cbMateria").attr('disabled', 'disabled');
$("#cbDia").attr('disabled', 'disabled');
$("#cbSeccion").attr('disabled', 'disabled');
    
    <%}%>
});
  
$('#cbNivel').on('change', function()
{
$("#cbGrado").removeAttr('disabled');
$("#cbTurno").removeAttr('disabled');
$("#cbMateria").removeAttr('disabled');
$("#cbDia").removeAttr('disabled');
$("#cbSeccion").removeAttr('disabled');

  var select2 = document.getElementById("cbGrado");
  var select3 = document.getElementById("cbTurno");
  var select4 = document.getElementById("cbMateria");
for (let i = select2.options.length; i >= 0; i--) {
    select2.remove(i);
  }
for (let i = select3.options.length; i >= 0; i--) {
    select3.remove(i);
  }
for (let i = select4.options.length; i >= 0; i--) {
    select4.remove(i);
  }
  select2.innerHTML = "<option value='' class='ocultame'></option>";
  select3.innerHTML = "<option value='' class='ocultame'></option>";
  select4.innerHTML = "<option value='' class='ocultame'></option>";
  //filtrado grado
  <%
   lista2=AsignacionesDB.obtenerGrado();
   for(Grado g: lista2){
if(g.getDescgrado().substring(3,8).equals("Grado")){
    %>
    if(this.value=="2"){     
    select2.innerHTML += "<option value='<%=g.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=g.getDescgrado()%></option>";     
    }
<%    
}       
else{%>
    if(this.value=="1"){     
select2.innerHTML += "<option value='<%=g.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=g.getDescgrado()%></option>";

}<%}%>

  <%
  }
  %>
   //filtrado turno
   <%
   lista4=AsignacionesDB.obtenerTurno();
   for(Turno t: lista4){
if(t.getDescturno().equals("Tarde") || t.getDescturno().equals("Mañana")){
    %>
    if(this.value=="2"){     
    select3.innerHTML += "<option value='<%=t.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=t.getDescturno()%></option>";     
    }
<%    
}       
if(t.getDescturno().equals("Mañana")){%>
    if(this.value=="1"){     
    select3.innerHTML += "<option value='<%=t.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=t.getDescturno()%></option>";

}<%}%>

  <%
  }
  %>
   //filtrado Materia
      <%
   lista6=AsignacionesDB.obtenerMateria();
   for(Materia m: lista6){
if(m.getDescmateria().equals("Aritmetica") || m.getDescmateria().equals("Algebra") || m.getDescmateria().equals("Geometría") || m.getDescmateria().equals("Razonamiento Matemático") || m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Lenguaje") || m.getDescmateria().equals("Ort. Y Calig.") || m.getDescmateria().equals("Tutoria") || m.getDescmateria().equals("Razonamiento Verbal")){
    %>
    if(this.value=="2"){     
    select4.innerHTML += "<option value='<%=m.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodtur()==m.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=m.getDescmateria()%></option>";     
    }
<%    
}       
if(m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Comunicacion") || m.getDescmateria().equals("Matematica") || m.getDescmateria().equals("Psicomotriz") || m.getDescmateria().equals("C.Fonologica") || m.getDescmateria().equals("Formacion G.")){%>
    if(this.value=="1"){     
    select4.innerHTML += "<option value='<%=m.getCodigo()%>'<%if(request.getParameter("ids")!=null){if(as.getCodtur()==m.getCodigo()){out.print("selected");}}%> style='font-size: 14px;'><%=m.getDescmateria()%></option>";

}<%}%>

  <%
  }
  %>       
});
 <%if(request.getParameter("ids")!=null){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}%>
   </script>                 
        <script src="js/estilovalidosdocent.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
            
    </body>
</html>
