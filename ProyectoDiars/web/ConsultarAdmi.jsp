<%@page import="Utils.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Modelo.AdmiAluApod"%>
<%@page pageEncoding="iso-8859-1" contentType="text/html; charset=iso-8859-1" session="true"%>
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
        <title>SolAdmi | I.E.P ALAMA MATER</title>
        <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
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
 .alineados{
    text-align: center;
    width:100%;
    margin-bottom: 5px;
}
.labe3{
display: inline-block;
margin-top: 4px;
width:300px;
}
.labe4{
display: inline-block;
margin-top: 4px;
width:100px;
background: black;
color: white;
}
.labe4:hover{
    background: #0000FF;
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
                <li><a href="RegistrarVenta.jsp">Mantener Pedido</a></li>
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
        <h1>Consultar Admisiones</h1>
    </center>
                      <form action="" method="post">
      <div class="alineados">
     <input type="text" name="txtbuscar3" class="labe3" placeholder="Nivel y Grado">
     <input type="submit" value="Buscar" class="labe4">
      </div>
     </form>
                <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                    <th>C.Admi</th>
                    <th>Estudiante</th>
                    <th>Edad</th>
                    <th>Nivel</th>
                    <th>Grado</th>
                    <th>Apoderado</th>
                    <th>Telefono</th>
                    <th>Celular</th>
                    <th>Correo</th>
                    <th>Opcion</th>
                </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="10">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
                <%
                     ArrayList<AdmiAluApod> listar =(ArrayList<AdmiAluApod>)request.getAttribute("lista");
                     
         Statement smt2;
         ResultSet rs;
         String nombuscar3=request.getParameter("txtbuscar3");
         
                  if(nombuscar3!=null){
                       listar = new ArrayList<AdmiAluApod>();
         smt2 =Conexion.getConexion().createStatement();
rs=smt2.executeQuery("SELECT s.CodiSAlum,CONCAT(s.NomSAlum,"+"\" "+"\""+",s.ApePatSAlum,"+"\" "+"\""+",s.ApeMatSAlum)as ApellidosAlumno,s.EdadSAlum,n.desNive,g.desGrad ,CONCAT(p.NomApod,"+"\" "+"\""+",p.ApePatApod,"+"\" "+"\""+",p.ApeMatApod)as ApellidosApoderado,p.TelefoApod,p.CelulaApod,p.CorreoApod FROM SolicitudAlumno s INNER JOIN SolicitudApoderado p ON s.CodiSAlum = p.CodiSAlum INNER JOIN Nivel n ON n.codiNive = s.codiSNive INNER JOIN Grado g ON g.codiGrad = s.codiSGrad where g.desGrad like "+"'%"+nombuscar3+"%' or n.desnive like "+"'%"+nombuscar3+"%'");
            while (rs.next()) {
                AdmiAluApod vo = new AdmiAluApod();
                vo.setCodalum(rs.getInt(1));
                vo.setNombresalum(rs.getString(2));
                vo.setEdad(rs.getInt(3));
                vo.setNiv(rs.getString(4));
                vo.setGra(rs.getString(5));
                vo.setNombresapod(rs.getString(6));
                vo.setTelapod(rs.getInt(7));
                vo.setCelapod(rs.getInt(8));
                vo.setCorreapod(rs.getString(9));
                listar.add(vo);
            }
}else{
System.err.print("Error");
}
                     
                     
                    if (listar.size() > 0) {
                        for (AdmiAluApod pdfvo : listar) {
                            
                %>
                <tr align="center">
                    <td style="line-height: 40px;"><%=pdfvo.getCodalum()%></td>
                    <td><%=pdfvo.getNombresalum()%></td>
                    <td><%=pdfvo.getEdad()%></td>
                    <td><%=pdfvo.getNiv()%></td>
                    <td><%=pdfvo.getGra()%></td>
                    <td><%=pdfvo.getNombresapod()%></td>
                    <td><%=pdfvo.getTelapod()%></td>
                    <td><%=pdfvo.getCelapod()%></td>
                    <td><%=pdfvo.getCorreapod()%></td>
                    <td align="center">
                        <a href="ServletControlador?accion=EliminarAdmisiones&id=<%=pdfvo.getCodalum()%>"> <img src="imagenes/delete.png" title="Eliminar" class="opci"/></a>
                        <a href="mailto:<%=pdfvo.getCorreapod()%>"> <img src="imagenes/mensaje.png" title="Mensaje" class="opci"/></a>
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
         alertify.error("Admision No Encontrada");  
    <%}}%>
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
    </body>
</html>
