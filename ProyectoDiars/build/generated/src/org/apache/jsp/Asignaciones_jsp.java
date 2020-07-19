package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.*;
import java.util.ArrayList;

public final class Asignaciones_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String usu="";
    String nom="";
    HttpSession sesionOK=request.getSession();
    if(sesionOK.getAttribute("perfil")!=null){
    nom=(String)sesionOK.getAttribute("nom");
    }
    else{
    
      out.write("\n");
      out.write("      ");
      if (true) {
        _jspx_page_context.forward("Login.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("msg", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Tiene que loguearse", request.getCharacterEncoding()));
        return;
      }
      out.write("    \n");
      out.write("    \n");
      out.write("    ");

    }
Docentesh d=new Docentesh();
AsignaxDocen as=new AsignaxDocen();
     
      if(request.getParameter("idn")!=null){
      d=DocentesDB.ConDocen(Integer.parseInt(request.getParameter("idn")));
      }
    if(request.getParameter("ids")!=null){
      as=AsignacionesDB.conAsignadito(Integer.parseInt(request.getParameter("ids")));
    }
    
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1\">\n");
      out.write("        <title>Asignaciones |I.E.P ALMA MATER</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estiloshs.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/flaticon.css\">  \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estilosasignacioness.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            /*mensaje 1*/\n");
      out.write("      .inival{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:267px; \n");
      out.write("      }    \n");
      out.write("      .alertain{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:267px; \n");
      out.write("      }\n");
      out.write("       .alertainme{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:267px; \n");
      out.write("      }\n");
      out.write("       .alertafin{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:267px; \n");
      out.write("      }  \n");
      out.write("      .alertafinish{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:302px;\n");
      out.write("       left:20%;\n");
      out.write("      }  \n");
      out.write("       .alertainter{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:269px;\n");
      out.write("       left:27.5%;\n");
      out.write("      }  \n");
      out.write("      /*mensaje2*/\n");
      out.write("            .inival2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:449px;\n");
      out.write("      }    \n");
      out.write("      .alertain2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:449px;\n");
      out.write("      }\n");
      out.write("       .alertainme2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:449px;\n");
      out.write("      }\n");
      out.write("       .alertafin2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:540px;\n");
      out.write("      }  \n");
      out.write("             .alertafin3{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("      top:452px;\n");
      out.write("      }  \n");
      out.write("      .alertafinextra{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:452px;\n");
      out.write("      }  \n");
      out.write("      .alertafinish2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:575px;\n");
      out.write("       left:20%;\n");
      out.write("      }  \n");
      out.write("       .alertainter2{\n");
      out.write("       color:white;\n");
      out.write("       background:red;\n");
      out.write("       text-align:center;\n");
      out.write("       font-weight:bold;\n");
      out.write("       font-size:12px;\n");
      out.write("       line-height:20px;\n");
      out.write("       border-radius:9px;\n");
      out.write("       position:absolute;\n");
      out.write("       width:200px;\n");
      out.write("       top:542px;\n");
      out.write("       left:27.5%;\n");
      out.write("      }  \n");
      out.write("      /*-------------*/\n");
      out.write("  @media (min-width: 993px){\n");
      out.write("  nav .container .navbar-right{\n");
      out.write("      background: rgba(0,0,0,.2);\n");
      out.write("      position: absolute;\n");
      out.write("      right: 15px;\n");
      out.write("      \n");
      out.write("  }\n");
      out.write("  }\n");
      out.write("        @media (max-width: 992px) {\n");
      out.write("  .navbar-header {\n");
      out.write("      float: none;\n");
      out.write("  }\n");
      out.write("  .navbar-left,.navbar-right {\n");
      out.write("      float: none !important;\n");
      out.write("  }\n");
      out.write("  .navbar-right {\n");
      out.write("      margin-bottom: 5px;\n");
      out.write("      background: rgba(0,0,0,.2);\n");
      out.write("  }\n");
      out.write("  .navbar-toggle {\n");
      out.write("      display: block;\n");
      out.write("  }\n");
      out.write("  .navbar-collapse {\n");
      out.write("      border-top: 1px solid transparent;\n");
      out.write("      box-shadow: inset 0 1px 0 rgba(255,255,255,0.1);\n");
      out.write("  }\n");
      out.write("  .navbar-fixed-top {\n");
      out.write("      top: 0;\n");
      out.write("      border-width: 0 0 1px;\n");
      out.write("  }\n");
      out.write("  .navbar-collapse.collapse {\n");
      out.write("      display: none!important;\n");
      out.write("  }\n");
      out.write("  .navbar-nav {\n");
      out.write("      float: none!important;\n");
      out.write("      margin-top: 7.5px;\n");
      out.write("  }\n");
      out.write("  .navbar-nav>li {\n");
      out.write("      float: none;\n");
      out.write("  }\n");
      out.write("  .navbar-nav>li>a {\n");
      out.write("      padding-top: 10px;\n");
      out.write("      padding-bottom: 10px;\n");
      out.write("  }\n");
      out.write("  .collapse.in{\n");
      out.write("      display:block !important;\n");
      out.write("  }\n");
      out.write("  nav .container{\n");
      out.write("      width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("#IdDocente{\n");
      out.write("    background: yellowgreen;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                 <main>\n");
      out.write("                   <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("                     <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header navbar-togleable-lg\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">I.E.P ALMA MATER</a>\n");
      out.write("    </div>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"index.jsp\">Catálogo</a></li>\n");
      out.write("         ");

                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Alumno")){
                
      out.write("\n");
      out.write("        <li><a href=\"RegistrarVenta.jsp\">Registrar Pedido</a></li>\n");
      out.write("        ");

                }
         
      out.write("        \n");
      out.write("         ");

                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Docente")){
                
      out.write("\n");
      out.write("                <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Registros<b class=\"caret\"></b></a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"RegistrarVenta.jsp\">Registrar Pedido</a></li>\n");
      out.write("                <li><a href=\"ServletControlador?accion=asitendoce&id=");
      out.print((String)sesionOK.getAttribute("codiAd"));
      out.write("\">Registrar Asistencia</a></li>\n");
      out.write("                <li><a href=\"ServletControlador?accion=muestranotasig\">Registrar Notas</a></li>\n");
      out.write("                </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href=\"ServletControlador?accion=muestraasistencia&id=");
      out.print((String)sesionOK.getAttribute("codiAd"));
      out.write("\">Consultar Asistencias</a></li>\n");
      out.write("\n");
      out.write("                \n");
      out.write("                ");

                }
                
      out.write("          \n");
      out.write("                ");

                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Administrador")){
                
      out.write("\n");
      out.write("                <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Registros<b class=\"caret\"></b></a>\n");
      out.write("                 <ul class=\"dropdown-menu\">\n");
      out.write("                 <li><a href=\"ServletControlador?accion=mostrarfichas\">Registrar Ficha</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=muestrapagos\">Registrar Pago</a></li>\n");
      out.write("                 </ul>\n");
      out.write("                 </li>\n");
      out.write("                 <li><a href=\"RegistrarVenta.jsp\">Registrar Pedido</a></li>\n");
      out.write("                 <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Consultas<b class=\"caret\"></b></a>\n");
      out.write("                 <ul class=\"dropdown-menu\">\n");
      out.write("                 <li><a href=\"ServletControlador?accion=MostrarVentas\">Consultar Pedidos</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=MostrarSolicitudes\">Consultar Solicitud</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=MostrarCitas\">Consultar Cita</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=MostrarAdmisiones\">Consultar Admisiones</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=consultapagos\">Consultar Pagos</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=MostrarReclamo\">Consultar Reclamo</a></li>\n");
      out.write("                 </ul>\n");
      out.write("                 </li>\n");
      out.write("                 <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Mantenimientos<b class=\"caret\"></b></a>\n");
      out.write("                 <ul class=\"dropdown-menu\">\n");
      out.write("                 <li><a href=\"RegistrarProducto.jsp\">Mantener Producto</a></li>\n");
      out.write("                 <li><a href=\"MantenimientoUsuario.jsp\">Mantener Usuarios</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=mostrarAsigna\">Mantener Asignaciones Docentes</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=muestranivsa\">Mantener Asignaciones Alumnos</a></li>\n");
      out.write("                 <li><a href=\"MantenimientoDocente.jsp\">Mantener Docente</a></li>\n");
      out.write("                 </ul>\n");
      out.write("                 </li>\n");
      out.write("                ");

                }
                
      out.write("   \n");
      out.write("                 ");
