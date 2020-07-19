package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Modelo.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1\">\n");
      out.write("        <title>Prin. | I.E.P ALMA MATER</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estiloshs.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/flaticon.css\">  \n");
      out.write("        <style>\n");
      out.write("            .jumbotron h3,.jumbotron p{\n");
      out.write("                margin-top: -20px;\n");
      out.write("                color: red;\n");
      out.write("            }\n");
      out.write("              section .container{\n");
      out.write("            background: cyan;\n");
      out.write("  }\n");
      out.write("  @media (min-width: 768px) and (max-width: 993px) {\n");
      out.write("      .eli{\n");
      out.write("         width: 90%;\n");
      out.write("         margin-top: 2px;\n");
      out.write("      }\n");
      out.write(" }\n");
      out.write("  @media (min-width: 993px){\n");
      out.write("  nav .container .navbar-right{\n");
      out.write("      background: rgba(0,0,0,.2);\n");
      out.write("      position: absolute;\n");
      out.write("      right: 15px;\n");
      out.write("      \n");
      out.write("  }\n");
      out.write("  }\n");
      out.write("        @media (max-width: 992px) { \n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <main>\n");
      out.write("               <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
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
      out.write("        <li><a href=\"RegistrarVenta.jsp\">Registrar Ventas</a></li>\n");
      out.write("        ");

                }
         
      out.write("        \n");
      out.write("         ");

                if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Docente")){
                
      out.write("\n");
      out.write("                <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Registros<b class=\"caret\"></b></a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"RegistrarVenta.jsp\">Registrar Ventas</a></li>\n");
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
      out.write("                 <li><a href=\"RegistrarProducto.jsp\">Registrar Producto</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=mostrarfichas\">Registrar Ficha</a></li>\n");
      out.write("                 <li><a href=\"ServletControlador?accion=muestrapagos\">Pagos Matricula</a></li>\n");
      out.write("                 </ul>\n");
      out.write("                 </li>\n");
      out.write("                 <li><a href=\"RegistrarVenta.jsp\">Registrar Ventas</a></li>\n");
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
      out.write("             <!-- STAR SLIDER -->\n");
      out.write("       <div class=\"container-fluid\">\n");
      out.write("           <div class=\"row\">\n");
      out.write("               <div class=\"col-md-12\">\n");
      out.write("                   <div class=\"jumbotron\">\n");
      out.write("                       <h3>MI ALMA MATER</h3>\n");
      out.write("                      <p>\"FORMAMOS TRIUNFADORES\"</p>\n");
      out.write("                    </div>\n");
      out.write("               </div>\n");
      out.write("           </div>\n");
      out.write("       </div>\n");
      out.write("       <!-- END SLIDER -->\n");
      out.write("       <!-- STAR PRODUCTO -->\n");
      out.write("       <section id=\"producto\">\n");
      out.write("           <div class=\"container\">\n");
      out.write("               <div class=\"row\">\n");
      out.write("                   <div class=\"col-md-12\">\n");
      out.write("                       <div class=\"titulo\">\n");
      out.write("                           <h2>Catalogo de Productos</h2>\n");
      out.write("                           <div class=\"hr\"></div>\n");
      out.write("                       </div>\n");
      out.write("                   </div>\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   ");

                 ArrayList<Producto> lista=ProductoDB.obtenerProducto();
              for(Producto p : lista){
                
      out.write("\n");
      out.write("                    <div class=\"col-sm-4 col-lg-4 col-md-4\">\n");
      out.write("                        <div class=\"thumbnail text-center\">                            \n");
      out.write("                            <img src=\"img/");
      out.print(p.getImagen());
      out.write("\" class=\"img-responsive\" alt=\"\">                                                                                         \n");
      out.write("                            <div class=\"caption\">\n");
      out.write("                                <h4 class=\"pull-right precio\">");
      out.print( p.getPrecio());
      out.write("</h4>\n");
      out.write("                                <h4><a href=\"#\">");
      out.print( p.getNombre());
      out.write("</a>\n");
      out.write("                                </h4>\n");
      out.write("                                <a class=\"btn btn-primary\" href=\"AnadirCarrito.jsp?id=");
      out.print(p.getCodigoProducto());
      out.write("\">Añadir</a>\n");
      out.write("                                ");

                            if(sesionOK.getAttribute("perfil")!=null && sesionOK.getAttribute("perfil").equals("Administrador")){
                             
      out.write("\n");
      out.write("                     <a class=\"btn btn-primary\" href=\"ActualizarProducto.jsp?id=");
      out.print(p.getCodigoProducto());
      out.write("\">Modificar</a> \n");
      out.write("                     <a class=\"btn btn-primary eli\" href=\"ServletControlador?accion=elimiproducto&id=");
      out.print(p.getCodigoProducto());
      out.write("\" style=\"background: red;\">X</a> \n");
      out.write("                     ");
 
                        }
                     
      out.write("\n");
      out.write("                     \n");
      out.write("              </div>                                \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                ");

                    }
                    
      out.write("\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("           </div>\n");
      out.write("       </section>\n");
      out.write("  </main> \n");
      out.write(" \n");
      out.write("  <script src=\"js/jquery.js\"></script>\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/owl.carousel.js\"></script>\n");
      out.write("<script src=\"js/code.js\"></script>\n");
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
