package Controlador;

import Modelo.AsignacionesDB;
import Modelo.Cita;
import Modelo.CitaDB;
import Modelo.DatDocen;
import Modelo.DocentesDB;
import Modelo.Docentesh;
import Modelo.GradoAcademico;
import Modelo.Postulante;
import Modelo.PostulanteDB;
import Modelo.Solicitud;
import Modelo.SolicitudDB;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "ServletPostulante", urlPatterns = {"/ServletPostulante"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB

public class ServletPostulante extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String accion=request.getParameter("accion");
    if(accion.equals("ingresolicitud")){
    this.insertarsolicitud(request,response);
    }else if(accion.equals("delete")){
    this.eliminarsolicitud(request,response);
    }else if(accion.equals("Generarcita")){
    this.Generarcita(request,response);
    }else if(accion.equals("eliminarcita")){
    this.eliminarcita(request,response);
    }else if(accion.equals("modificarcita")){
    this.modificarcita(request,response);
    }else if(accion.equals("insertodocente")){
    this.insertardocente(request,response);
    }else if(accion.equals("elimidocente")){
    this.elimidocente(request,response);
    }else if(accion.equals("eliminasigna")){
    this.eliminasignacion(request,response);
    }
   
    }

    //CITAS
       private void Generarcita(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        Cita co=new Cita();
        
        co.setNom(request.getParameter("txtNombre"));
        co.setEma(request.getParameter("txtCorreo"));
        co.setTelf(Integer.parseInt(request.getParameter("txtTelefono")));
        co.setDirec(request.getParameter("txtDireccion"));
        co.setFechini(request.getParameter("fecha"));
        co.setFechfin(request.getParameter("fechat"));
        co.setCodpo(Integer.parseInt(request.getParameter("txtIdpos")));

        CitaDB.InsertarCita(co);
      request.getRequestDispatcher("/ServletControlador?accion=MostrarCitas&mensag=regisc").forward(request, response);
    }
    private void insertardocente(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        
            InputStream inputStream = null;
            Docentesh d=new Docentesh();
            DatDocen pdfv=new DatDocen();
            GradoAcademico gr=new GradoAcademico();
            DocentesDB doc=new DocentesDB();          
        try {
            Part filePart = request.getPart("fichero");
            System.out.println("recoibe"+request.getPart("fichero"));
            if (filePart.getSize() > 0) {
                System.out.println("nombre"+filePart.getName());
                System.out.println("Tamaño"+filePart.getSize());
                System.out.println("Contenido"+filePart.getContentType());
                inputStream = filePart.getInputStream();
             System.out.println("recoibenes"+filePart.getInputStream());    
            }
        } catch (Exception ex) {
            System.out.println("fichero: "+ex.getMessage());
        }
        if(request.getParameter("Enviar")!=null){
            if (inputStream != null) {
                   d.setNomdocen(request.getParameter("txtNombre"));
                   d.setApepatdocen(request.getParameter("txtApepate"));
                   d.setApematdocen(request.getParameter("txtApemate"));
                   d.setFecnadocen(request.getParameter("fechana"));
                   d.setNaciondocen(request.getParameter("txtNacionalidad"));
                   d.setIdentidocen(request.getParameter("dni"));
                   d.setCeldocen(Integer.parseInt(request.getParameter("txtCelular")));
                   d.setEstdocente(request.getParameter("estado2"));
                   d.setDirdocen(request.getParameter("txtDireccion"));
                   d.setEmaidocen(request.getParameter("txtCorreo"));
                   gr.setDesforaca(request.getParameter("estado"));
                   pdfv.setFechaingre(request.getParameter("fechaing"));
                   pdfv.setDestiem(request.getParameter("dedicacion"));
                   pdfv.setArchivopdf(inputStream);
            }
                doc.insertarDocente(d,pdfv,gr);
            
        request.getRequestDispatcher("/MantenimientoDocente.jsp?mensa=insertado").forward(request, response);  
        }else{
                   d.setCodocen(Integer.parseInt(request.getParameter("IdDocente")));
                   d.setNomdocen(request.getParameter("txtNombre"));
                   d.setApepatdocen(request.getParameter("txtApepate"));
                   d.setApematdocen(request.getParameter("txtApemate"));
                   d.setFecnadocen(request.getParameter("fechana"));
                   d.setNaciondocen(request.getParameter("txtNacionalidad"));
                   d.setIdentidocen(request.getParameter("dni"));
                   d.setCeldocen(Integer.parseInt(request.getParameter("txtCelular")));
                   d.setEstdocente(request.getParameter("estado2"));
                   d.setDirdocen(request.getParameter("txtDireccion"));
                   d.setEmaidocen(request.getParameter("txtCorreo"));
                   gr.setDesforaca(request.getParameter("estado"));
                   pdfv.setFechaingre(request.getParameter("fechaing"));
                   pdfv.setDestiem(request.getParameter("dedicacion"));
                    pdfv.setArchivopdf(inputStream);
                    doc.modificarDocente(d,pdfv,gr);
            
        request.getRequestDispatcher("/MantenimientoDocente.jsp?mensa=modificado").forward(request, response);
        
        }
    }
       
    private void insertarsolicitud(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        
    InputStream inputStream = null;
    Postulante po = new Postulante();
    Solicitud pdfvo = new Solicitud();
    GradoAcademico gr=new GradoAcademico();
    PostulanteDB pdfdao = new PostulanteDB();
    
        try {
            System.out.println("recoibe"+request.getParameter("fichero"));
            Part filePart = request.getPart("fichero");
            if (filePart.getSize() > 0) {
                System.out.println("nombre"+filePart.getName());
                System.out.println("Tamaño"+filePart.getSize());
                System.out.println("Contenido"+filePart.getContentType());
                inputStream = filePart.getInputStream();
            }
        } catch (Exception ex) {
            System.out.println("fichero: "+ex.getMessage());
        }
    
                if (inputStream != null) {
                   po.setNompostul(request.getParameter("txtNombre"));
                   po.setApepatpostul(request.getParameter("txtApepate"));
                   po.setApematpostul(request.getParameter("txtApemate"));
                   po.setFecnapostul(request.getParameter("nacimiento"));
                   po.setNacippostul(request.getParameter("txtNacionalidad"));
                   po.setCelpostul(Integer.parseInt(request.getParameter("txtTelefono")));
                   po.setDirpostul(request.getParameter("txtDireccion"));
                   po.setEmaipostul(request.getParameter("txtCorreo"));
                   gr.setDesforaca(request.getParameter("rbForma"));
                   pdfvo.setArchivopdf(inputStream);
                }
                pdfdao.insertarPostulante(pdfvo,po,gr);
                  request.getRequestDispatcher("/PostulacionCV.jsp?soliregis=soldoce").forward(request, response);

    }
        private void eliminarsolicitud(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int postuid = Integer.parseInt(request.getParameter("id"));
            SolicitudDB.Eliminar_PdfVO(postuid);
        
   request.getRequestDispatcher("/ServletControlador?accion=MostrarSolicitudes").forward(request, response);
    }
    private void elimidocente(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int docid = Integer.parseInt(request.getParameter("id"));
            DocentesDB.Eliminar_Docente(docid);
        
   request.getRequestDispatcher("/MantenimientoDocente.jsp").forward(request, response);
    }
        private void eliminasignacion(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int docid = Integer.parseInt(request.getParameter("id"));
            AsignacionesDB.Eliminar_Asignacion(docid);
        
   request.getRequestDispatcher("/ServletControlador?accion=mostrarAsigna&mensi=eliminado").forward(request, response);
    }
    private void eliminarcita(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int citaid = Integer.parseInt(request.getParameter("id"));
            CitaDB.Eliminar_Cita(citaid);
        
   request.getRequestDispatcher("/ServletControlador?accion=MostrarCitas").forward(request, response);
    }
    private void modificarcita(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        Cita co=new Cita();
            co.setCodcita(Integer.parseInt(request.getParameter("id")));
            co.setFechini(request.getParameter("fecha"));
            co.setFechfin(request.getParameter("fechat"));
            CitaDB.Modificar_Cita(co);
        
   request.getRequestDispatcher("/ServletControlador?accion=MostrarCitas").forward(request, response);
    }
            
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
