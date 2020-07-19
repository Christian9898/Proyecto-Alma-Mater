<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       GradoAcademico c=new GradoAcademico();
       DatDocen e=new DatDocen();        
      if(request.getParameter("idn")!=null){
      d=DocentesDB.ConDocen(Integer.parseInt(request.getParameter("idn")));
      c=DocentesDB.ConGradoAca(Integer.parseInt(request.getParameter("idn")));
      e=DocentesDB.DatosDocentes(Integer.parseInt(request.getParameter("idn")));   }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Man.Docente | I.E.P ALMA MATER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilosdocentes.css">
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
          
                         <form action="ServletPostulante" id="formulario" method="post" enctype="multipart/form-data">
                        <section class="datgene content-form">
                        <h2 class="sub-title">Mantenimiento Docente</h2>
            		  <div class="form-group width-12">
				 <div class="width-10">
                                     <input type="text" placeholder="Buscar *" class="form-control" name="IdDocente" id="IdDocente" readonly="" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodocen());}%>"> 
				 </div> 
				 <div class="width-9">
                                     <a href="ServletControlador?accion=MostrarDocentes&mes=mando"><img src="imagenes/buscar.png" title="Buscar"></a>
				 </div>  
			</div>
                        <div class="form-group width-12">
                        <div class="width-4">
			<!--<label for="txtNombre" class="labe">Nombre :</label>-->
                        <input type="text" name="txtNombre" id="txtNombre" class="form-control" title="Nombre" placeholder="Nombre *" value="<%if(request.getParameter("idn")!=null){out.print(d.getNomdocen());}%>" required=""/>
                        </div>
                        <div class="width-4">
                        <!--<label for="txtApepate" class="labe2">Apellido Paterno :</label>-->
			<input type="text" name="txtApepate" id="txtApepate" class="form-control" title="Apell.Paterno" placeholder="Apellido Paterno *" value="<%if(request.getParameter("idn")!=null){out.print(d.getApepatdocen());}%>" required="">
                        </div>
                        <div class="width-4">
                        <!--<label for="txtApemate" class="labe3">Apellido Materno :</label>-->
                        <input type="text" name="txtApemate" id="txtApemate" class="form-control" title="Apell.Materno" placeholder="Apellido Materno *" value="<%if(request.getParameter("idn")!=null){out.print(d.getApematdocen());}%>" required="">
                        </div>
                        </div>
                                 
                        <div class="form-group">
			<div class="width-12">        
                        <!--<label for="txtDireccion" class="labe">Direccion :</label>-->
 			<input type="text" id="txtDireccion" name="txtDireccion" class="form-control" title="Direccion" placeholder="Dirección *" value="<%if(request.getParameter("idn")!=null){out.print(d.getDirdocen());}%>" required="">
                        </div>
                        </div>
                        <div class="form-group width-12">
 			<!--<label for="txtNacionalidad" class="labe">Nacionalidad :</label>-->
                        <div class="width-6">
                        <input type="text" id="txtNacionalidad" name="txtNacionalidad" class="form-control" title="Nacionalidad" placeholder="Nacionalidad *" value="<%if(request.getParameter("idn")!=null){out.print(d.getNaciondocen());}%>" required="">
                        </div>
                        <!--<label for="Dni" class="labe">DNI:</label>-->
                        <div class="width-6">
                        <input type="text"  class="form-control" maxlength="8" name="dni" id="dni" title="DNI" placeholder="Dni *" value="<%if(request.getParameter("idn")!=null){out.print(d.getIdentidocen());}%>" required="">
                        </div>
                        </div>
                        <div class="form-group width-12">
                        <!--<label for="txtCelular" class="labe">Celular :</label>-->
                        <div class="width-6">
                            <input type="text"  name="txtCelular" maxlength="9" id="txtCelular" title="Celular" class="form-control" placeholder="Celular *" value="<%if(request.getParameter("idn")!=null){out.print(d.getCeldocen());}%>" required=""> 
                        </div>
			<!--<label for="txtTelefono" class="labe">Telefono :</label>-->
                        <div class="width-6">
			<input type="text" id="txtCorreo" name="txtCorreo" class="form-control" title="Correo" placeholder="Correo *" value="<%if(request.getParameter("idn")!=null){out.print(d.getEmaidocen());}%>" required="">
                        </div>
			</div>	
                        <div class="form-group width-12">
		        <h3 class="sub-form">Fecha de Nacimiento</h3>
                         <input type="date" name="fechana" id="fechana" min="1500-1-1" max="2030-12-31" placeholder="dd/mm/aa" step="1" class="form-control" value="<%if(request.getParameter("idn")!=null){out.print(d.getFecnadocen());}%>" required=""> 
                        </div>
                        <div class="form-group width-12">
                        <h3 class="sub-form">Nivel de Formacion</h3>
			<div class="width-3">
                            <label for="Bachillerato"><input type="radio" name="estado" class="radio" value="Bachillerato" required="" id="Bachillerato" <%if(request.getParameter("idn")!=null){if(c.getDesforaca().equals("Bachillerato")){out.print("checked");}}%> >Bachillerato</label>
                        </div>
                        <div class="width-3">
                        <label for="Titulado"><input type="radio" name="estado" class="radio" value="Titulado" id="Titulado" <%if(request.getParameter("idn")!=null){if(c.getDesforaca().equals("Titulado")){out.print("checked");}}%>>Titulado</label>
                        </div>
                        <div class="width-3">
                        <label for="Maestria"><input type="radio" name="estado" class="radio" value="Maestria" id="Maestria" <%if(request.getParameter("idn")!=null){if(c.getDesforaca().equals("Maestria")){out.print("checked");}}%>>Maestria</label>
                        </div>
                        <div class="width-3">
                        <label for="Doctorado"><input type="radio" name="estado" class="radio" value="Doctorado" id="Doctorado" <%if(request.getParameter("idn")!=null){if(c.getDesforaca().equals("Doctorado")){out.print("checked");}}%>>Doctorado</label>
                        </div>
                        </div>
                        
			<div class="form-group width-12">
                        <h3 class="sub-form">Tiempo de Dedicacion</h3>
                        <div class="width-4">
                            <label for="Tiempo_Completo"><input type="radio" class="radio" id="Tiempo_Completo" name="dedicacion" required="" value="Tiempo Completo" <%if(request.getParameter("idn")!=null){if(e.getDestiem().equals("Tiempo Completo")){out.print("checked");}}%>>Tiempo Completo</label>
                        </div>
                        <div class="width-4">
                        <label for="Medio_Tiempo"><input type="radio" class="radio" id="Medio_Tiempo" name="dedicacion" value="Medio Tiempo" <%if(request.getParameter("idn")!=null){if(e.getDestiem().equals("Medio Tiempo")){out.print("checked");}}%>>Medio Tiempo</label>
                        </div>
                        <div class="width-4">
                        <label for="Tiempo_Parcial"><input type="radio" class="radio" id="Tiempo_Parcial" name="dedicacion" value="Tiempo Parcial" <%if(request.getParameter("idn")!=null){if(e.getDestiem().equals("Tiempo Parcial")){out.print("checked");}}%>>Tiempo Parcial</label>
                        </div>          
                        </div>
                        <div class="form-group width-12">
                        <h3 class="sub-form">Estado</h3>
                        <div id="alerta"></div>
                        <div class="width-4">
                        <label for="Activo"><input type="radio" class="radio" id="Activo" name="estado2" value="Activo" <%if(request.getParameter("idn")!=null){if(d.getEstdocente().equals("Activo")){out.print("checked");}}%> required="">Activo</label>
                        </div>
                        <div class="width-4">
                        <label for="Inactivo"><input type="radio" class="radio" id="Inactivo" name="estado2" value="Inactivo" <%if(request.getParameter("idn")!=null){if(d.getEstdocente().equals("Inactivo")){out.print("checked");}}%>>Inactivo</label>
                        </div>       
                        </div>
                        <div class="form-group width-12">
                        <h3 class="sub-form">Fecha de ingreso</h3>
			<input type="date" name="fechaing" id="fechaing" min="2000-1-1" max="2030-12-31" placeholder="dd/mm/aa" step="1" class="form-control" value="<%if(request.getParameter("idn")!=null){out.print(e.getFechaingre());}%>" required=""> 
                        </div>
                        
                        <div class="form-group width-12">
			<h3 class="sub-form">Curriculum Vitae(CV)</h3>
                        <div id="selecci"></div>
                        <input type="file" name="fichero"  accept="application/pdf" id="fichero" class="form-control">
			 </div>
                        
                        <%
                        if(request.getParameter("idn")!=null){
                        if (e.getArchivopdf2() != null) {
                        %>
                         <div class="form-group width-12">
                         <a href="pdf?en=docen&id=<%=d.getCodocen()%>" target="_blank"><img src="imagenes/mpdf.png" title="pdf"/></a>
                         </div>  
                        <%
                            }
                            }

                            %>  
	    <div class="form-group width-13">
                <input type="submit"  id="submit" name="Enviar" value="Enviar" class="form-control btn">
            <input type="submit" name="Modificar" value="Modificar" class="form-control btn">
            <!--<a href="ServletPostulante?accion=elimidocente&id=<//%=d.getCodocen()%>" class="form-control btn"><input type="button" value="Eliminar" style="background: transparent;border: none;"></a>-->
            <button type="button" name="btnLimpiar" value="Limpiar" id="limpiar" class="form-control btn">Limpiar</button>
            <input type="hidden" name="accion" value="insertodocente">
           <input type="hidden" name="ficheroconda" value="<%=e.getArchivopdf()%>">
            </div>
                     </section>
            </form>
            </main>
   
