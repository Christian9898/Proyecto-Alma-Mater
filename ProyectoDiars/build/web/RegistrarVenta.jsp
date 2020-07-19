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
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <title>Re.V | I.E.P ALMA MATER</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">
        <link rel="stylesheet" href="css/estilomodals.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
        <style>
           input[type="text"]{
            border: 0;
            outline: none;
            vertical-align: middle;
            background: transparent;
            }
            input[type="submit"]{
             border: 0;
            outline: none;
            vertical-align: middle;
            background: black;
            }
            main{
                margin-top: 90px;
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
.canti{
    display:flex;
}
.canti2{
    width: 40px;
    text-align:center;
}
.colosin{
    font-weight: bold;
    color: white;
    background: black;
    border: 0px;
    margin: 0px;
    border-radius: 3px;
}
.colosin:hover{
    background: red;
}
.flaticon-garbage:hover{
    color: #000;
}
   .padd{
       padding-top: 0px;
   }
   .npedid{
       background: #ff0;
   }
   .negrilla{
       font-size: 20px;
       font-family: monospace;
       font-weight: bold;
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
        <form method="post" action="ServletControlador">
            
                    <section id="carrito-compras">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <h5><i class="flaticon-shopping-cart"></i> Tu Carrito</h5>
                                        </div>
                                        <div class="col-xs-3">
                                          
                                                <a href="index.jsp" style="color: white;text-decoration: none" class="btn btn-primary btn-sm btn-block"><i class="flaticon-next"></i> Continuar con la Compra</a>
                                           
                                        </div>
                                        <div class="col-xs-3">
                                           
                                                <a href="ServletLogueo?accion=Cancelar" style="color: white;text-decoration: none" class="btn btn-primary btn-sm btn-block"><i class="flaticon-cancel"></i> Cancelar Compra</a>
                                            
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                            <div class="panel-body">
                                <input type="hidden" name="accion" value="registrarVenta">
               <input type="hidden" name="txtCliente" value="<%
                     if(sesionOK.getAttribute("perfil")!=null)
                {
                    out.println(nom);
                }                   
                %>" readonly="readonly">
                               <div class="row">
                                    <div class="col-xs-5 text-center">
                                        <p>PRODUCTO</p>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="col-xs-2 col-md-3">
                                            <p>PRECIO</p>
                                        </div>
                                        <div class="col-xs-4 col-md-3">
                                            <p>CANTIDAD</p>
                                        </div>
                                        <div class="col-xs-4 text-center col-md-4">
                                            <p>IMPORTE</p>
                                        </div>
                                        <div class="col-xs-2 col-md-2">                                        
                                        </div>
                                    </div>                                    
                                </div>
                                <hr>
                                
                               <%
            double total=0;
            double totaleshs=0;
            int npedid=0;
            ArrayList<DetallePedido> lista=(ArrayList<DetallePedido>)session.getAttribute("carrito");
            if(request.getParameter("sape")!=null){
            totaleshs=Double.parseDouble(request.getParameter("totaleshs"));
            npedid=Integer.parseInt(request.getParameter("npedid"));
            }
            if(lista!=null){
            for(DetallePedido d: lista){
            %>  
                                
            <div class="row" style="padding-bottom: 3px;">
                                    <div class="col-xs-2">
                                        <img class="img-responsive" src="img/<%=d.getProducto().getImagen()%>" style="border: 1px solid black;border-radius: 10px;" width="80" height="80">
                                    </div>
                                    <div class="col-xs-3">
                                        <h4 class="product-name"><strong><%=d.getProducto().getNombre()%></strong></h4>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="col-xs-2 text-center col-md-3">
                                            <input type="text" class="form-control input-sm" value="<%=d.getProducto().getPrecio()%>">
                                        </div>
                                        <div class="col-xs-4 text-center col-md-3">
                                            <%if(String.format("%.0f",d.getCantidad()).equals("1")){%>
                                            <h6 class="canti"><button class="colosin" type="button" style="background: #0ad0ff;" disabled="disabled">-</button><input type="text" class="canti2" readonly="" id="cantes" value="<%=String.format("%.0f",d.getCantidad())%>"><a href="ServletCantidad?accioncanti=modificanti&mens=agregale&txtCodigo=<%=d.getCodigoProducto()%>&txtCantidad=<%=String.format("%.0f",d.getCantidad())%>"><button class="colosin" type="button">+</button></a></h6>
                                        <%}else{%>
                                        <h6 class="canti"><a href="ServletCantidad?accioncanti=modificanti&mens=quitale&txtCodigo=<%=d.getCodigoProducto()%>&txtCantidad=<%=String.format("%.0f",d.getCantidad())%>"><button class="colosin" type="button">-</button></a><input type="text" class="canti2" readonly="" id="cantes" value="<%=String.format("%.0f",d.getCantidad())%>"><a href="ServletCantidad?accioncanti=modificanti&mens=agregale&txtCodigo=<%=d.getCodigoProducto()%>&txtCantidad=<%=String.format("%.0f",d.getCantidad())%>"><button class="colosin" type="button">+</button></a></h6>
                                        <%}%>
                                        </div>  
                                        <div class="col-xs-4 text-center col-md-4">
                                            <h6><%=String.format("%.2f",(d.getProducto().getPrecio()*d.getCantidad()))%></h6>
                                        </div>                                       
                                        <div class="col-xs-2 col-md-2 text-center">
                                            <button type="button" class="btn btn-link btn-xs">
                                                <a class="flaticon-garbage" href="ServletControlador?accion=AnadirCarrito&id=<%=d.getProducto().getCodigoProducto()%>"></a>
                                            </button>
                                        </div>
                                    </div>
                                </div>   
              <%
                total=total+((d.getProducto().getPrecio()*d.getCantidad()));
            }
            }
            %>
                            </div>
                            <div class="panel-footer">
                                <div class="row text-center">
                                    <div class="col-xs-9">
                                        <h4 class="text-right">Total <strong><%=String.format("%.2f",total)%></strong></h4>
                                    </div>
                                    <div class="col-xs-3">
                                          <input type="submit" value="Registrar Pedido" name="btnVenta" id="submit" class="btn btn-success btn-block">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <input type="hidden" name="total" value="<%=total%>">
           </form>
                            	<aside id="modal" class="modal">
	  <div class="content-modal">
	  	<header>
       <a class="close-modal"><img src="imagenes/cerrar.png" alt="" title="Cerrar"></a>
	  </header>
              <article>
                         <div class="datagrid padd">
                             <h1 align="center" class="npedid">N° de Pedido - <%=npedid%></h1>
     <h3 align="center">Total a Pagar :<%=totaleshs%></h3>
     <p class="negrilla">Por favor si realizara la compra del pedido solicitado anote o tome una captura a su número de pedido para terminar la operación.</p>
         
              <form action="https://www.paypal.com/cgi-bin/webscr" target="_blank" method="post">

<input type="hidden" name="cmd" value="_ext-enter" />
<input type="hidden" name="redirect_cmd" value="_xclick" />
<input type="hidden" name="business" value="reyesrojas251999@gmail.com" />
<input type="hidden" name="item_name" value="Ropa Escolar" />
<input type="hidden" name="quantity" value="1" />
<input type="hidden" name="amount" value="<%=totaleshs/3.34%>" />
<input type="hidden" name="currency_code" value="USD" />
<input type="hidden" name="return" value="http://localhost:8084/CarritoJSP/index.jsp" />
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest" />
<input type="image" id="vuela" src="http://www.paypal.com/es_XC/i/btn/x-click-but01.gif" border="0" name="submit" alt="Pagar para completar la compra." />

                    </form>   
       </div>
              </article>
	  </div>  
	</aside>
        </main>
<script>
    $(".close-modal").click(function(){
    $("aside").hide();
  });
   $(".vuela").click(function(){
    $("aside").hide();
  });
    <%if(totaleshs!=0){%>
        $("aside").show();
    <%}else{%>$("aside").hide();<%}%>
     <%if(lista==null || lista.isEmpty()){%>
         $("#submit").css({'color':'white','background':'red'});
$("#submit").attr('disabled', 'disabled');
     <%}else{%>
     <%}%>
  if("agre"==="<%=(String)request.getAttribute("mensaje")%>"){
alertify.success("Producto Añadido a Carrito");
    }
  if("eli"==="<%=(String)request.getAttribute("mensaje")%>"){
alertify.success("Producto Eliminado de Carrito");
    }
  if("vacio"==="<%=(String)request.getAttribute("mensaje")%>"){
alertify.success("Carrito Vacio");
    }
</script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/code.js"></script>
    </body>
</html>
