<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
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
      if(request.getParameter("idn")!=null){
      d=fichainscriDB.ConAlumno(Integer.parseInt(request.getParameter("idn")));
}
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagos | I.E.P ALMA MATER</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
        <link rel="stylesheet" href="css/estilospago.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
 <script src="js/jquery-3.3.1.min.js"></script>
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
            <section class="contenedor-form">
        
                <div class="formulario" id="formulario">
            
            <h1>Registro Pagos</h1>
            <form action="ServletControlador?accion=regispagos" method="post">
                 <label class="label">Datos del Operario</label>
                <div class="width-5">
                <div class="width-3">
                    <input type="text" class="letras" name="txtIdOperario" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("codiAd"));}%>" placeholder="Codigo" required readonly></div><div class="width-3">
                <input type="text" class="letras" name="txtCargOperario" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print((String)sesionOK.getAttribute("perfil"));}%>" placeholder="Cargo" required readonly>
                 </div><div class="width-3">
                <input type="text" class="letras" name="txtNomApeOperario" value="<%if(sesionOK.getAttribute("perfil")!=null){out.print(nom);}%>" placeholder="Nombres y Apellidos" required readonly></div>
                </div>
           
  <div class="width-5">               
</div>
                 <label class="label">Datos del alumno</label>
                 <div class="opaci">
                 <a href="ServletControlador?accion=muestraalumnitos&mes=pagos"><img src="imagenes/estudiante.png" title="Alumno"></a></div>
                <div class="width-5">
                <div class="width-2">
                    <input type="text"  class="letras" name="IdAlumno" id="IdAlumno" placeholder="IdAlumno" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodalu());}%>" readonly style="background-color: yellow;"></div><div class="width-2"><input type="text" class="letras" name="DniAlumno" placeholder="Dni o canet de entranjeria" value="<%if(request.getParameter("idn")!=null){out.print(d.getIdenalu());}%>" readonly></div></div>

               <div class="width-5">
                <div class="width-3">
                <input type="text" class="letras" name="txtNombAlumno" placeholder="Nombre" value="<%if(request.getParameter("idn")!=null){out.print(d.getNomalu());}%>" readonly></div>
                <div class="width-3">
                <input type="text" class="letras" name="txtApePAlumno" placeholder="Apellido Paterno" value="<%if(request.getParameter("idn")!=null){out.print(d.getApepaalu());}%>" readonly></div>
                <div class="width-3"><input type="text" class="letras" name="txtApeMAlumno" placeholder="Apellido Materno" value="<%if(request.getParameter("idn")!=null){out.print(d.getApemaalu());}%>" readonly></div>
                </div>
            <label class="label">Datos del Comprobante</label>
            <div class="width-5">
                 <div class="width-2">
                    <div class="width-5">
                <div class="width-2"><p style="margin-top: 10px;">N° Documento</p></div>
                <div class="width-2"><input type="text" class="letras" name="idComprobante" value="<%=request.getAttribute("canti")%>" readonly></div></div></div><div class="width-2">
                    <input type="text" class="letras fecha" name="txtFeAComprobante" placeholder="Fecha Actual" readonly></div>
            </div>

         <div class="width-5">
              <div class="width-3">
                  <select name="cbMesCompro" class="presioname" id="presionalo" onChange="imprimirValor()" required>
                      <option value="" class="ocultame">Mes</option>
 <%
                ArrayList<fecpagos> lista=(ArrayList<fecpagos>)request.getAttribute("lista");
                for(fecpagos m: lista){
                %>
                <option value="<%=m.getMes()%>"><%=m.getMes()%></option>
                  <%
                }
                %>
</select>
                 </div><div class="width-3">
                     <input  type="text" class="letras" name="txtFeVComprobante" id="txtFeVComprobante" placeholder="Fecha de Vencimiento" readonly></div><div class="width-3">
                     <input  type="text" class="letras" name="txtMontoApagar" id="txtMontoApagar" value="" placeholder="Monto a Pagar" readonly>
                </div>
             </div>

                <label class="label">Responsable de Pago</label>
                <div class="width-5">
                    <div class="width-3"><input type="text" maxlength="8" name="txtdniResPago" id="txtdniResPago" class="letras" placeholder=" Dni o carnet de extranjeria" required></div>
                <div class="width-3">
                    <input type="text" class="letras" name="txtNomResPago" id="txtNomResPago" placeholder="Nombre" required></div>
                <div class="width-3">
                    <input type="text" class="letras" name="txtApResPago" id="txtApResPago" placeholder="Apellidos" required></div>
                </div>