if(sesionOK.getAttribute("perfil")!=null)
                {
                
      out.write("\n");
      out.write("                  <li><a href=\"ServletLogueo?accion=cerrar\">Cerrar Sesion</a></li>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("      </ul>      \n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                      ");

                if(sesionOK.getAttribute("perfil")!=null)
                {
                
      out.write("\n");
      out.write("                <li><a href=\"#\" style=\"font-size: 16px;margin-left:6px;margin-right: 6px;padding: 9px;\">Hola<br>");
      out.print(nom);
      out.write("</a></li>\n");
      out.write("                ");

                }
                
      out.write("  \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("      <form name=\"addForm\" action=\"ServletControlador\" method=\"post\" id=\"formulario\">\n");
      out.write("                \n");
      out.write("\t\t<section class=\"content-form\">\n");
      out.write("\t\t<h1 class=\"formulario__titulo\">Asignaciones - Docentes</h1>\n");
      out.write("\n");
      out.write("\t<div class=\"form-group width-12\">\n");
      out.write("\t\t<div class=\"width-9\">\n");
      out.write("\t\t<a href=\"ServletControlador?accion=MostrarDocentes&mes=asigna\"><img src=\"imagenes/buscar.png\" title=\"Buscar\"></a>\n");
      out.write("\t\t</div>  \n");
      out.write("\t</div>\n");
      out.write("                <h3 class=\"sub-form\">Datos del Docente<div id=\"alerta\" class=\"inival\"></div></h3>\n");
      out.write("\t<div class=\"form-group width-12\">\n");
      out.write("        <div class=\"width-8\">\n");
      out.write("        <input type=\"text\" placeholder=\"Id\" class=\"formulario__input\" name=\"Id\" id=\"IdDocente\" value=\"");
if(request.getParameter("idn")!=null){out.print(d.getCodocen());}if(request.getParameter("ids")!=null){out.print(as.getCodoce());}
      out.write("\" readonly=\"\">\n");
      out.write("\t</div>  \n");
      out.write("\t<div class=\"width-8\">\n");
      out.write("        <input type=\"text\" placeholder=\"Nombre\" class=\"formulario__input\" value=\"");
if(request.getParameter("idn")!=null){out.print(d.getNomdocen());}if(request.getParameter("ids")!=null){out.print(as.getNomdocen());}
      out.write("\" readonly=\"\">\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"width-8\">\n");
      out.write("        <input type=\"text\" placeholder=\"Apellido Paterno\" class=\"formulario__input\" value=\"");
if(request.getParameter("idn")!=null){out.print(d.getApepatdocen());}if(request.getParameter("ids")!=null){out.print(as.getApepatdocen());}
      out.write("\" readonly=\"\">\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"width-8\">\n");
      out.write("        <input type=\"text\" placeholder=\"Apellido Materno\" class=\"formulario__input\" value=\"");
if(request.getParameter("idn")!=null){out.print(d.getApematdocen());}if(request.getParameter("ids")!=null){out.print(as.getApematdocen());}
      out.write("\" readonly=\"\">\n");
      out.write("\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("<h3 class=\"sub-form\">Asignacion Cursos<div id=\"alerta1\" class=\"inival2\"></div></h3>\n");
      out.write("<table class=\"tablilla\">\n");
      out.write("<tr>\n");
      out.write("<th>Nivel</th>\n");
      out.write("<th>Grado</th>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("<select name=\"cbNivel\" id=\"cbNivel\" class=\"presioname\">\n");
      out.write("    <option value=\"Ninguno\" class=\"ocultame\"></option>\n");
      out.write("  ");

                ArrayList<Nivel> lista=(ArrayList<Nivel>)request.getAttribute("lista");
                for(Nivel n: lista){
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(n.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodniv()==n.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(n.getDescnivel());
      out.write("</option>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("<td><select name=\"cbGrado\" id=\"cbGrado\" class=\"presioname\">\n");
      out.write("        <option value=\"Ninguno\" class=\"ocultame\"></option>\n");
      out.write("  ");

                ArrayList<Grado> lista2=(ArrayList<Grado>)request.getAttribute("lista2");
                for(Grado g: lista2){
                if(request.getParameter("ids")!=null){
                if(as.getCodgra()==5 || as.getCodgra()==6 ||as.getCodgra()==7 ||as.getCodgra()==8 ||as.getCodgra()==9 ||as.getCodgra()==10){
                if(g.getDescgrado().substring(3,8).equals("Grado")){
      out.write("             \n");
      out.write("                <option value=\"");
      out.print(g.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(g.getDescgrado());
      out.write("</option>\n");
      out.write("                ");
}}else{if(g.getDescgrado().substring(0,7).equals("Inicial")){
      out.write("\n");
      out.write("                <option value=\"");
      out.print(g.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(g.getDescgrado());
      out.write("</option>\n");
      out.write("                ");
}}}else{
      out.write("\n");
      out.write("                <option value=\"");
      out.print(g.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(g.getDescgrado());
      out.write("</option>\n");
      out.write("                ");
}}
      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<th>Materia</th>\n");
      out.write("<th>Seccion</th>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("        \n");
      out.write("<select name=\"cbMateria\" id=\"cbMateria\" class=\"presioname\">\n");
      out.write("                <option value=\"Ninguno\" class=\"ocultame\"></option>\n");
      out.write(" ");

                ArrayList<Materia> lista6=(ArrayList<Materia>)request.getAttribute("lista6");
                for(Materia m: lista6){
                if(request.getParameter("ids")!=null){
                if(as.getCodniv()==1){
                if(m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Comunicacion") || m.getDescmateria().equals("Matematica") || m.getDescmateria().equals("Psicomotriz") || m.getDescmateria().equals("C.Fonologica") || m.getDescmateria().equals("Formacion G.")){
      out.write("\n");
      out.write("                <option value=\"");
      out.print(m.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(m.getDescmateria());
      out.write("</option>\n");
      out.write("                ");
}}else{if(m.getDescmateria().equals("Aritmetica") || m.getDescmateria().equals("Algebra") || m.getDescmateria().equals("Geometría") || m.getDescmateria().equals("Razonamiento Matemático") || m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Lenguaje") || m.getDescmateria().equals("Ort. Y Calig.") || m.getDescmateria().equals("Tutoria") || m.getDescmateria().equals("Razonamiento Verbal")){
      out.write("\n");
      out.write("                <option value=\"");
      out.print(m.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(m.getDescmateria());
      out.write("</option>\n");
      out.write("                ");
}}}else{
      out.write("\n");
      out.write("                <option value=\"");
      out.print(m.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodmate()==m.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(m.getDescmateria());
      out.write("</option>\n");
      out.write("                ");
}}
      out.write("\n");
      out.write("</select>\n");
      out.write("</td>  \n");
      out.write(" <td><select name=\"cbSeccion\" id=\"cbSeccion\" class=\"presioname\">\n");
      out.write("        <option value=\"Ninguno\" class=\"ocultame\"></option>        \n");
      out.write("  ");

                ArrayList<Seccion> lista3=(ArrayList<Seccion>)request.getAttribute("lista3");
                for(Seccion s: lista3){
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(s.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodsec()==s.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(s.getDescseccion());
      out.write("</option>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("</select>\n");
      out.write("</td>   \n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<th>Dia</th>\n");
      out.write("<th>Turno</th>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><select name=\"cbDia\" id=\"cbDia\" class=\"presioname\">\n");
      out.write("                <option value=\"Ninguno\" class=\"ocultame\"></option>\n");
      out.write(" ");

                ArrayList<Dias> lista5=(ArrayList<Dias>)request.getAttribute("lista5");
                for(Dias di: lista5){
      out.write("\n");
      out.write("                <option value=\"");
      out.print(di.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCoddia()==di.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(di.getDescdias());
      out.write("</option>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("\t<td><select name=\"cbTurno\" id=\"cbTurno\" class=\"presioname\">\n");
      out.write("                <option value=\"Ninguno\" class=\"ocultame\"></option>\n");
      out.write("  ");

                ArrayList<Turno> lista4=(ArrayList<Turno>)request.getAttribute("lista4");
                for(Turno t: lista4){
                if(request.getParameter("ids")!=null){
                if(as.getCodniv()==1){
                if(t.getDescturno().equals("Mañana")){
      out.write("\n");
      out.write("                <option value=\"");
      out.print(t.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(t.getDescturno());
      out.write("</option>\n");
      out.write("                ");
}}else{
      out.write("\n");
      out.write("                <option value=\"");
      out.print(t.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(t.getDescturno());
      out.write("</option>\n");
      out.write("                ");
}}else{
      out.write("\n");
      out.write("                <option value=\"");
      out.print(t.getCodigo());
      out.write('"');
      out.write(' ');
if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}
      out.write(" style=\"font-size: 14px;\">");
      out.print(t.getDescturno());
      out.write("</option>\n");
      out.write("                ");
}}
      out.write("\n");
      out.write("                \n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("<h3 class=\"sub-form\">Horario de Asignacion<div id=\"alerta2\" class=\"inival3\"></div></h3>\n");
      out.write("<div class=\"form-group width-12\">\n");
      out.write("    <div class=\"width-8\">\n");
      out.write("<label for=\"\">Hora de Inicio</label>\n");
      out.write("<input type=\"time\" name=\"HoraIn\" id=\"HoraIn\" value=\"");
if(request.getParameter("ids")!=null){out.print(as.getHorain());}else{out.print("");}
      out.write("\" class=\"formulariodeco\">\n");
      out.write("</div>\n");
      out.write("<div class=\"width-8\">\n");
      out.write("<label for=\"\">Hora Fin</label>\n");
      out.write("<input type=\"time\" name=\"HoraFin\" id=\"HoraFin\" value=\"");
if(request.getParameter("ids")!=null){out.print(as.getHorafin());}else{out.print("");}
      out.write("\" class=\"formulariodeco\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"datagrid\">\n");
      out.write("<table class=\"tablilla2\" border=1 cellspacing=0 cellpadding=2 bordercolor=\"#0000ff\">\n");
      out.write("    <tr>\n");
      out.write("<th>C.Asigna</th>\n");
      out.write("<th>N.Docent</th>\n");
      out.write("<th>Nivel</th>\n");
      out.write("<th>Grado</th>\n");
      out.write("<th>Seccion</th>\n");
      out.write("<th>Dia</th>\n");
      out.write("<th>Materia</th>\n");
      out.write("<th>Turno</th>\n");
      out.write("<th>H.Inicio</th>\n");
      out.write("<th>H.Fin</th>\n");
      out.write("\t</tr>\n");
      out.write(" ");

     ArrayList<Asignacion> listar7 = (ArrayList<Asignacion>)request.getAttribute("lista7");
      ArrayList<Docentesh> lista8=(ArrayList<Docentesh>)request.getAttribute("lista8");
     if(request.getParameter("idn")!=null){
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
    if(Integer.parseInt(request.getParameter("idn"))==asi.getCodoce()){

      out.write("\n");
      out.write("<tr id=\"seleccionalist\">\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getCodasi());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorain());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorafin());
      out.write("</a></td>\n");
      out.write("</tr>\n");
}
 }
}
}
else{
if(request.getParameter("codt")!=null){
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {
if(Integer.parseInt(request.getParameter("codt"))==asi.getCodoce()){

      out.write("\n");
      out.write("<tr id=\"seleccionalist\">\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getCodasi());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorain());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&codt=");
      out.print(asi.getCodoce());
      out.write("&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorafin());
      out.write("</a></td>\n");
      out.write("</tr>\n");

 }
}
}
}else{
if (listar7.size() > 0) {
for (Asignacion asi : listar7) {

      out.write("\n");
      out.write("<tr id=\"seleccionalist\">\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getCodasi());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Docentesh se: lista8){if(se.getCodocen()==asi.getCodoce()){out.print(se.getNomdocen());out.print(" ");out.print(se.getApepatdocen());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Nivel n: lista){if(n.getCodigo()==asi.getCodniv()){out.print(n.getDescnivel());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Grado g: lista2){if(g.getCodigo()==asi.getCodgra()){out.print(g.getDescgrado());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Seccion s: lista3){if(s.getCodigo()==asi.getCodsec()){out.print(s.getDescseccion());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Dias di: lista5){if(di.getCodigo()==asi.getCoddia()){out.print(di.getDescdias());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Materia m: lista6){if(m.getCodigo()==asi.getCodmate()){out.print(m.getDescmateria());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
for(Turno t: lista4){if(t.getCodigo()==asi.getCodtur()){out.print(t.getDescturno());}}
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorain());
      out.write("</a></td>\n");
      out.write("    <td><a href=\"ServletControlador?accion=mostrarAsigna&ids=");
      out.print(asi.getCodasi());
      out.write('"');
      out.write('>');
      out.print(asi.getHorafin());
      out.write("</a></td>\n");
      out.write("</tr>\n");

}}}}

      out.write("\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write(" <div id=\"aparicion\"></div>\n");
      out.write(" <div id=\"alertanew\"></div>\n");
      out.write("<div class=\"form-group width-13\">\n");
      out.write("                <button type=\"submit\" id=\"submit\" class=\"form-control btn\">Guardar</button>\n");
      out.write("                <!--Para funcion eliminaro modificar-->\n");
      out.write("                ");
if(request.getParameter("ids")!=null){
      out.write("\n");
      out.write("                <button type=\"submit\" id=\"submit2\" class=\"form-control btn\">Modificar</button>\n");
      out.write("                <a href=\"ServletPostulante?accion=eliminasigna&id=");
if(request.getParameter("ids")!=null){out.print(as.getCodasi());}
      out.write("\" id=\"Eliminar2\"><input type=\"button\" value=\"Eliminar\" class=\"form-control btn\"></a>\n");
      out.write("\t\t");
}else{
      out.write("\n");
      out.write("                   <!--Para el aviso eliminar o modificar-->\n");
      out.write("                <button type=\"button\" id=\"Modificar1\" class=\"form-control btn\">Modificar</button>\n");
      out.write("                <input type=\"button\" value=\"Eliminar\" id=\"Eliminar1\" class=\"form-control btn\">\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                \n");
      out.write("                <button type=\"button\" id=\"limpiar\" class=\"form-control btn\">Limpiar</button>\n");
      out.write("                <input type=\"hidden\" name=\"accion\" value=\"insertoasignacion\">\n");
      out.write("                <input type=\"hidden\" name=\"IdAsignacion\" value=\"");
if(request.getParameter("ids")!=null){out.print(as.getCodasi());}
      out.write("\">\n");
      out.write("\t</div>\n");
      out.write("\t</section>\n");
      out.write("\t</form>\n");
      out.write("         </main>\n");
      out.write("          <script>\n");
      out.write("              $(window).resize(function () {\n");
      out.write("               if($(window).width()>1340){\n");
      out.write("                  $(\"#alerta\").addClass(\"inival\");$(\"#alerta\").removeClass(\"alertafin\");$(\"#alerta\").removeClass(\"alertafinish\");$(\"#alerta\").removeClass(\"alertainter\");$(\"#alerta\").removeClass(\"alertainme\");$(\"#alerta\").removeClass(\"alertain\");\n");
      out.write("                  $(\"#alerta1\").addClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertafin2\");$(\"#alerta1\").removeClass(\"alertafinish2\");$(\"#alerta1\").removeClass(\"alertainter2\");$(\"#alerta1\").removeClass(\"alertainme2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").removeClass(\"alertain2\");\n");
      out.write("              }\n");
      out.write("              else if($(window).width()>1000 && $(window).width()<=1340){\n");
      out.write("                  $(\"#alerta\").removeClass(\"inival\");$(\"#alerta\").removeClass(\"alertafin\");$(\"#alerta\").removeClass(\"alertafinish\");$(\"#alerta\").removeClass(\"alertainter\");$(\"#alerta\").removeClass(\"alertainme\");$(\"#alerta\").addClass(\"alertain\");\n");
      out.write("                  $(\"#alerta1\").removeClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertafin2\");$(\"#alerta1\").removeClass(\"alertafinish2\");$(\"#alerta1\").removeClass(\"alertainter2\");$(\"#alerta1\").removeClass(\"alertainme2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").addClass(\"alertain2\");\n");
      out.write("              }\n");
      out.write("              else if($(window).width()>600 && $(window).width()<=1000){\n");
      out.write("                  $(\"#alerta\").removeClass(\"inival\");$(\"#alerta\").removeClass(\"alertafin\");$(\"#alerta\").removeClass(\"alertafinish\");$(\"#alerta\").removeClass(\"alertainter\");$(\"#alerta\").removeClass(\"alertain\");$(\"#alerta\").addClass(\"alertainme\");\n");
      out.write("                  $(\"#alerta1\").removeClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertafin2\");$(\"#alerta1\").removeClass(\"alertafinish2\");$(\"#alerta1\").removeClass(\"alertainter2\");$(\"#alerta1\").removeClass(\"alertain2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").addClass(\"alertainme2\");\n");
      out.write("              }\n");
      out.write("              else if($(window).width()>487 && $(window).width()<=600){\n");
      out.write("                  $(\"#alerta\").removeClass(\"inival\");$(\"#alerta\").removeClass(\"alertain\");$(\"#alerta\").removeClass(\"alertafinish\");$(\"#alerta\").removeClass(\"alertainter\");$(\"#alerta\").removeClass(\"alertainme\");$(\"#alerta\").addClass(\"alertafin\");\n");
      out.write("                   $(\"#alerta1\").removeClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertain2\");$(\"#alerta1\").removeClass(\"alertafinish2\");$(\"#alerta1\").removeClass(\"alertainter2\");$(\"#alerta1\").removeClass(\"alertainme2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").addClass(\"alertafin2\");\n");
      out.write("              }\n");
      out.write("              else if($(window).width()>353 &$(window).width()<=487){\n");
      out.write("                  $(\"#alerta\").removeClass(\"inival\");$(\"#alerta\").removeClass(\"alertain\");$(\"#alerta\").removeClass(\"alertafin\");$(\"#alerta\").removeClass(\"alertafinish\");$(\"#alerta\").removeClass(\"alertainme\");$(\"#alerta\").addClass(\"alertainter\");\n");
      out.write("                  $(\"#alerta1\").removeClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertain2\");$(\"#alerta1\").removeClass(\"alertafin2\");$(\"#alerta1\").removeClass(\"alertafinish2\");$(\"#alerta1\").removeClass(\"alertainme2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").addClass(\"alertainter2\");\n");
      out.write("              }\n");
      out.write("              else if($(window).width()<=353){\n");
      out.write("                  $(\"#alerta\").removeClass(\"inival\");$(\"#alerta\").removeClass(\"alertain\");$(\"#alerta\").removeClass(\"alertafin\");$(\"#alerta\").removeClass(\"alertainter\");$(\"#alerta\").removeClass(\"alertainme\");$(\"#alerta\").addClass(\"alertafinish\");\n");
      out.write("                  $(\"#alerta1\").removeClass(\"inival2\");$(\"#alerta1\").removeClass(\"alertain2\");$(\"#alerta1\").removeClass(\"alertafin2\");$(\"#alerta1\").removeClass(\"alertainter2\");$(\"#alerta1\").removeClass(\"alertainme2\");$(\"#alerta1\").removeClass(\"alertafinextra\");$(\"#alerta1\").removeClass(\"alertafin3\");$(\"#alerta1\").addClass(\"alertafinish2\");\n");
      out.write("              }else{\n");
      out.write("                  \n");
      out.write("              }\n");
      out.write("               });\n");
      out.write("              $('#formulario').click(function(){\n");
      out.write("    document.getElementById(\"alerta\").innerHTML=\"\";\n");
      out.write("              });\n");
      out.write("              $('#formulario').click(function(){\n");
      out.write("    document.getElementById(\"alerta1\").innerHTML=\"\";\n");
      out.write("              });\n");
      out.write("            ");
if(request.getParameter("ids")==null){
      out.write("\n");
      out.write("$(\"#cbGrado\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbTurno\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbMateria\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbDia\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbSeccion\").attr('disabled', 'disabled');\n");
}
      out.write("\n");
      out.write("  $('#submit').click(function(){\n");
      out.write("  var v1=$('#IdDocente').val();\n");
      out.write("  var v2=$('#cbNivel').val();\n");
      out.write("  var v3=$('#cbGrado').val();\n");
      out.write("  var v4=$('#cbSeccion').val();\n");
      out.write("  var v5=$('#cbTurno').val();\n");
      out.write("  var v6=$('#cbMateria').val();\n");
      out.write("  var v7=$('#cbDia').val();\n");
      out.write("  var v8=$('#HoraIn').val();\n");
      out.write("  var v9=$('#HoraFin').val();\n");
      out.write("  if(v1===\"");
      out.print(as.getCodoce());
      out.write("\" &&\n");
      out.write("  v2===\"");
      out.print(as.getCodniv());
      out.write("\" && \n");
      out.write("  v3===\"");
      out.print(as.getCodgra());
      out.write("\" && \n");
      out.write("  v4===\"");
      out.print(as.getCodsec());
      out.write("\" && \n");
      out.write("  v5===\"");
      out.print(as.getCodtur());
      out.write("\" && \n");
      out.write("  v6===\"");
      out.print(as.getCodmate());
      out.write("\" && \n");
      out.write("  v7===\"");
      out.print(as.getCoddia());
      out.write("\" && \n");
      out.write("  v8===\"");
      out.print(as.getHorain());
      out.write("\" && \n");
      out.write("  v9===\"");
      out.print(as.getHorafin());
      out.write("\"){  \n");
      out.write("  document.getElementById(\"alertanew\").innerHTML='<input type=\"hidden\" id=\"mensi\" name=\"mensi\" value=\"repetido\">';\n");
      out.write("    \n");
      out.write("    }else{\n");
      out.write("  document.getElementById(\"alertanew\").innerHTML='<input type=\"hidden\" id=\"mensi\" name=\"mensi\" value=\"satisfactorio\">';\n");
      out.write("    }\n");
      out.write("        });    \n");
      out.write("        \n");
      out.write("            if(\"satisfactorio\"===\"");
      out.print((String)request.getAttribute("mensi"));
      out.write("\"){\n");
      out.write("alertify.success(\"Asignacion Registrada\");\n");
      out.write("    }\n");
      out.write("                if(\"modificar\"===\"");
      out.print((String)request.getAttribute("mensi"));
      out.write("\"){\n");
      out.write("alertify.success(\"Asignacion Modificada\");\n");
      out.write("    }\n");
      out.write("                    if(\"eliminado\"===\"");
      out.print((String)request.getAttribute("mensi"));
      out.write("\"){\n");
      out.write("alertify.success(\"Asignacion Eliminada\");\n");
      out.write("    }\n");
      out.write("    if(\"repetido\"===\"");
      out.print((String)request.getAttribute("mensi"));
      out.write("\"){\n");
      out.write("alertify.error(\"Asignacion Repetida\");  \n");
      out.write("    }\n");
      out.write("$('#limpiar').click(function() {\n");
      out.write("     document.getElementById(\"alerta\").innerHTML=\"\";\n");
      out.write("     document.getElementById(\"alerta1\").innerHTML=\"\";\n");
      out.write("     document.getElementById(\"alerta2\").innerHTML=\"\";\n");
      out.write("  var v2=$('#cbNivel').val();\n");
      out.write("  var v3=$('#cbGrado').val();\n");
      out.write("  var v4=$('#cbSeccion').val();\n");
      out.write("  var v5=$('#cbTurno').val();\n");
      out.write("  var v6=$('#cbMateria').val();\n");
      out.write("  var v7=$('#cbDia').val();\n");
      out.write("  var v8=$('#HoraIn').val();\n");
      out.write("  var v9=$('#HoraFin').val();\n");
      out.write("   if((v2===\"Ninguno\" || v2===null)&& \n");
      out.write("  (v3===\"Ninguno\" || v3===null ) && \n");
      out.write("  (v4===\"Ninguno\" || v4===null ) && \n");
      out.write("  (v5===\"Ninguno\" || v5===null ) && \n");
      out.write("  (v6===\"Ninguno\" || v6===null ) && \n");
      out.write("  (v7===\"Ninguno\" || v7===null ) && \n");
      out.write("  (v8===\"\" || v8===null ) && \n");
      out.write("  (v9===\"\" || v9===null )){  \n");
      out.write("    }else{\n");
      out.write("        alertify.success(\"Campos Limpiados\");\n");
      out.write("    }\n");
      out.write("        $('#cbGrado').val('');\n");
      out.write("        $('#cbTurno').val('');\n");
      out.write("        $('#cbMateria').val('');\n");
      out.write("        $('#cbDia').val('');\n");
      out.write("        $('#cbSeccion').val('');\n");
      out.write("        $('#cbNivel').val('');\n");
      out.write("        $('#HoraIn').val('');\n");
      out.write("        $('#HoraFin').val('');\n");
      out.write("       \n");
      out.write("         ");
if(request.getParameter("ids")==null){
         
      out.write("\n");
      out.write("$(\"#cbGrado\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbTurno\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbMateria\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbDia\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbSeccion\").attr('disabled', 'disabled');\n");
}else{as.setCodgra(0);
         as.setCodtur(0);
         as.setCodmate(0);
      out.write("\n");
      out.write("    $(\"#cbGrado\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbTurno\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbMateria\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbDia\").attr('disabled', 'disabled');\n");
      out.write("$(\"#cbSeccion\").attr('disabled', 'disabled');\n");
      out.write("    \n");
      out.write("    ");
}
      out.write("\n");
      out.write("});\n");
      out.write("  \n");
      out.write("$('#cbNivel').on('change', function()\n");
      out.write("{\n");
      out.write("$(\"#cbGrado\").removeAttr('disabled');\n");
      out.write("$(\"#cbTurno\").removeAttr('disabled');\n");
      out.write("$(\"#cbMateria\").removeAttr('disabled');\n");
      out.write("$(\"#cbDia\").removeAttr('disabled');\n");
      out.write("$(\"#cbSeccion\").removeAttr('disabled');\n");
      out.write("\n");
      out.write("  var select2 = document.getElementById(\"cbGrado\");\n");
      out.write("  var select3 = document.getElementById(\"cbTurno\");\n");
      out.write("  var select4 = document.getElementById(\"cbMateria\");\n");
      out.write("for (let i = select2.options.length; i >= 0; i--) {\n");
      out.write("    select2.remove(i);\n");
      out.write("  }\n");
      out.write("for (let i = select3.options.length; i >= 0; i--) {\n");
      out.write("    select3.remove(i);\n");
      out.write("  }\n");
      out.write("for (let i = select4.options.length; i >= 0; i--) {\n");
      out.write("    select4.remove(i);\n");
      out.write("  }\n");
      out.write("  select2.innerHTML = \"<option value='Ninguno' class='ocultame'></option>\";\n");
      out.write("  select3.innerHTML = \"<option value='Ninguno' class='ocultame'></option>\";\n");
      out.write("  select4.innerHTML = \"<option value='Ninguno' class='ocultame'></option>\";\n");
      out.write("  //filtrado grado\n");
      out.write("  ");

   lista2=AsignacionesDB.obtenerGrado();
   for(Grado g: lista2){
if(g.getDescgrado().substring(3,8).equals("Grado")){
    
      out.write("\n");
      out.write("    if(this.value==\"2\"){     \n");
      out.write("    select2.innerHTML += \"<option value='");
      out.print(g.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(g.getDescgrado());
      out.write("</option>\";     \n");
      out.write("    }\n");
    
}       
else{
      out.write("\n");
      out.write("    if(this.value==\"1\"){     \n");
      out.write("select2.innerHTML += \"<option value='");
      out.print(g.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodgra()==g.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(g.getDescgrado());
      out.write("</option>\";\n");
      out.write("\n");
      out.write("}");
}
      out.write("\n");
      out.write("\n");
      out.write("  ");

  }
  
      out.write("\n");
      out.write("   //filtrado turno\n");
      out.write("   ");

   lista4=AsignacionesDB.obtenerTurno();
   for(Turno t: lista4){
if(t.getDescturno().equals("Tarde") || t.getDescturno().equals("Mañana")){
    
      out.write("\n");
      out.write("    if(this.value==\"2\"){     \n");
      out.write("    select3.innerHTML += \"<option value='");
      out.print(t.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(t.getDescturno());
      out.write("</option>\";     \n");
      out.write("    }\n");
    
}       
if(t.getDescturno().equals("Mañana")){
      out.write("\n");
      out.write("    if(this.value==\"1\"){     \n");
      out.write("    select3.innerHTML += \"<option value='");
      out.print(t.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodtur()==t.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(t.getDescturno());
      out.write("</option>\";\n");
      out.write("\n");
      out.write("}");
}
      out.write("\n");
      out.write("\n");
      out.write("  ");

  }
  
      out.write("\n");
      out.write("   //filtrado Materia\n");
      out.write("      ");

   lista6=AsignacionesDB.obtenerMateria();
   for(Materia m: lista6){
if(m.getDescmateria().equals("Aritmetica") || m.getDescmateria().equals("Algebra") || m.getDescmateria().equals("Geometría") || m.getDescmateria().equals("Razonamiento Matemático") || m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Lenguaje") || m.getDescmateria().equals("Ort. Y Calig.") || m.getDescmateria().equals("Tutoria") || m.getDescmateria().equals("Razonamiento Verbal")){
    
      out.write("\n");
      out.write("    if(this.value==\"2\"){     \n");
      out.write("    select4.innerHTML += \"<option value='");
      out.print(m.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodtur()==m.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(m.getDescmateria());
      out.write("</option>\";     \n");
      out.write("    }\n");
    
}       
if(m.getDescmateria().equals("Inglés") || m.getDescmateria().equals("Computación") || m.getDescmateria().equals("Plan Lector") || m.getDescmateria().equals("Personal Social") || m.getDescmateria().equals("Ciencia y Ambiente") || m.getDescmateria().equals("Religión") || m.getDescmateria().equals("Danza") || m.getDescmateria().equals("Arte") || m.getDescmateria().equals("Educación Física") || m.getDescmateria().equals("Comunicacion") || m.getDescmateria().equals("Matematica") || m.getDescmateria().equals("Psicomotriz") || m.getDescmateria().equals("C.Fonologica") || m.getDescmateria().equals("Formacion G.")){
      out.write("\n");
      out.write("    if(this.value==\"1\"){     \n");
      out.write("    select4.innerHTML += \"<option value='");
      out.print(m.getCodigo());
      out.write('\'');
if(request.getParameter("ids")!=null){if(as.getCodtur()==m.getCodigo()){out.print("selected");}}
      out.write(" style='font-size: 14px;'>");
      out.print(m.getDescmateria());
      out.write("</option>\";\n");
      out.write("\n");
      out.write("}");
}
      out.write("\n");
      out.write("\n");
      out.write("  ");

  }
  
      out.write("       \n");
      out.write("});\n");
      out.write(" ");
if(request.getParameter("ids")!=null){
      out.write("\n");
      out.write(" $(\"#submit\").css({'color':'white','background':'red'});\n");
      out.write(" $(\"#submit\").attr('disabled', 'disabled');\n");
      out.write("     ");
}
      out.write("\n");
      out.write("   </script>                 \n");
      out.write("        <script src=\"js/estilovalidos.js\"></script>\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.js\"></script>\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
