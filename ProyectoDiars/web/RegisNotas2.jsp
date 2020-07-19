<%@page import="java.util.Formatter"%>
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
        <title>R.Notas | I.E.P ALAMA MATER</title>
        <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <script src="js/jquery-3.3.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
            .datagrid table tr:hover{
                background: #99ccff;
                cursor: pointer;
            }
            .datagrid table tr a{
                display: block;
            }
            .espacio{
                text-align: center;
                width: 50px;
            }
            .bordes{
                text-align: center;
                background:transparent;
                width: 80px;
                border: none;
    outline:none !important;
    outline-width: 0 !important;
    box-shadow: none;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
            }
            .datagrid table tr td{
                text-align: center;
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
        <h1>Lista Alumnos - Notas</h1>
    </center>
                <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                    <th>Cod.Asigna</th>
                    <th>Materia</th>
                    <th>Grado</th>
                    <th>Alumno</th>
                    <th>Ex1</th>
                    <th>Ex2</th>
                    <th>Ex3</th>
                    <th>Ex4</th>
                    <th>P.F</th>
                    <th>Estado</th>
                    <th>Calificar</th>
                </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="11">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
<%
    ArrayList<Asigalu> lista=(ArrayList<Asigalu>)request.getAttribute("lista");
Formatter fmt = new Formatter();
if (lista.size() > 0) {
for (Asigalu asi : lista) {
 
%>
<tr>
    <form action="ServletControlador?accion=cambianotas&mensajes=oki" method="post">
    <td><input type="text" name="codasi" value="<%=asi.getIdAsigna()%>" class="bordes" readonly></td>
    <td><%=asi.getMateria()%></td>
    <td><%=asi.getGrado()%></td>
    <td><%=asi.getNombre()%></td>
    <td><input type="number"  name="examen1" value="<%=asi.getExam1()%>" class="espacio sape1" onKeyPress="if(this.value.length===2) return false;" min="0" max="20"></td>
    <td><input type="number"  name="examen2" value="<%=asi.getExam2()%>" class="espacio sape2" onKeyPress="if(this.value.length===2) return false;" min="0" max="20"></td>
    <td><input type="number"  name="examen3" value="<%=asi.getExam3()%>" class="espacio sape3" onKeyPress="if(this.value.length===2) return false;" min="0" max="20"></td>
    <td><input type="number"  name="examen4" value="<%=asi.getExam4()%>" class="espacio sape4" onKeyPress="if(this.value.length===2) return false;" min="0" max="20"></td>
    <td><%=asi.getPromf()%></td>
    <td><input type="text" name="estado" value="<%=asi.getEstado()%>" class="bordes" readonly></td>
    <td align="center"><input type="image" src="imagenes/Calificar.png" title="Calificar"/></td>
    <input type="hidden" name="codalu" value="<%=asi.getIdAlu()%>">
    </form>
</tr>
<%}
}
%>

            </tbody>
        </table>
    </div>
      
      
       </main>
<script>
    <%if(request.getParameter("mensajes")!=null){%>
         alertify.success("Calificacion Registrada");
    <%}%>
    $(document).ready(function(){
        var fecha = new Date(),
            dia = fecha.getDate(),
            mes = fecha.getMonth()+1, 
            year = fecha.getFullYear();
       if(mes==5){
        if(dia>=11 && dia<=20) {
       $(".sape1").removeAttr("readonly");
       $(".sape2").attr('readonly', 'readonly');
       $(".sape3").attr('readonly', 'readonly');
       $(".sape4").attr('readonly', 'readonly');
       }
       }else if(mes==7){
         if(dia>=11 && dia<=20) {
       $(".sape2").removeAttr("readonly");
       $(".sape1").attr('readonly', 'readonly');
       $(".sape3").attr('readonly', 'readonly');
       $(".sape4").attr('readonly', 'readonly');
       }   
       }else if(mes==9){
          if(dia>=11 && dia<=20) {
       $(".sape3").removeAttr("readonly");
       $(".sape2").attr('readonly', 'readonly');
       $(".sape1").attr('readonly', 'readonly');
       $(".sape4").attr('readonly', 'readonly');
       } 
           
       }else if(mes==11){
           if(dia>=11 && dia<=20) {
       $(".sape4").removeAttr("readonly");
       $(".sape2").attr('readonly', 'readonly');
       $(".sape3").attr('readonly', 'readonly');
       $(".sape1").attr('readonly', 'readonly');
       }
       }else{
       $(".sape1").attr('readonly', 'readonly');
       $(".sape2").attr('readonly', 'readonly');
       $(".sape3").attr('readonly', 'readonly');
       $(".sape4").attr('readonly', 'readonly');
       }
       
       
    });
    
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
      
      
    </body>
</html>
