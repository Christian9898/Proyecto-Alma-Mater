package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Docentesh;
import Modelo.Asistencia;
import Modelo.fecpagos;
import java.util.ArrayList;

public final class HistorialAsistencia_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/stylesconsul.css\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("        <title>H.Asis | I.E.P ALMA MATER</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estiloshs.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/flaticon.css\">  \n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .estilaso{\n");
      out.write("                width: 20%;\n");
      out.write("                height: 30px;\n");
      out.write("                font-size: 1em;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                background: #99ccff;\n");
      out.write("            }\n");
      out.write("            .estilasoh{\n");
      out.write("                width: 20%;\n");
      out.write("                height: 30px;\n");
      out.write("                font-size: 1.1em;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                background: black;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            .estilasoh:hover{\n");
      out.write("                background: red;\n");
      out.write("            }\n");
      out.write("               \n");
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
      out.write("                <main>\n");
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
      out.write("    <center>\n");
      out.write("        <h1>Historial de Asistencia</h1>\n");
      out.write("    </center>\n");
      out.write("                <center>\n");
      out.write("                <select name=\"cbMesCompro\" class=\"presioname estilaso\" id=\"presionalo\">\n");
      out.write("                <option class=\"ocultame\">Mes</option>\n");
      out.write(" ");

                ArrayList<fecpagos> lista=(ArrayList<fecpagos>)request.getAttribute("lista");
                for(fecpagos m: lista){
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(m.getMes());
      out.write('"');
      out.write('>');
      out.print(m.getMes());
      out.write("</option>\n");
      out.write("                  ");

                }
                
      out.write("\n");
      out.write("</select>     \n");
      out.write(" \n");
      out.write("<select name=\"parentesco\" class=\"presioname estilaso\" id=\"presionalo\">\n");
      out.write(" <option value=\"\" class=\"ocultame\">Asistencia</option>\n");
      out.write(" <option value=\"ASISTIO\">ASISTIO</option>\n");
      out.write(" <option value=\"TARDANZA\">TARDANZA</option>\n");
      out.write("</select>\n");
      out.write("     <input type=\"button\" value=\"Buscar\" class=\"estilasoh\">           \n");
      out.write("  </center>\n");
      out.write("      <div class=\"datagrid\">\n");
      out.write("          \n");
      out.write("          <table>\n");
      out.write("            <thead>\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <th>Cod.Docente</th>\n");
      out.write("                    <th>Fecha</th>\n");
      out.write("                    <th>Hora I</th>\n");
      out.write("                    <th>Hora S</th>\n");
      out.write("                    <th>Estado</th>\n");
      out.write("                    <th>Opcion</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tfoot>\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td colspan=\"6\">\n");
      out.write("                        <div id=\"paging\"><ul><li><a href=\"#\"><span>Previous</span></a></li><li><a href=\"#\" class=\"active\"><span>1</span></a></li><li><a href=\"#\"><span>2</span></a></li><li><a href=\"#\"><span>3</span></a></li><li><a href=\"#\"><span>4</span></a></li><li><a href=\"#\"><span>5</span></a></li><li><a href=\"#\"><span>Next</span></a></li></ul>\n");
      out.write("                        </div>\n");
      out.write("                </tr>\n");
      out.write("            </tfoot>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                     ArrayList<Asistencia> listar2 =(ArrayList<Asistencia>)request.getAttribute("lista2");
                     
                    if (listar2.size() > 0) {
                        for (Asistencia pdfvo : listar2) {
                            
                
      out.write("\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td style=\"line-height: 40px;\">");
      out.print(pdfvo.getCoddocen());
      out.write("</td>\n");
      out.write("                    <td class=\"comunicate\">");
      out.print(pdfvo.getFecdocen());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(pdfvo.getHordocen());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(pdfvo.getHordocensa());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(pdfvo.getEstadocen());
      out.write("</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                       ");

                           if(pdfvo.getEstadocen().equals("TARDANZA")){
      out.write("\n");
      out.write("                            <img src=\"imagenes/dislike.png\" title=\"No Cumplio\" class=\"opci\"/>\n");
      out.write("                            ");
if(pdfvo.getComunicado()==0){
                            
      out.write("\n");
      out.write("                            <a href=\"mailto:reyesrojas251999@gmail.com?Subject=Comunicado%20por%20Tardanza\"><img src=\"imagenes/mensaje.png\" title=\"Enviar\" class=\"opci\"/></a>\n");
      out.write("                           <!-- <input type=\"hidden\" name=\"bool\" value=\"");
      out.print(pdfvo.getComunicado());
      out.write("\">-->\n");
      out.write("                           ");
}
                            }else{
      out.write("\n");
      out.write("                             <img src=\"imagenes/like.png\" title=\"Cumplio\" class=\"opci\"/>\n");
      out.write("                           ");

                           }
}
}
                     
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("                \n");
      out.write("         </main>\n");
      out.write("            <script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("$('.ocultame').hide();\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("<script src=\"js/jquery.js\"></script>\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>  \n");
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
