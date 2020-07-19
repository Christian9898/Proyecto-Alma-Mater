<%@page import="Modelo.Asignacion"%>
<%@page import="Utils.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="Modelo.DocentesDB"%>
<%@page import="Modelo.Docentesh"%>
<%@page import="java.util.ArrayList"%>
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
        <title>BusDocente | I.E.P ALMA MATER</title>
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
     <h1>Busqueda Docente</h1>
     <label for="txtid" class="labe2">Ingrese Valor</label><input type="text" name="txtbuscar" class="labe3" placeholder="Nom-Cod-Dni-Estado">
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
                    <th>IdenDocen</th>
                    <th>Direccion</th>
                    <th>Email</th>
                    <th>Estado</th>
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
         ArrayList<Docentesh> listar = (ArrayList<Docentesh>)request.getAttribute("lista");
         ArrayList<Asignacion> listar7 = (ArrayList<Asignacion>)request.getAttribute("lista7");
         Conexion con=new Conexion();
         Statement smt;
         ResultSet rs;
         String nombuscar=request.getParameter("txtbuscar");
         
         if(nombuscar!=null){
            listar = new ArrayList<Docentesh>();
         smt =Conexion.getConexion().createStatement();
rs=smt.executeQuery("select * from docente where nomDoce LIKE"+"'%"+nombuscar+"%' or idenDocen LIKE"+"'%"+nombuscar+"%' or estDocen LIKE"+"'%"+nombuscar+"%' or CodDocen LIKE"+"'%"+nombuscar+"%'"+"ORDER BY CodDocen ASC");
while (rs.next()) {
                Docentesh vo = new Docentesh();
                vo.setCodocen(rs.getInt(1));
                vo.setNomdocen(rs.getString(2));
                vo.setApepatdocen(rs.getString(3));
                vo.setApematdocen(rs.getString(4));
                vo.setIdentidocen(rs.getString(5));
                vo.setEstdocente(rs.getString(8));
                vo.setDirdocen(rs.getString(10));
                vo.setEmaidocen(rs.getString(11));
                listar.add(vo);
            }
}else{
System.err.print("Error");
}
         
                    if (listar.size() > 0) {
                        for (Docentesh pdfvo : listar) {
                     int cantidad=0;
                            if(request.getAttribute("aviso").equals("asigna")){
                         for (Asignacion cant : listar7) {
                             if(cant.getCodoce()==pdfvo.getCodocen()){ 
                             cantidad++;
                             }
                         }
                         if(pdfvo.getEstdocente().equals("Activo") || cantidad>0){
                %>
                    <tr align="center">
                    
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getCodocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getNomdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getApepatdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getApematdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getIdentidocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getDirdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getEmaidocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getEstdocente()%></a></td>    
                   </tr>
                
                <%}}else{%>
                    <tr align="center">
                    
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getCodocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getNomdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getApepatdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getApematdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getIdentidocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getDirdocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getEmaidocen()%></a></td>
                    <td><a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp?idn="+pdfvo.getCodocen()+"\"");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp?tipo=Docente&idn="+pdfvo.getCodocen()+"\"");}else{out.print("ServletControlador?accion=mostrarAsigna&idn="+pdfvo.getCodocen()+"\"");}%>"><%=pdfvo.getEstdocente()%></a></td>    
                   </tr>
                  <%
                   }
                    }
                     }%>
            </tbody>
        </table> 
      </div>
            <div class="alineados">
                <a href="<%if(request.getAttribute("aviso").equals("mando")){out.print("MantenimientoDocente.jsp");}else if(request.getAttribute("aviso").equals("usuario")){out.print("MantenimientoUsuario.jsp");}else{out.print("ServletControlador?accion=mostrarAsigna");}%>"><input type="button" value="Regresar" class="labe4"></a>
            </div>
</div>
             </main>
            <script> 
     <%if(listar.size()==0){
     if(nombuscar!=null){%>
         alertify.error("Dato No Encontrado");  
    <%}}%>
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>     
</body>
</html>
