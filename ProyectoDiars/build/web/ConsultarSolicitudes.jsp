<%@page import="Utils.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.SolicitudxPostul"%>
<%@page import="Modelo.SolicitudDB"%>
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
        <title>CSolPostul | I.E.P ALAMA MATER</title>
        <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <style>
               .alineados{
    width:100%;
    margin-bottom: 8px;
    padding-left: 5%;
    padding-right: 5%;
    text-align: center;
}
.labe2{
display: inline-block;
width:180px;
font-size: 20px;
margin-left: 65px;
}
.labe3{
display: inline-block;
margin-top: 4px;
width: 200px;
}
.labe4{
display: inline-block;
margin-top: 4px;
margin-left: 30px;
width: 80px;
background: black;
color: white;
border: none;
}
.labe4:hover{
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
   @media (max-width: 1155px) {
   .alineados{
 width:100%;
    margin-bottom: 8px;
}
  .labe2{
display: inline-block;
width:100px;
font-size: 20px;
margin-left: 80px;
}
.labe3{
display: inline-block;
margin-top: 4px;
width:200px;
}
.labe4{
display: inline-block;
margin-top: 4px;
margin-left: 30px;
}
 }
 @media (max-width: 990px) {
   .alineados{
 width:100%;
    margin-bottom: 8px;
    padding-left: 2%;
    padding-right: 2%;
}
  .labe2{
display: inline-block;
width:80px;
font-size: 20px;
margin-left: 50px;
}
.labe3{
display: inline-block;
margin-top: 4px;
width:200px;
}
.labe4{
display: inline-block;
margin-top: 4px;
margin-left: 30px;
}
 }
 @media (max-width: 700px) {
   .alineados{
text-align: center;
}
  .labe2{
width: 40%;
margin: auto;
}
.labe3{
width: 50%;
margin: auto;
}
.labe4{
display: block;
width: 30%;
margin: auto;
margin-top: 6px;
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
        <h1>Consultar Solicitudes</h1>
    </center>
            <div class="alineados">  
          <form action="" method="post">    
          <input type="text" name="txtbuscar4" class="labe3" placeholder="Fecha">
     <input type="submit" value="Buscar" class="labe4">         
    </form>
     </div>
    <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                    <th>Cod.Solicitud</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Fecha-Hora</th>
                    <th>Celular</th>
                    <th>Email</th>
                    <th>CV</th>
                    <th>Opcion</th>
                </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="8">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
                <%
                     ArrayList<SolicitudxPostul> listar =(ArrayList<SolicitudxPostul>)request.getAttribute("lista");
                      Statement smt2;
         ResultSet rs;
         String nombuscar3=request.getParameter("txtbuscar4");
         
                  if(nombuscar3!=null){
            listar= new ArrayList<SolicitudxPostul>();
         smt2 =Conexion.getConexion().createStatement();
        rs=smt2.executeQuery("SELECT codSoli,nomPostul,CONCAT(apepatPostul,' ',apematPostul)as Apellidos,fecSol,celPostul,emaPostul,cvSol FROM solicitud s INNER JOIN postulante p ON s.CodPostul = p.CodPostul where fecSol LIKE"+"'%"+nombuscar3+"%'"+" ORDER BY codSoli ASC");
        while(rs.next()){
        SolicitudxPostul vo=new SolicitudxPostul();
                vo.setCodsoli(rs.getInt(1));
                vo.setNomspostu(rs.getString(2));
                vo.setApelsstu(rs.getString(3));
                vo.setFechaSol(rs.getTimestamp(4));
                vo.setCel(rs.getInt(5));
                vo.setEmail(rs.getString(6));
                vo.setArchivopdf2(rs.getBytes(7));
         listar.add(vo);
         }
        }else{
        System.err.print("Error");
        }
                    if (listar.size() > 0) {
                        for (SolicitudxPostul pdfvo : listar) {
                            
                %>
                <tr align="center">
                    <td><%=pdfvo.getCodsoli()%></td>
                    <td><%=pdfvo.getNomspostu()%></td>
                    <td><%=pdfvo.getApelsstu()%></td>
                    <td><%=pdfvo.getFechaSol()%></td>
                    <td><%=pdfvo.getCel()%></td>
                    <td><%=pdfvo.getEmail()%></td>
                    <td align="center">
                        <%
                            if (pdfvo.getArchivopdf2() != null) {
                        %>
                        <a href="pdf?en=soli&id=<%=pdfvo.getCodsoli()%>" target="_blank"><img src="imagenes/mpdf.png" title="pdf"/></a>
                            <%
                                } else {
                                    out.print("Vacio");
                                }
                            %>
                    </td>
                    <td align="center">
                        <a href="ServletPostulante?accion=delete&id=<%=pdfvo.getCodsoli()%>"> <img src="imagenes/delete.png" title="Eliminar" class="opci"/></a>
                        <a href="GenerarCita.jsp?&idn=<%=pdfvo.getCodsoli()%>&nomb=<%=pdfvo.getNomspostu()+" "+pdfvo.getApelsstu()%>"> <img src="imagenes/cita.png" title="Cita" class="opci"/></a>
                    </td>
                </tr>
                <%}
                    }%>
            </tbody>
        </table>
    </div>
            </main>
            <script>
                     <%if(listar.size()==0){
     if(nombuscar3!=null){%>
         alertify.error("Solicitud No Encontrada");  
    <%}}%>
            </script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/code.js"></script>
</body>
</html>
