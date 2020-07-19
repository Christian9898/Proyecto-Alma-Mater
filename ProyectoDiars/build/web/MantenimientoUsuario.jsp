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
Docentesh d=new Docentesh();
Usuario u=new Usuario();
alumno a=new alumno();
 if(request.getParameter("tipo")!=null){
      if(request.getParameter("tipo").equals("Docente")){
      d=DocentesDB.ConDocen(Integer.parseInt(request.getParameter("idn")));
      u=usuarioDB.Conusariosporperfil(Integer.parseInt(request.getParameter("idn")), request.getParameter("tipo"));
      }
    else{
      a=fichainscriDB.ConAlumno(Integer.parseInt(request.getParameter("idn")));
      u=usuarioDB.Conusariosporperfil(Integer.parseInt(request.getParameter("idn")), request.getParameter("tipo"));
    }}
    %>
<!DOCTYPE html>
<html>
    <head>
        <title>User | I.E.P ALMA MATER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/estilosusuarios.css">
         <link rel="stylesheet" href="css/bootstrap.min.css">
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
                
      <div class="contenedor-form">
        <div class="formulario">
            <h2>Mantenimiento Usuarios</h2>
            <form action="ServletControlador" method="post">
                <div class="separador">
            <div class="opaci">
            <a href="ServletControlador?accion=MostrarDocentes&mes=usuario"><img src="imagenes/profesor.png" title="Docente"></a></div><div class="opaci">
            <a href="ServletControlador?accion=muestraalumnitos&mes=usuario2"><img src="imagenes/estudiante.png" title="Alumno"></a></div>
                </div>

                <input type="text" placeholder="Id" name="CodUsuario" value="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(d.getCodocen());}else{out.print(a.getCodalu());}}%>" required readonly style="background: yellowgreen">

                <input type="text" placeholder="Perfil" name="txtPerfil" value="<%if(request.getParameter("tipo")!=null){out.print(request.getParameter("tipo"));}%>"  required readonly>
                
                <input type="text" placeholder="Nombre" name="txtNombre" value="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(d.getNomdocen());}else{out.print(a.getNomalu());}}%>" required readonly>
                
                <input type="text" placeholder="Apellido Paterno" name="txtAPaterno" value="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(d.getApepatdocen());}else{out.print(a.getApepaalu());}}%>" required readonly>
                 <input type="text" placeholder="Apellido Materno" name="txtAMaterno" value="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(d.getApematdocen());}else{out.print(a.getApemaalu());}}%>" required readonly>

                 <input type="text" placeholder="Usuario" value="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){if(u.getCodusu()!=null){out.print(u.getCodusu());}else{out.print("");}}else{if(u.getCodusu()!=null){out.print(u.getCodusu());}else{out.print("");}}}%>" name="txtCuenta" required>
                
                <div class="opaci2"><input type="password" placeholder="<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){if(u.getClaveUsu()!=null){out.print(u.getClaveUsu());}else{out.print("Contraseña");}}else{if(u.getClaveUsu()!=null){out.print(u.getClaveUsu());}else{out.print("Contraseña");}}}else{out.print("Contraseña");}%>" name="txtContra"  id="password" required></div><div class="opaci3"><button class="btn btn-primary" type="button" onclick="mostrarContrasena()">Mostrar Contraseña</button></div>
                <div class="width-5">
                    <div class="width-3">
                <input type="submit" id="submit" name="Registrar" value="Registrar">
                <input type="hidden" name="accion" value="insertousuario">
            </div>
            <div class="width-3">
                <input type="submit" name="Modificar" value="Modificar">
             </div>
             <div class="width-3">
                 <a href="ServletControlador?accion=eliminarusuario&id=<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(u.getIdDooAlu());}else{out.print(u.getIdDooAlu());}}%>&perfil=<%if(request.getParameter("tipo")!=null){if(request.getParameter("tipo").equals("Docente")){out.print(u.getPerfil());}else{out.print(u.getPerfil());}}%>"><input type="button" value="Eliminar"></a>
             </div>
             </div>
            </form>
        </div>
    </div>
              </main>
             <script>
                if("insertado"==="<%=(String) request.getAttribute("aviso")%>"){
alertify.success("Usuario Registrado");
    }
                if("modificado"==="<%=(String)request.getAttribute("aviso")%>"){
alertify.success("Usuario Modificado");
    }
                if("eliminar"==="<%=(String)request.getAttribute("aviso")%>"){
alertify.success("Usuario Eliminado");
    }
 <%if(request.getParameter("idn")!=null){
 if((u.getCodusu()!=null) || (u.getClaveUsu()!=null)){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}}%>     
         
             </script>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
	<script src="js/contramues.js"></script>   
    </body>
</html>
