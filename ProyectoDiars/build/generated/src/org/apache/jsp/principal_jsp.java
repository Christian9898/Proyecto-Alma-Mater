package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class principal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Colegio | I.E.P ALMA MATER</title>\n");
      out.write(" <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/principalestiloshs.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/fontellos.css\">\n");
      out.write("<script src=\"http://code.jquery.com/jquery-latest.js\"></script>\n");
      out.write("<script src=\"js/principales.js\"></script>\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css\" rel=\"stylesheet\"/>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js\"></script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("            .hovearan:hover{\n");
      out.write("            color:  yellow;                \n");
      out.write("            }\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<main>\n");
      out.write("\t<header>\n");
      out.write("\t\t<div class=\"contenedor\">\n");
      out.write("\t\t<ul class=\"acceso\">\n");
      out.write("                    <li><a href=\"http://www.facebook.com/groups/1412637689025612/\" target=\"_blank\"><img src=\"imagenes/facebook.png\" alt=\"im_facebook\"></a></li>\n");
      out.write("                    <li><a href=\"https://guia-lima.portaldeeducacion.pe/primaria/COLEGIO-ALMA-MATER-carabayllo-lima-lima-i43048.htm\" target=\"_blank\"><img src=\"imagenes/googleplus.png\" alt=\"im_googleplus\"></a></li>\n");
      out.write("                    <li><a href=\"https://www.youtube.com/watch?v=dRUxXToeiDI\" target=\"_blank\"><img src=\"imagenes/youtube.png\" alt=\"img_youtuve\"></a></li>\n");
      out.write("                    <li><a href=\"mailto:reyesrojas251999@gmail.com\" target=\"_blank\"><img src=\"imagenes/gmail.png\" alt=\"img_gmail\"></a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t    <ul class=\"acceso2\">\n");
      out.write("            <li><a href=\"Login.jsp\" class=\"\"><span class=\"icon-user-circle-o\"></span>Login</a></li>\n");
      out.write("            <!--<li><a href=\"#\" class=\"\"><span class=\"icon-user\"></span>Docentes</a></li>-->\n");
      out.write("\t    </ul>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"prueba\"><img src=\"imagenes/insignianew.png\" class=\"logocole\"><img src=\"imagenes/letras.png\" class=\"letres\"></div>\n");
      out.write("\t</header>\n");
      out.write("\t<div class=\"listash\">\n");
      out.write("\t\t<div class=\"menu_bar\">\n");
      out.write("\t\t<a href=\"#\" class=\"bt-menu\"><span class=\"icon-menu\"></span>Menu</a>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("        <nav>\n");
      out.write("\t\t<ul>\n");
      out.write("                <li class=\"submenu\"><a href=\"principal.jsp\">INICIO<span class=\"caret icon-home\"></span></a></li>\n");
      out.write("\t        <li class=\"submenu\"><a href=\"\">EL COLEGIO<span class=\"caret icon-down-open\"></span></a>\n");
      out.write("                <ul class=\"children\">\n");
      out.write("\t        <li><a href=\"#\">Quiénes somos<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t        <li><a href=\"#\">Historia<span class=\"icon-dot\"></span></a></li>\n");
      out.write("                <li><a href=\"#\">Directivos<span class=\"icon-dot\"></span></a></li>\n");
      out.write("                </ul>\n");
      out.write("\t\t</li>\n");
      out.write("\t\t<li><a href=\"ServletControlador?accion=MostratNiGra\">ADMISIÓN</a></li>\n");
      out.write("\t\t<li><a href=\"PostulacionCV.jsp\">TRABAJO</a></li>\n");
      out.write("\t\t<li><a href=\"\">PROPUESTA EDUCATIVA</a></li>\n");
      out.write("\t\t<li class=\"submenu\"><a href=\"#\">NIVELES<span class=\"caret icon-down-open\"></a>\n");
      out.write("\t\t<ul class=\"children\">\n");
      out.write("\t\t<li><a href=\"#\">Inicial<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t<li><a href=\"#\">Primaria<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t</li>\n");
      out.write("\t\t<li class=\"submenu\"><a href=\"\">PROGRAMAS<span class=\"caret icon-down-open\"></a>\n");
      out.write("\t\t<ul class=\"children\">\n");
      out.write("\t\t<li><a href=\"#\">Arte<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t<li><a href=\"#\">Computación<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t<li><a href=\"#\">Laboratorio<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t<li><a href=\"#\">Danzas<span class=\"icon-dot\"></span></a></li>\t\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t</li>\n");
      out.write("\t\t<li class=\"submenu\"><a href=\"\">CONTACTO<span class=\"caret icon-down-open\"></a>\n");
      out.write("                <ul class=\"children\">\n");
      out.write("             \t<li><a href=\"#\">Contáctenos<span class=\"icon-dot\"></span></a></li>\n");
      out.write("\t\t<li><a href=\"ubicacion.jsp\">Ubicanos<span class=\"icon-dot\"></span></a></li>\n");
      out.write("                </ul>\n");
      out.write("\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</nav>\n");
      out.write("</div>\n");
      out.write("<div class=\"pasimagenes\">\n");
      out.write("<div class=\"container-all\">\n");
      out.write("\n");
      out.write("<input type=\"radio\" id=\"1\" name=\"image-slide\" hidden/>\n");
      out.write("<input type=\"radio\" id=\"2\" name=\"image-slide\" hidden/>\n");
      out.write("<input type=\"radio\" id=\"3\" name=\"image-slide\" hidden/>\n");
      out.write("<input type=\"radio\" id=\"4\" name=\"image-slide\" hidden/>\n");
      out.write("<input type=\"radio\" id=\"5\" name=\"image-slide\" hidden/>\n");
      out.write("<input type=\"radio\" id=\"6\" name=\"image-slide\" hidden/>\n");
      out.write("\n");
      out.write("<div class=\"slide\">\n");
      out.write("\t<div class=\"item-slide\">\n");
      out.write("            <img src=\"imagenes/cole.jpg\" class=\"suti\" alt=\"im_carlitos\">\t\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"item-slide\">\n");
      out.write("            <img src=\"imagenes/escribir.jpg\" class=\"suti\" alt=\"im_escribiendo\">\t\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"item-slide\">\n");
      out.write("            <img src=\"imagenes/estudiando.jpg\" class=\"suti\" alt=\"im_estudiando\">\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"item-slide\">\n");
      out.write("            <img src=\"imagenes/abc.jpg\" class=\"suti\" alt=\"im_letras\">\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"item-slide\">\n");
      out.write("            <img src=\"imagenes/profesores.jpg\" class=\"suti\" alt=\"im_profesores\">\n");
      out.write("\t</div>\n");
      out.write("    <div class=\"item-slide\">\n");
      out.write("        <img src=\"imagenes/aniversario.png\" class=\"suti\" alt=\"im_aniversario\">\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"pagination\">\n");
      out.write("\t<label class=\"pagination-item\" for=\"1\">\n");
      out.write("\t<img src=\"imagenes/cole.jpg\" class=\"suti\" alt=\"im_carlitos\">\t\n");
      out.write("\t</label>\n");
      out.write("\t<label class=\"pagination-item\" for=\"2\">\n");
      out.write("\t<img src=\"imagenes/escribir.jpg\" class=\"suti\" alt=\"im_escribiendo\">\t\n");
      out.write("\t</label>\n");
      out.write("\t<label class=\"pagination-item\" for=\"3\">\n");
      out.write("\t<img src=\"imagenes/estudiando.jpg\" class=\"suti\" alt=\"im_estudiando\">\n");
      out.write("\t</label>\n");
      out.write("\t<label class=\"pagination-item\" for=\"4\">\n");
      out.write("\t<img src=\"imagenes/abc.jpg\" class=\"suti\" alt=\"im_letras\">\n");
      out.write("\t</label>\n");
      out.write("\t<label class=\"pagination-item\" for=\"5\">\n");
      out.write("\t<img src=\"imagenes/profesores.jpg\" class=\"suti\" alt=\"im_profesores\">\n");
      out.write("\t</label>\n");
      out.write("        <label class=\"pagination-item\" for=\"6\">\n");
      out.write("\t<img src=\"imagenes/aniversario.png\" class=\"suti\" alt=\"im_aniversario\">\n");
      out.write("\t</label>\n");
      out.write("</div>\t\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"presentacion\">\n");
      out.write("\t<img src=\"imagenes/alumnos.png\"><article><h2>Bienvenidos a la I.E.P Alma Mater</h2><br>Alma Mater es uno de los colegios líderes en el distrito de Carabayllo, ayudando a sus estudiantes a alcanzar su potencial. Proveemos una educación con un alto rendimiento intelectual y creativo siguiendo nuestro lema \"Formamos Triunfadores\".<br>\n");
      out.write("Valoramos la  dedicación, honestidad, responsabilidad y respeto, que  transmitimos a nuestros alumnos desde una temprana edad para ayudarlos a convertirse en jóvenes exitosos y aptos para enfrentar todo tipo de obstaculos.<br><br>\n");
      out.write("Conozca más acerca del I.E.P Alma Mater en esta web .\n");
      out.write("</article>\n");
      out.write("</div>\n");
      out.write("<div class=\"presentacion\">\n");
      out.write("\t<article><h2>Infraestructura</h2><br>Actualmente contamos con una adecuada ambiente para cada seccion las cuales son (Inicial y Primaria) ,amplios salones,areas adpatadas tanto para laboratorio , arte ,deporte y danza.<br><br>\n");
      out.write("Conozca más acerca del I.E.P Alma Mater en esta web .</article><img src=\"imagenes/micole.jpg\">\n");
      out.write("</div>\n");
      out.write("<div class=\"noticias\"><h3>ÚLTIMAS NOTICIAS</h3></div>\n");
      out.write("\t\t<div class=\"portafolio-container\">\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/1.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Colaboración</h2>\n");
      out.write("\t\t\t\t\t<p>Los alumnos de la institucion educativa I.E.P Alma Mater formando parte del apoyo de la lucha contra el cancer.</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/2.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Exposición Inicial</h2>\n");
      out.write("\t\t\t\t\t<p>Los pequeños triunfadores comenzando su experiencia como expositores acerca de su familia.</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/3.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Simulacro</h2>\n");
      out.write("\t\t\t\t\t<p>Los docentes de la I.E.P Alma Mater participando de la reunion de la municipalidad para la preparacion de cualquier incidente de sismo.</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/4.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Marcha Escolar</h2>\n");
      out.write("\t\t\t\t\t<p>Los alumnos marchando en homenaje a la bandera peruana.</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/5.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Exposicion Primaria</h2>\n");
      out.write("\t\t\t\t\t<p>Los alumnos de primaria demostrando sus habilidades de ingles con su respectiva exposicion.</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<section class=\"portafolio-item\">\n");
      out.write("\t\t\t\t<img src=\"imagenes/6.jpg\" alt=\"\" class=\"portafolio-img\">\n");
      out.write("\t\t\t\t<section class=\"portafolio-text\">\n");
      out.write("\t\t\t\t\t<h2>Olimpiadas</h2>\n");
      out.write("\t\t\t\t\t<p>Los estudiantes de la I.E.P Alma Mater rumbo a sus olimpiadas 2019 .</p>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("<p style=\"float: right;\" class=\"hovearan\"><span class=\"icon-book-open\"></span><a href=\"Reclamacion.jsp\" style=\"text-decoration: none;color: white;font-size: 18px;\">Libro de Reclamaciones</a></p><br><br>\n");
      out.write("<p><span class=\"icon-location\"></span><a>Jr Andres Avelino Caceres 365 El Progreso - Carabayllo</a></p>\n");
      out.write("<p><span class=\"icon-mobile\"></span><a>Central telefónica (01) 547 - 0894</a></p>\n");
      out.write("<p><span class=\"icon-mail-alt\"></span><a>reyesrojas251999@gmail.com</a></p>\n");
      out.write("<div><b>COLEGIO ALMA MATER - TODOS LOS DERECHOS RESERVADOS<b></div>\n");
      out.write("</footer>\n");
      out.write("</main>\n");
      out.write("</body>\n");
      out.write("</html>");
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
