<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
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
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>A.Notas | I.E.P ALAMA MATER</title>
        <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">
        <style>
            .datagrid table tr:hover{
                background: #99ccff;
                cursor: pointer;
            }
            .datagrid table tr a{
                display: block;
            }
            
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
    <center>
        <h1>Cursos Asignados</h1>
    </center>
          <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                    <th>Cod.Asigna</th>
                    <th>Nivel</th>
                    <th>Grado</th>
                    <th>Seccion</th>
                    <th>Dia</th>
                    <th>Materia</th>
                    <th>Turno</th>
                    <th>H.Inicio</th>
                    <th>H.Fin</th>
                </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="9">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
<%
    ArrayList<Nivel> lista=(ArrayList<Nivel>)request.getAttribute("lista");
    ArrayList<Grado> lista2=(ArrayList<Grado>)request.getAttribute("lista2");
    ArrayList<Seccion> lista3=(ArrayList<Seccion>)request.getAttribute("lista3");
    ArrayList<Turno> lista4=(ArrayList<Turno>)request.getAttribute("lista4");
    ArrayList<Dias> lista5=(ArrayList<Dias>)request.getAttribute("lista5");
    ArrayList<Materia> lista6=(ArrayList<Materia>)request.getAttribute("lista6");
     ArrayList<Asignacion> listar7 = (ArrayList<Asignacion>)request.getAttribute("lista7");

if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
if(asi.getCodoce()==Integer.parseInt((String)sesionOK.getAttribute("codiAd"))){
%>
<tr>
    <td style="line-height: 35px;"><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%=asi.getCodasi()%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%=asi.getHorain()%></a></td>
    <td><a href="ServletControlador?accion=mostraralumexam&ids=<%=asi.getCodasi()%>"><%=asi.getHorafin()%></a></td>
</tr>
<%}
}
}
%>

            </tbody>
        </table>
    </div>
      
      
       </main>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
    </body>
</html>