<div id="selecci"></div>
                <div class="width-5">
                    <div class="width-2">
                        <input type="submit" id="submit" value="Registrar">
            </div>
             <div class="width-2">
                 <button type="button" class="reset" id="reset" name="btnLimpiar">Limpiar</button>
             </div>
             </div>
            </form>
        </div>
    </section>
  </main>
  <script>
$('.ocultame').hide();
$('#selecci').click(function(){
       document.getElementById("selecci").innerHTML="";
});   
             $('#txtdniResPago').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
 $('#reset').click(function() { 
  var v2=$('#txtFeVComprobante').val();
  var v3=$('#txtMontoApagar').val();
  var v4=$('#txtdniResPago').val();
  var v5=$('#txtNomResPago').val();
  var v6=$('#txtApResPago').val();
  var v7=$('#presionalo').val();
   if((v2==="") && 
  (v3==="") && 
  (v4==="") && 
  (v5==="") && 
  (v6==="") &&
  (v7==="")){
      
  }else{
      alertify.success("Campos Limpiados");
     $('#txtFeVComprobante').val('');
        $('#txtMontoApagar').val('');
        $('#txtdniResPago').val('');
        $('#txtNomResPago').val('');
        $('#txtApResPago').val('');
         $('#presionalo').val('');
  }  
});
<%if(request.getAttribute("aviso2")!=null){%>
  alertify.success("Pago Registrado");
 <%}%>   
$('#submit').click(function(){ 
  var v1=$('#IdAlumno').val();
  var v2=$('#txtFeVComprobante').val();
  var v3=$('#txtMontoApagar').val();
  var v4=$('#txtdniResPago').val();
  var v5=$('#txtNomResPago').val();
  var v6=$('#txtApResPago').val();
  var v7=$('#presionalo').val();
 
 if((v1==="") ||
  (v2==="") || 
  (v3==="") || 
  (v4==="") || 
  (v5==="") || 
  (v6==="") ||
  (v7==="")){
     if(v1!=="") {
 document.getElementById("selecci").innerHTML="";
 }else{  
 document.getElementById("selecci").innerHTML='<div>Falta escoger un alumno</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','position':'absolute','width':'200px','top':'230px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 }  
  }else{
   if($("#txtdniResPago").val().length < 8 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v1!=="") {  
        alertify.success("El dni debe tener 8 caracteres. Ej. 72167103");
        $("#txtdniResPago").focus();
        return false;  
    } 
  }
});
$('#formulario').click(function(){
    document.getElementById("selecci").innerHTML="";
});
      
var f = new Date();
$(".fecha").val(f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear());
$(".fecha").css({'text-align': 'right','font-weight': 'bold','color':'black'});
imprimirValor();
function imprimirValor(){
var select = document.getElementById("presionalo");
if(select.value=="Enero"){
document.getElementsByName("txtMontoApagar")[0].value = 250;
document.getElementsByName("txtFeVComprobante")[0].value = "31/01/"+f.getFullYear();
  }else if(select.value=="Febrero"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "28/02/"+f.getFullYear();
 }else if(select.value=="Marzo"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/03/"+f.getFullYear();
 }else if(select.value=="Abril"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "30/04/"+f.getFullYear();
 }else if(select.value=="Mayo"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/05/"+f.getFullYear();
 }else if(select.value=="Junio"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "30/06/"+f.getFullYear();
 }else if(select.value=="Julio"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/07/"+f.getFullYear();
 }else if(select.value=="Agosto"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/08/"+f.getFullYear();
 }else if(select.value=="Septiembre"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "30/09/"+f.getFullYear();
 }else if(select.value=="Octubre"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/10/"+f.getFullYear();
 }else if(select.value=="Noviembre"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "30/11/"+f.getFullYear();
 }else if(select.value=="Diciembre"){
 document.getElementsByName("txtMontoApagar")[0].value = 250;
 document.getElementsByName("txtFeVComprobante")[0].value = "31/12/"+f.getFullYear();
 }else{}
 }
   </script>    
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
    </body>
</html>