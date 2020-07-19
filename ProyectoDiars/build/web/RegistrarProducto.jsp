<%@page import="Modelo.ProductoDB"%>
<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
Producto d=new Producto();
      if(request.getParameter("idn")!=null){
      d=ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("idn")));
 }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Reg.Prod | I.E.P ALMA MATER</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estiloshs.css">
        <link rel="stylesheet" href="css/estilomodals.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">  
         <script src="js/jquery-3.3.1.min.js"></script> 
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
      <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
             .jumbotron h3,.jumbotron p{
                margin-top: -20px;
                color: red;
            }
              section .container{
            background: cyan;
  }
  @media (min-width: 768px) and (max-width: 993px) {
      .eli{
         width: 90%;
         margin-top: 2px;
      }
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
      .centrar{
      width: 100%;
   }
   .tabla{
      width: 500px;
      margin-top: 30px;
   }
   .form-control{
        margin-top: 10px;
        
   }
   .ss{
width: 32.88%;
margin-top: 20px;
   }
   .separats{
       margin-top: 20px;
       background: #258cd1; 
   }
   .padd{
       padding-top: 40px;
   }
   .tamimg{
       margin:0 auto;
       text-align:center;
   }
   .tamimg2{
       border: 1px solid black;
       border-radius: 10px;
   }
      .tamimg2:hover{
background: #006dcc;
   }
   .bordeado{
   margin-bottom: 13px;
   margin-top: 13px;
   background: #149c82;
   }
   .abrete ,.aa{
       margin-top: 30px;
       margin-bottom: 5px;
   }
   .pp{
       background: #DEDEE4;
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
      <div class="centrar" id="centrar">
        
        <h2 align="center">Mantener Producto</h2> 
        <form action="ServletControlador" method="post">
            <table align="center" class="tabla">
                <tr>
                    <th class="tamimg">
                        <a href="ServletControlador?accion=MostrarProducto"><img src="imagenes/buscarop.png" title="Buscar" class="tamimg2"></a>
                    </th>
                    <th><input type="text" name="txtCodigo" class="form-control bordeado" readonly="" placeholder="Id *" value="<%if(request.getParameter("idn")!=null){out.print(d.getCodigoProducto());}%>"></th>
                </tr>
                <%if(request.getParameter("idn")!=null){%>
                <tr>
                    <th colspan="2" class="tamimg"><img src="img/<%=d.getImagen()%>" alt="" class="tamimg2" width="200" height="200" align="center"></th>
                </tr>
                <%}%>
                               <%if(request.getParameter("idn")==null){%>
                <tr>
                    <th>
                        <button type="button" class="abrete form-control btn btn-success">Subir imagen</button>
                    </th>
                    <th><input type="text" class="form-control aa" placeholder="Img" readonly="" id="txtimagen" name="txtImagen" value="<%if(request.getParameter("img")!=null){out.print(request.getParameter("img"));}%>"></th>
                </tr>
                <tr><th colspan="2"><div id="selecci"></div></th></tr>
                 <%}%>
                <tr>
                    <td>Nombre :</td>
                    <td><input type="text" required="" name="txtNombre" id="txtNombre" class="form-control pp" value="<%if(request.getParameter("idn")!=null){out.print(d.getNombre());}%>"></td>
                </tr>
                <tr>
                    <td>Precio :</td>
                    <td><input type="text" required="" name="txtPrecio" id="txtPrecio" class="form-control pp" value="<%if(request.getParameter("idn")!=null){out.print(d.getPrecio());}%>"></td>
                </tr>
                 <tr>
                    <td>Stock :</td>
                    <td><input type="text" required="" name="txtstpr" id="txtstpr" class="form-control pp" value="<%if(request.getParameter("idn")!=null){out.print(d.getStockproducto());}%>"></td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input type="submit" id="submit" class="btn btn-primary ss" value="Registrar" name="CargarImagen">
                                        <%if(request.getParameter("idn")!=null){%>
                <input type="submit" class="btn btn-primary ss" value="Modificar" name="Modificar">
                <a class="btn btn-primary eli ss" href="ServletControlador?accion=elimiproducto&id=<%if(request.getParameter("idn")!=null){out.print(d.getCodigoProducto());}%>">Eliminar</a> 
                <input type="hidden" name="accion" value="ModificarProducto">
                <%}else{%>
                <input type="hidden" name="accion" value="RegistrarProducto">
                <button type="button" id="Modificar1" class="btn btn-primary ss">Modificar</button>
                <button type="button" id="Eliminar1" class="btn btn-primary ss">Eliminar</button>
                <%}%>
                    </th>
                </tr>
            </table>
        </form>
      </div>
           </main>
                  
      	<aside id="modal" class="modal">
	  <div class="content-modal">
	  	<header>
       <a class="close-modal"><img src="imagenes/cerrar.png" alt="" title="Cerrar"></a>
	  </header>
              <article>
                         <div class="datagrid padd">
        <table align="center">
            <form action="SubirImagen.jsp" enctype="multipart/form-data" method="post">
                <tr>
                    <th><h2 align="center">Cargar Imagen</h2></th>
                </tr>
                <tr>  
                    <th><input type="file" accept="image/*" name="file" class="separats form-control"></th>
                </tr>
                <tr>
                    <th><input type="submit" value="Siguiente" name="CargarImagen" class="form-control btn btn-success alineate"> </th> 
                </tr>
            </form>
         
        </table>      
       </div>
              </article>
	  </div>  
	</aside>
            
 <script> 
                  $('#txtstpr').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});
                  $('#txtPrecio').on('input', function () { 
    this.value = this.value.replace(/[^0-9,.]/g,'');
});

     $("#txtNombre").attr('disabled', 'disabled');
