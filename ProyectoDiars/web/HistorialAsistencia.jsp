<%@page import="Utils.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Modelo.Docentesh"%>
<%@page import="Modelo.Asistencia"%>
<%@page import="Modelo.fecpagos"%>
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
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
        <title>H.Asis | I.E.P ALMA MATER</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <script src="js/jquery-3.3.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
            .estilaso{
                width: 20%;
                height: 30px;
                font-size: 1em;
                margin-bottom: 20px;
                margin-left: 10px;
                margin-right: 10px;
                background: #99ccff;
            }
            .estilasoh{
                width: 20%;
                height: 30px;
                font-size: 1.1em;
                margin-bottom: 20px;
                margin-left: 10px;
                margin-right: 10px;
                background: black;
                color: white;
            }
            .estilasoh:hover{
                background: red;
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
        <h1>Historial de Asistencia</h1>
  </center>
  <form action="ServletControlador?accion=muestraasistencia&id=<%=(String)sesionOK.getAttribute("codiAd")%>" method="post">    
  <center>
  <select name="cbMes" class="presioname estilaso" id="presionalo">
      <option class="ocultame" value="null">Mes</option>
  <%
  ArrayList<fecpagos> lista=(ArrayList<fecpagos>)request.getAttribute("lista");
  for(fecpagos m: lista){
  %>
  <option value="<%=m.getCod()%>"><%=m.getMes()%></option>
  <%
  }
  %>
 </select>     
 <select name="estado" class="presioname estilaso" id="presionalo">
 <option value="null" class="ocultame">Asistencia</option>
 <option value="ASISTIO">ASISTIO</option>
 <option value="TARDANZA">TARDANZA</option>
 </select>
     <input type="submit" value="Buscar" class="estilasoh">  
  </center>
 </form>
      <div class="datagrid">
          
          <table>
            <thead>
                <tr align="center">
                    <th>Cod.Docente</th>
                    <th>Fecha</th>
                    <th>Hora I</th>
                    <th>Hora S</th>
                    <th>Estado</th>
                    <th>Opcion</th>
                </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="6">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
                <%
                     ArrayList<Asistencia> listar2 =(ArrayList<Asistencia>)request.getAttribute("lista2");
         String mes=null;
         String estado=null;
         if(!(request.getParameter("mes").equals("null"))){
             if(request.getParameter("mes").length()==1){
         mes="0"+request.getParameter("mes");
             }else{
              mes=request.getParameter("mes");
             }
             }
         if(!(request.getParameter("estad").equals("null"))){
         estado=request.getParameter("estad");}
              if(mes!=null || estado!=null){   
         Statement smt2;
         ResultSet rs;
         String buusu=(String)sesionOK.getAttribute("codiAd");
         int coner=Integer.parseInt(buusu);
            listar2= new ArrayList<Asistencia>();
         smt2 =Conexion.getConexion().createStatement();
         if(!(request.getParameter("mes").equals("null")) && !(request.getParameter("estad").equals("null"))){
         rs=smt2.executeQuery("select codAsis,codDocen,CONCAT(diaDocen,'/',mesDocen,'/',aniDocen)as Fecha,HorInDocen,HorSalDocen,estadoDocen,mensaje from asistencia WHERE codDocen='"+coner+"' AND estadoDocen='"+estado+"' AND mesDocen='"+mes+"'");
         }else{
         rs=smt2.executeQuery("select codAsis,codDocen,CONCAT(diaDocen,'/',mesDocen,'/',aniDocen)as Fecha,HorInDocen,HorSalDocen,estadoDocen,mensaje from asistencia WHERE codDocen='"+coner+"' AND (estadoDocen='"+estado+"' OR mesDocen='"+mes+"')");
         }
        while(rs.next()){
        Asistencia vo=new Asistencia();
                vo.setCodasis(rs.getInt(1));
                vo.setCoddocen(rs.getInt(2));
                vo.setFecdocen(rs.getString(3));
                vo.setHordocen(rs.getString(4));
                vo.setHordocensa(rs.getString(5));
                vo.setEstadocen(rs.getString(6));
                vo.setComunicado(rs.getInt(7));
         listar2.add(vo);
         }
        }else{
        System.err.print("Error");
        }
                     
                    if (listar2.size() > 0) {
                        for (Asistencia pdfvo : listar2) {
                            
                %>
                <tr align="center">
                    <td style="line-height: 40px;"><%=pdfvo.getCoddocen()%></td>
                    <td class="comunicate"><%=pdfvo.getFecdocen()%></td>
                    <td><%=pdfvo.getHordocen()%></td>
                    <td><%=pdfvo.getHordocensa()%></td>
                    <td><%=pdfvo.getEstadocen()%></td>
                    <td align="center">
                       <%
                           if(pdfvo.getEstadocen().equals("TARDANZA")){%>
                            <img src="imagenes/dislike.png" title="No Cumplio" class="opci"/>
                            <%if(pdfvo.getComunicado()==0){
                            %>
                            <a href="mailto:reyesrojas251999@gmail.com?Subject=Comunicado%20por%20Tardanza"><img src="imagenes/mensaje.png" title="Enviar" class="opci"/></a>
                           <!-- <input type="hidden" name="bool" value="<%=pdfvo.getComunicado()%>">-->
                           <%}
                            }else{%>
                             <img src="imagenes/like.png" title="Cumplio" class="opci"/>
                           <%
                           }
}
}
                     %>
                    </td>
                    
                    
                </tr>
               
            </tbody>
        </table>
    </div>
                
         </main>
            <script>
                <%if(listar2.size()==0){%>
          alertify.error("Dato No Encontrado");  
    <%}%>
$(document).ready(function(){
$('.ocultame').hide();
    });
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>  
    </body>
</html>