<script>
                if("insertado"==="<%=(String)request.getParameter("mensa")%>"){
alertify.success("Docente Registrado");
    }
                if("modificado"==="<%=(String)request.getParameter("mensa")%>"){
alertify.success("Docente Modificado");
    }
$('#txtCelular').on('input', function () { 
this.value = this.value.replace(/[^0-9]/g,'');
});
$('#dni').on('input', function () { 
this.value = this.value.replace(/[^0-9]/g,'');
});
 $('#submit').click(function(){
  var v2=$('#txtNombre').val();
  var v3=$('#txtApepate').val();
  var v4=$('#txtApemate').val();
  var v5=$('#txtDireccion').val();
  var v6=$('#txtNacionalidad').val();
  var v7=$('#dni').val();
  var v8=$('#txtCelular').val();
  var v9=$('#txtCorreo').val();
  var v10=$('#fichero').val();
  var v11=$('#fechana').val();
  var v12=$('#fechaing').val();
  if(!($("#formulario input[name='estado']:radio").is(':checked')) ||
     !($("#formulario input[name='dedicacion']:radio").is(':checked')) ||
     !($("#formulario input[name='estado2']:radio").is(':checked')) ||
  (v2==="") || 
  (v3==="") || 
  (v4==="") || 
  (v5==="") || 
  (v6==="") || 
  (v7==="") || 
  (v8==="") || 
  (v9==="") ||
  (v11==="") ||
  (v12==="")){
  }else{ 
      if(v10!=="") {
 document.getElementById("selecci").innerHTML="";
 }else{
       <%if(request.getParameter("idn")==null){%>
     document.getElementById("selecci").innerHTML='<div>Falta asignar un CV</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px','width':'100%'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 <%}%>
 }    
if($("#dni").val().length < 8 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="") {  
        alertify.success("El dni debe tener 8 caracteres. Ej. 72180104");
        $("#dni").focus();
        return false;  
} 
if($("#txtCelular").val().length < 9 && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="") {  
        alertify.success("El celular debe tener 9 caracteres. Ej. 666112233");
        $("#txtCelular").focus();
        return false;  
} 
if(($("#txtCorreo").val().indexOf('@', 0) === -1 || $("#txtCorreo").val().indexOf('.', 0) === -1) && v2!=="" && v3!=="" && v4!=="" && v5!=="" && v6!=="" && v7!=="" && v8!=="" && v9!=="" && v10!=="") {  
        alertify.success("El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        $("#txtCorreo").focus();
        return false;  
} 
  }
 });
  $('input[type="file"]').on('change', function(){
  var ext = $( this ).val().split('.').pop();
  if ($( this ).val() !== '') {
    if(ext === "pdf"){
      if($(this)[0].files[0].size > 1048576){
        console.log("El documento excede el tamaño máximo");
        $('#modal-title').text('¡Precaución!');
        $('#modal-msg').html("Se solicita un archivo no mayor a 1MB. Por favor verifica.");
        $("#modal-gral").modal();           
        $(this).val('');
      }else{
        $("#modal-gral").hide();
      }
    }
    else
    {
      $( this ).val('');
      alertify.error("Extensión no permitida: " + ext);
    }
  }
});
$('#fichero').click(function(){
  alertify.success("¡Suba su archivo en PDF!");
 });
  <%if(request.getParameter("idn")!=null){%>
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}%>
         
$('#limpiar').click(function() {
        var v2=$('#txtNombre').val();
  var v3=$('#txtApepate').val();
  var v4=$('#txtApemate').val();
  var v5=$('#txtDireccion').val();
  var v6=$('#txtNacionalidad').val();
  var v7=$('#dni').val();
  var v8=$('#txtCelular').val();
  var v9=$('#txtCorreo').val();
  var v10=$('#fichero').val();
  var v11=$('#fechana').val();
  var v12=$('#fechaing').val();   
        if(!($("#formulario input[name='estado']:radio").is(':checked')) &&
     !($("#formulario input[name='dedicacion']:radio").is(':checked')) &&
     !($("#formulario input[name='estado2']:radio").is(':checked')) &&
  (v2==="") && 
  (v3==="") && 
  (v4==="") && 
  (v5==="") && 
  (v6==="") && 
  (v7==="") && 
  (v8==="") && 
  (v9==="") &&
  (v10==="") &&
  (v11==="") &&
  (v12==="")){
  }else{ 
      
  alertify.success("Campos Limpiados");
   document.getElementById("selecci").innerHTML="";
  } 
  $('.radio').removeAttr('checked');
  $('#txtNombre').val("");
  $('#txtApepate').val('');
  $('#txtApemate').val('');
  $('#txtDireccion').val('');
  $('#txtNacionalidad').val('');
  $('#dni').val('');
  $('#txtCelular').val('');
  $('#txtCorreo').val('');
  $('#fichero').val('');
  $('#fechana').val('');
  $('#fechaing').val('');   
    });
  $('#selecci').click(function(){
  document.getElementById("selecci").innerHTML="";
});    
 $('#formulario').click(function(){
    document.getElementById("selecci").innerHTML="";
});
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
