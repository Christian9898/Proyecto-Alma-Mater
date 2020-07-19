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
      alumno d=new alumno();
      AsignaxAlum as=new AsignaxAlum();
      if(request.getParameter("idn")!=null){
      d=fichainscriDB.ConAlumno(Integer.parseInt(request.getParameter("idn")));
      }
      if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){
      as=AsignaAluDB.conAsignaditoalum(Integer.parseInt(request.getParameter("ids")),Integer.parseInt(request.getParameter("ids1")));
      }
    %>
<!DOCTYPE html>
<html>
    <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <title>Asignaciones Alu |I.E.P ALMA MATER</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <link rel="stylesheet" href="css/estilosasignaalumno.css">
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
#IdAlumno{
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
      <form action="ServletControlador" name="addForm" method="get" type="text/css">
		<section class="content-form">
		<h1 class="formulario__titulo">Asignaciones - Alumnos<div id="alerta" class="inival"></h1>

	<div class="form-group width-12">
        <div class="width-9">
        <a href="ServletControlador?accion=muestraalumnitos&mes=asignacur"><img src="imagenes/buscar.png" title="Buscar" class="deco"></a>
        </div>  
     
	</div>
	<h3 class="sub-form">Datos del Alumno</h3>
        <div class="form-group width-12">
        <div class="width-8">
        <input type="text" placeholder="Id" class="formulario__input" name="IdAlumno" id="IdAlumno" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodalu());}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getIdalu());}%>" readonly=""> 
        </div> 
        <div class="width-8">
        <input type="text" placeholder="Nombre" class="formulario__input" value="<%if(request.getParameter("idn")!=null){out.print(d.getNomalu());}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getNombre());}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Apellido Paterno" class="formulario__input" value="<%if(request.getParameter("idn")!=null){out.print(d.getApepaalu());}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getApellpat());}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Apellido Materno" class="formulario__input" value="<%if(request.getParameter("idn")!=null){out.print(d.getApemaalu());}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getApellmat());}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Nivel *" class="formulario__input" value="<%if(request.getParameter("idn")!=null){ArrayList<Nivel> lista=(ArrayList<Nivel>)request.getAttribute("lista");for(Nivel n: lista){if(n.getCodigo()==d.getNivalu()){out.print(n.getDescnivel());}}}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){ArrayList<Nivel> lista=(ArrayList<Nivel>)request.getAttribute("lista");for(Nivel n: lista){if(n.getCodigo()==as.getNiv()){out.print(n.getDescnivel());}}}%>" readonly="">
	</div>
	<div class="width-8">
        <input type="text" placeholder="Grado *" class="formulario__input" value="<%if(request.getParameter("idn")!=null){ArrayList<Grado> lista1=(ArrayList<Grado>)request.getAttribute("lista2");for(Grado g: lista1){if(d.getGraalu()==g.getCodigo()){out.print(g.getDescgrado());}}}if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){ArrayList<Grado> lista1=(ArrayList<Grado>)request.getAttribute("lista2");for(Grado g: lista1){if(as.getGra()==g.getCodigo()){out.print(g.getDescgrado());}}}%>" readonly="">
	</div>
	</div>

<h3 class="sub-form">Asignacion de Curso</h3>

<select name="asignado" id="asignado" class="form-control" style="margin-bottom: 50px;">
                        <option value="" class="ocultame">C.Asigna - Nivel - Grado - Seccion - Dia - Materia - Turno - H.Inic - H.Fin</option>
                         <%
                            
                        ArrayList<Nivel> lista2=(ArrayList<Nivel>)request.getAttribute("lista");
                        ArrayList<Grado> lista3=(ArrayList<Grado>)request.getAttribute("lista2");
                        ArrayList<Seccion> lista4=(ArrayList<Seccion>)request.getAttribute("lista3");
                        ArrayList<Turno> lista5=(ArrayList<Turno>)request.getAttribute("lista4");
                        ArrayList<Dias> lista6=(ArrayList<Dias>)request.getAttribute("lista5");
                        ArrayList<Materia> lista7=(ArrayList<Materia>)request.getAttribute("lista6");
                        ArrayList<Asignacion> lista8=(ArrayList<Asignacion>)request.getAttribute("lista7");
                        ArrayList<Docentesh> lista9=(ArrayList<Docentesh>)request.getAttribute("lista8");
                       
                        for(Asignacion a: lista8){
                         %>
                         <option value="<%=a.getCodasi()%>" <%if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){if(as.getIdasigna()==a.getCodasi()){out.print("selected");}}%>><%=a.getCodasi()+" - "%><%for(Docentesh lo: lista9){if(lo.getCodocen()==a.getCodoce()){out.print(lo.getNomdocen()+" "+lo.getApepatdocen());}};out.print(" - ");for(Nivel no: lista2){if(no.getCodigo()==a.getCodniv()){out.print(no.getDescnivel());}};out.print(" - ");for(Grado go: lista3){if(go.getCodigo()==a.getCodgra()){out.print(go.getDescgrado());}};out.print(" - ");for(Seccion se: lista4){if(se.getCodigo()==a.getCodsec()){out.print(se.getDescseccion());}};out.print(" - ");for(Dias di: lista6){if(di.getCodigo()==a.getCoddia()){out.print(di.getDescdias());}}; out.print(" - ");for(Materia ma: lista7){if(ma.getCodigo()==a.getCodmate()){out.print(ma.getDescmateria());}}; out.print(" - ");for(Turno tu: lista5){if(tu.getCodigo()==a.getCodtur()){out.print(tu.getDescturno());}};%><%=" - "+a.getHorain()+" - "+a.getHorafin()%></option>
                        <%
                        }
                        
                        %>
