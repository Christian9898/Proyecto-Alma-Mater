<%@page import="Modelo.Asignacion"%>
<%@page import="Modelo.asignalucon"%>
<%@page import="Utils.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="Modelo.Grado"%>
<%@page import="Modelo.Nivel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.alumno"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>BusAlum | I.E.P ALMA MATER</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/busqestilos.css">
        <link rel="stylesheet" href="css/styles.css" type="text/css" media="screen"/>
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
            <div class="conten">
     <form action="" method="post">
     <div class="alineados">
     <h1>Busqueda Alumno</h1>
     <label for="txtid" class="labe2">Ingrese Valor</label><input type="text" name="txtbuscar2" class="labe3" placeholder="Nom-Cod-Dni-Estado">
     <input type="submit" value="Buscar" class="labe4">
     </div>
     </form>
    
    <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apel.Paterno</th>
                    <th>Apel.Materno</th>
                    <th>IdenAlum</th>
                    <th>Genero</th>
                    <th>Nivel</th>
                    <th>Grado</th>
                    <th>Estado</th>
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
         ArrayList<alumno> listar3 = (ArrayList<alumno>)request.getAttribute("lista");
         ArrayList<asignalucon> listar7 = (ArrayList<asignalucon>)request.getAttribute("lista7");
         Statement smt2;
         ResultSet rs;
         String nombuscar2=request.getParameter("txtbuscar2");
         
                     
                      ArrayList<Nivel> lista2=(ArrayList<Nivel>)request.getAttribute("lista2");
                      ArrayList<Grado> lista1=(ArrayList<Grado>)request.getAttribute("lista1");
         
         
                  if(nombuscar2!=null){
                       listar3 = new ArrayList<alumno>();
         smt2 =Conexion.getConexion().createStatement();
rs=smt2.executeQuery("select * from alumno where NomAlu LIKE "+"'%"+nombuscar2+"%' or IdenAlu LIKE "+"'%"+nombuscar2+"%' or estado LIKE "+"'%"+nombuscar2+"%' or CodAlu LIKE "+"'%"+nombuscar2+"%'"+"ORDER BY CodAlu ASC");
            while (rs.next()) {
                alumno vo = new alumno();
                vo.setCodalu(rs.getInt(1));
                vo.setNomalu(rs.getString(2));
                vo.setApepaalu(rs.getString(3));
                vo.setApemaalu(rs.getString(4));
                vo.setIdenalu(rs.getString(5));
                vo.setGenalu(rs.getString(9));
                vo.setNivalu(rs.getInt(11));
                vo.setGraalu(rs.getInt(12));
                vo.setEstado(rs.getString(13));
                listar3.add(vo);
            }
}else{
System.err.print("Error");
}
                    if (listar3.size() > 0) {
                        for (alumno pdfvo : listar3) {
                            int cantidad=0;
                            if(request.getAttribute("aviso").equals("asignacur")){
                         for (asignalucon cant : listar7) {
                             if(cant.getCodalu()==pdfvo.getCodalu()){ 
                             cantidad++;
                             }
                         }
                         if(pdfvo.getEstado().equals("Activo") || cantidad>0){
                     
                %>
                    <tr align="center">
                    
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getCodalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getNomalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getApepaalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getApemaalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getIdenalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getGenalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%for (Nivel n : lista2) {if(n.getCodigo()==pdfvo.getNivalu()){out.print(n.getDescnivel());}}%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%for (Grado g : lista1) {if(g.getCodigo()==pdfvo.getGraalu()){out.print(g.getDescgrado());}}%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getEstado()%></a></td>    
                   </tr>
                   <%}}else{%>
                                       <tr align="center">
                    
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getCodalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getNomalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getApepaalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getApemaalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getIdenalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getGenalu()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%for (Nivel n : lista2) {if(n.getCodigo()==pdfvo.getNivalu()){out.print(n.getDescnivel());}}%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%for (Grado g : lista1) {if(g.getCodigo()==pdfvo.getGraalu()){out.print(g.getDescgrado());}}%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp?tipo=Alumno&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos&idn="+pdfvo.getCodalu()+"\"");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa&idn="+pdfvo.getCodalu()+"\"");}else{out.print("ServletControlador?accion=mostrarfichas&idn="+pdfvo.getCodalu()+"\"");}%>"><%=pdfvo.getEstado()%></a></td>    
                   </tr>
                   
             <%
                   }
                    }
                     }%>
            </tbody>
        </table> 
      </div>
            <div class="alineados">
                <a href="<%if(request.getAttribute("aviso").equals("usuario2")){out.print("MantenimientoUsuario.jsp");}else if(request.getAttribute("aviso").equals("pagos")){out.print("ServletControlador?accion=muestrapagos");}else if(request.getAttribute("aviso").equals("asignacur")){out.print("ServletControlador?accion=muestranivsa");}else{out.print("ServletControlador?accion=mostrarfichas");}%>"><input type="button" value="Regresar" class="labe4"></a>
            </div>
</div>
             </main>
<script> 
     <%if(listar3.size()==0){
     if(nombuscar2!=null){%>
         alertify.error("Alumno No Encontrado");  
    <%}}%>
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>     
    </body>
</html>