$("#txtPrecio").attr('disabled', 'disabled');
$("#txtstpr").attr('disabled', 'disabled');
            if("satisfactorio"==="<%=request.getParameter("menso")%>"){
alertify.success("Producto Registrado");
    }
                if("modificar"==="<%=request.getParameter("menso")%>"){
alertify.success("Producto Modificado");
    }
                    if("eliminado"==="<%=request.getParameter("menso")%>"){
alertify.success("Producto Eliminado");
    }
            $('#selecci').click(function(){
       document.getElementById("selecci").innerHTML="";
}); 
            $('#centrar').click(function(){
       document.getElementById("selecci").innerHTML="";
}); 
     <%if(request.getParameter("img")!=null){%>
    $("#txtNombre").removeAttr('disabled');
$("#txtPrecio").removeAttr('disabled');
$("#txtstpr").removeAttr('disabled');    
    alertify.success("Imagen Grabada"); 
<%}%>
      <%if(request.getParameter("idn")!=null){%>
              $("#txtNombre").removeAttr('disabled');
$("#txtPrecio").removeAttr('disabled');
$("#txtstpr").removeAttr('disabled');   
 $("#submit").css({'color':'white','background':'red'});
 $("#submit").attr('disabled', 'disabled');
     <%}%>
  $(".abrete").click(function(){
    $("aside").show();
  });
   $(".close-modal").click(function(){
    $("aside").hide();
  });
  
        $('#Eliminar1').click(function(){
var alert = alertify.alert("Error","Seleccione un producto para Eliminar").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	
      });
       $('#Modificar1').click(function(){
var alert = alertify.alert("Error","Seleccione un producto para Modificar").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	

      });
       $('#submit').click(function(){
      if($('#txtimagen').val()!=="") {
 document.getElementById("selecci").innerHTML="";
 }else{
     document.getElementById("selecci").innerHTML='<div>Falta escoger una imagen</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 }  
 if($('#txtPrecio').val()!=="0") {
 document.getElementById("selecci").innerHTML="";
 }else{
     document.getElementById("selecci").innerHTML='<div>No se acepta valor de precio</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 }   if($('#txtstpr').val()!=="0") {
 document.getElementById("selecci").innerHTML="";
 }else{
     document.getElementById("selecci").innerHTML='<div>No se acepta valor de stock</div>';
 $("#selecci").css({'color':'white','background':'red','text-align':'center','font-weight':'bold','line-height':'20px','border-radius':'9px','margin-bottom':'8px'});
 $(".close").css({'font-weight':'900','color':'yellow','margin-right':'20px'});
 return false;
 }  
       });

        $('input[type="file"]').on('change', function(){
  var ext = $( this ).val().split('.').pop();
  if ($( this ).val() !== '') {
    if(ext === "jpg" || ext==="png" || ext==="jpeg" || ext==="bmp"){
      if($(this)[0].files[0].size > 1048576){
        console.log("El documento excede el tamaño máximo");
        /*$('#modal-title').text('¡Precaución!');
        $('#modal-msg').html("Se solicita un archivo no mayor a 1MB. Por favor verifica.");
        $("#modal-gral").modal();*/           
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
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
    </body>
</html>