</select>
<div class="datagrid">
<table class="tablilla2" border=1 cellspacing=0 cellpadding=2 bordercolor="#0000ff">
    <tr>
<th>C.Asigna</th>
<th>N.Alumn</th>
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
     ArrayList<asignalucon> listar10 = (ArrayList<asignalucon>)request.getAttribute("lista9");
      ArrayList<alumno> lista11=(ArrayList<alumno>)request.getAttribute("lista10");
     if(request.getParameter("idn")!=null){
if (listar10.size() > 0) {
for (asignalucon asi : listar10) {
    if(Integer.parseInt(request.getParameter("idn"))==asi.getCodalu()){
%>
<tr>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%for(alumno se: lista11){if(se.getCodalu()==asi.getCodalu()){out.print(se.getNomalu());out.print(" ");out.print(se.getApepaalu());}}%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodniv() %></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodgra()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodsec()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCoddia()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodmate()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodtur()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%}
 }
}
}
else{
if (listar10.size() > 0) {
for (asignalucon asi : listar10) {
%>
<tr>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%for(alumno se: lista11){if(se.getCodalu()==asi.getCodalu()){out.print(se.getNomalu());out.print(" ");out.print(se.getApepaalu());}}%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodniv() %></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodgra()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodsec()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCoddia()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodmate()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getCodtur()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=muestranivsa&ids=<%=asi.getCodasi()%>&ids1=<%=asi.getCodalu()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%
 }
}
}
%>
</table>
</div>
                                       
<div class="form-group width-13">
    <button type="submit" id="submit" name="Guardar" value="Guardar" class="form-control btn">Guardar</button>
		
                <!--Para funcion eliminaro modificar-->
                <%if(request.getParameter("ids")!=null){%>
                <input type="submit" id="submit2" name="Modificar" value="Modificar" class="form-control btn">
                <a href="ServletControlador?accion=Eliminarasigalu&idas=<%if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getIdasigna());}%>&idalu=<%if(request.getParameter("ids")!=null && request.getParameter("ids1")!=null){out.print(as.getIdalu());}%>" class="form-control btn">Eliminar</a>
		<%}else{%>
                <!--Para el aviso eliminar o modificar-->
                <button type="button" id="Modificar1" class="form-control btn">Modificar</button>
                <button type="button" id="Eliminar1" class="form-control btn">Eliminar</button>
                <%}%>
                <button type="button" id="limpiar" class="form-control btn">Limpiar</button>
                <input type="hidden" name="accion" value="insertoasignaalu">
            
	</div>
	</section>
	</form>
         </main>
                <script>
                                if("guardar"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Registrada");
    }
                if("modificar"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Modificada");
    }
                    if("eliminado"==="<%=(String)request.getAttribute("mensi")%>"){
alertify.success("Asignacion Eliminada");
    }
    $('#limpiar').click(function() {
  var v2=$('#asignado').val();
   if((v2==="" || v2===null)){  
    }else{
        alertify.success("Campos Limpiados");
    }
        $('#asignado').val('');
});
                    <%if(request.getParameter("ids")!=null){
                        if(as.getEstado().equals("Inactivo")){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
  $("#submit2").css({'color':'white','background':'red'});
 $("#submit2").attr('disabled', 'disabled');
 $("#limpiar").css({'color':'white','background':'red'});
 $("#limpiar").attr('disabled', 'disabled');
     <%}else{%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}}%>
         
              <%if(request.getParameter("idn")!=null){
                  if(d.getEstado().equals("Inactivo")){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}}%>
                </script>
        <script src="js/estilovalidosalum.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
    </body>
</html>
