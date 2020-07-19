package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JOSEP LEO
 */
@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})

public class ServletControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String accion=request.getParameter("accion");
       if(accion.equals("AnadirCarrito")){
       this.anadirCarrito(request,response);
       }else if(accion.equals("ModificarProducto")){
       this.actualizarProducto(request,response);
       }else if(accion.equals("RegistrarProducto")){
       this.registrarProducto(request,response);
       }else if(accion.equals("elimiproducto")){
       this.eliminarProducto(request,response);
       }else if(accion.equals("registrarVenta")){
       this.registrarPedido(request,response);
       }else if(accion.equals("MostrarVentas")){
       this.mostrarPedido(request,response);    
       }else if(accion.equals("mostrarAsigna")){
       this.mostrarasignaciones(request,response);    
       }else if(accion.equals("MostrarSolicitudes")){
       this.mostrarsolicitudes(request,response);    
       }else if(accion.equals("MostrarCitas")){
       this.mostrarcitas(request,response);    
       }else if(accion.equals("MostrarDocentes")){
       this.mostrardocentes(request,response);    
       }else if(accion.equals("insertoasignacion")){
       this.insertarasignacion(request,response);
       }else if(accion.equals("MostratNiGra")){
       this.mostrarnivgra(request,response);
       }else if(accion.equals("RegistrarSolicitudD")){
       this.registrarSolicitudD(request,response);
       }else if(accion.equals("MostrarAdmisiones")){
       this.mostraradmision(request,response);
       }else if(accion.equals("EliminarAdmisiones")){
       this.eliminaradmision(request,response);
       }else if(accion.equals("mostrarfichas")){
       this.mostrarfichas(request,response);
       }else if(accion.equals("insertarfichas")){
       this.insertafichas(request,response);
       }else if(accion.equals("muestraalumnitos")){
       this.mostraralumnos(request,response);
       }else if(accion.equals("eliminaficha")){
       this.eliminafichaalu(request,response);
       }else if(accion.equals("insertousuario")){
       this.insertarusuario(request,response);
       }else if(accion.equals("eliminarusuario")){
       this.eliminarusuario(request,response);
       }else if(accion.equals("muestrapagos")){
       this.mostrarpagos(request,response);
       }else if(accion.equals("regispagos")){
       this.registropagos(request,response);
       }else if(accion.equals("consultapagos")){
       this.mostrarconsulpagos(request,response);
       }else if(accion.equals("regisasitencia")){
       this.registraasitencia(request,response);
       }else if(accion.equals("muestraasistencia")){
       this.mostrarasistenca(request,response);
       }else if(accion.equals("muestranivsa")){
       this.mostrarnivgra2(request,response);
       }else if(accion.equals("insertoasignaalu")){
       this.insertarasignaalu(request,response);
       }else if(accion.equals("Eliminarasigalu")){
       this.eliminarasigalu(request,response);
       }else if(accion.equals("muestranotasig")){
       this.mostrarnotasig(request,response);
       }else if(accion.equals("mostraralumexam")){
       this.mostrarasigalunot(request,response);
       }else if(accion.equals("cambianotas")){
       this.cambionotaalu(request,response);
       }else if(accion.equals("asitendoce")){
       this.asiteninsa(request,response);
       }else if(accion.equals("Registarreclama")){
       this.regisreclama(request,response);
       }else if(accion.equals("MostrarReclamo")){
       this.muestrareclam(request,response);
       }else if(accion.equals("ErtaImagen")){
       this.ertaimagen(request,response);
       }else if(accion.equals("MostrarProducto")){
       this.mostproducto(request,response);
       }
    }
    
            private void mostproducto(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Producto> lista=new ArrayList<Producto>();
    lista=ProductoDB.obtenerProducto();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("BuscarProducto.jsp").forward(request, response); 
    }  
               private void ertaimagen(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
                   request.setAttribute("img", request.getParameter("img"));
    request.getRequestDispatcher("RegistrarProducto.jsp").forward(request, response); 
    }  
    
    
           private void muestrareclam(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Reclamo> lista=new ArrayList<Reclamo>();
    lista=ReclamacionDB.Listar_Reclamos();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("ConsultarReclamo.jsp").forward(request, response); 
    }               

           private void regisreclama(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
    Reclamo p=new Reclamo();
    
    p.setNomb(request.getParameter("txtNombre"));
    p.setApepat(request.getParameter("txtApePat"));
    p.setApemat(request.getParameter("txtApeMat"));
    p.setEdad(Integer.parseInt(request.getParameter("edad")));
    p.setIden(request.getParameter("txtIden"));
    p.setNombap(request.getParameter("txtNombreApode"));
    p.setApepatap(request.getParameter("txtApePatApode"));
    p.setApematap(request.getParameter("txtApeMatApode"));
    p.setIdenap(request.getParameter("txtIdenApode"));
    p.setCorreoap(request.getParameter("txtCorreoApode"));
    p.setTelap(Integer.parseInt(request.getParameter("txtTelfApode")));
    p.setCelap(Integer.parseInt(request.getParameter("txtCelApode")));
    p.setDirecap(request.getParameter("txtDireApode"));
    p.setBiencon(request.getParameter("txtbiecon"));
    p.setDecsripcion(request.getParameter("txtdescripci"));
    p.setTiporecla(request.getParameter("txttip"));
    p.setDetrecla(request.getParameter("txtreclam"));
    p.setPedirecla(request.getParameter("txtpedido"));
    
    ReclamacionDB.insertarReclamacion(p);
    request.setAttribute("soliadmi","guardar");
    request.getRequestDispatcher("/Reclamacion.jsp").forward(request, response);  
   
    }   




    private void asiteninsa(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
     ArrayList<Asistencia> lista2=new ArrayList<Asistencia>();
    lista2=AsistenciaDB.Listar_Asistencias(Integer.parseInt(request.getParameter("id")));
    request.setAttribute("lista2", lista2);
        request.getRequestDispatcher("RegistrarAsistencia.jsp").forward(request, response); 
    } 
    
    
            private void cambionotaalu(HttpServletRequest request,HttpServletResponse response)
     throws ServletException, IOException{
                Asigalu p=new Asigalu();
    p.setIdAsigna(Integer.parseInt(request.getParameter("codasi")));
    p.setIdAlu(Integer.parseInt(request.getParameter("codalu")));
    p.setExam1(Integer.parseInt(request.getParameter("examen1")));
    p.setExam2(Integer.parseInt(request.getParameter("examen2")));
    p.setExam3(Integer.parseInt(request.getParameter("examen3")));
    p.setExam4(Integer.parseInt(request.getParameter("examen4")));
    AsignaAluDB.Modificar_notalu(p);
      request.getRequestDispatcher("/ServletControlador?accion=mostraralumexam&ids="+request.getParameter("codasi")+"&mensajes="+request.getParameter("mensajes")).forward(request, response); 
       
           }
    
        private void mostrarasigalunot(HttpServletRequest request,HttpServletResponse response)
     throws ServletException, IOException{
        
      ArrayList<Asigalu> lista=new ArrayList<Asigalu>();
      int cod=Integer.parseInt(request.getParameter("ids"));
      lista=AsignaAluDB.Listar_alumnoasinotas(cod);
      request.setAttribute("lista", lista);
      request.getRequestDispatcher("RegisNotas2.jsp").forward(request, response); 
       
           }

        private void mostrarnotasig(HttpServletRequest request,HttpServletResponse response)
    throws ServletException, IOException{
    ArrayList<Nivel> lista=new ArrayList<Nivel>();
    ArrayList<Grado> lista2=new ArrayList<Grado>();
    ArrayList<Seccion> lista3=new ArrayList<Seccion>();
    ArrayList<Turno> lista4=new ArrayList<Turno>();
    ArrayList<Dias> lista5=new ArrayList<Dias>();
    ArrayList<Materia> lista6=new ArrayList<Materia>();
    ArrayList<Asignacion> lista7=new ArrayList<Asignacion>();
    ArrayList<Docentesh> lista8=new ArrayList<Docentesh>();
    lista=AsignacionesDB.obtenerNivel();
    lista2=AsignacionesDB.obtenerGrado();
    lista3=AsignacionesDB.obtenerSeccion();
    lista4=AsignacionesDB.obtenerTurno();
    lista5=AsignacionesDB.obtenerDias();
    lista6=AsignacionesDB.obtenerMateria();
    lista7=AsignacionesDB.obtenerAsignaci();
    lista8=DocentesDB.Listar_Docentes();
    request.setAttribute("lista", lista);
    request.setAttribute("lista2", lista2);
    request.setAttribute("lista3", lista3);
    request.setAttribute("lista4", lista4);
    request.setAttribute("lista5", lista5);
    request.setAttribute("lista6", lista6);
    request.setAttribute("lista7", lista7);
    request.setAttribute("lista8", lista8);
    
    request.getRequestDispatcher("RegistroNotas.jsp").forward(request, response); 
    }
               private void registraasitencia(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
    Asistencia p=new Asistencia();
     if(request.getParameter("Ingreso")!=null){
    p.setCoddocen(Integer.parseInt(request.getParameter("txtCodigo")));
    p.setFecdocen(request.getParameter("txtFecha2"));
    p.setMesdocen(request.getParameter("txtFecha3"));
    p.setAniodocen(request.getParameter("txtFecha4"));
    p.setHordocen(request.getParameter("txtHoras")+":"+request.getParameter("txtMin")+":"+request.getParameter("txtSeg"));
    p.setEstadocen(request.getParameter("txtestado"));
    AsistenciaDB.insertarAsitencia(p);
    request.setAttribute("mensi", "ingreso");
    request.getRequestDispatcher("/ServletControlador?accion=asitendoce&id="+request.getParameter("txtCodigo")).forward(request, response);  
    }   
    else{
    p.setCoddocen(Integer.parseInt(request.getParameter("txtCodigo")));
    p.setFecdocen(request.getParameter("txtFecha2"));
    p.setMesdocen(request.getParameter("txtFecha3"));
    p.setAniodocen(request.getParameter("txtFecha4"));
    p.setHordocen(request.getParameter("txtHoras")+":"+request.getParameter("txtMin")+":"+request.getParameter("txtSeg"));
    AsistenciaDB.modificarAsitencia(p);
    request.setAttribute("mensi", "salida");
    request.getRequestDispatcher("/ServletControlador?accion=asitendoce&id="+request.getParameter("txtCodigo")).forward(request, response);  
     }          
    }
           private void registropagos(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
    Comprobante p=new Comprobante();
     
    p.setCodOperario(Integer.parseInt(request.getParameter("txtIdOperario")));
    p.setCargoOperario(request.getParameter("txtCargOperario"));
    p.setCodAlu(Integer.parseInt(request.getParameter("IdAlumno")));
    p.setFechAcomprobante(request.getParameter("txtFeAComprobante"));
    p.setFecMes(request.getParameter("txtFeVComprobante"));
    p.setMonto(Integer.parseInt(request.getParameter("txtMontoApagar")));
    p.setDnirespo(request.getParameter("txtdniResPago"));
    p.setNomcrespo(request.getParameter("txtNomResPago"));
    p.setApecrespo(request.getParameter("txtApResPago"));
    
    pagosDB.insertarPagos(p);
    request.getRequestDispatcher("/ServletControlador?accion=muestrapagos&mensaj=regis").forward(request, response);  
   
    }   
        private void insertarusuario(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
    Usuario p=new Usuario();
     if(request.getParameter("Registrar")!=null){
    p.setIdDooAlu(Integer.parseInt(request.getParameter("CodUsuario")));
    p.setNomUsu(request.getParameter("txtNombre"));
    p.setApepaUsu(request.getParameter("txtAPaterno"));
    p.setApemaUsu(request.getParameter("txtAMaterno"));
    p.setPerfil(request.getParameter("txtPerfil"));
    p.setCodusu(request.getParameter("txtCuenta"));
    p.setClaveUsu(request.getParameter("txtContra"));
    
    usuarioDB.insertarUsuarios(p);
    request.setAttribute("aviso", "insertado");
    request.getRequestDispatcher("/MantenimientoUsuario.jsp").forward(request, response);  
     }else{
    p.setIdDooAlu(Integer.parseInt(request.getParameter("CodUsuario")));
    p.setPerfil(request.getParameter("txtPerfil"));
    p.setCodusu(request.getParameter("txtCuenta"));
    p.setClaveUsu(request.getParameter("txtContra"));
    
    usuarioDB.modificarUsuarios(p);
    request.setAttribute("aviso", "modificado");
    request.getRequestDispatcher("/MantenimientoUsuario.jsp").forward(request, response);  
     }
   
    }   
    
    
        private void insertafichas(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        
          alumno d=new alumno();
          papa p=new papa();
          mama m=new mama();
          fichainscrip f=new fichainscrip();
        if(request.getParameter("Guardar")!=null){
       
                   d.setNomalu(request.getParameter("txtNombreAlu"));
                   d.setApepaalu(request.getParameter("txtApepateAlu"));
                   d.setApemaalu(request.getParameter("txtApemateAlu"));
                   d.setIdenalu(request.getParameter("dniAlu"));
                   d.setTelalu(Integer.parseInt(request.getParameter("txtTelefonoAlu")));
                   d.setDiralu(request.getParameter("txtDireccionAlu"));
                   d.setFecnalu(request.getParameter("fechanaAlu"));
                   d.setGenalu(request.getParameter("sexo"));
                   d.setSegualu(request.getParameter("seguro"));
                   d.setNivalu(Integer.parseInt(request.getParameter("cbNivel")));
                   d.setGraalu(Integer.parseInt(request.getParameter("cbGrado")));
                   d.setEstado(request.getParameter("estadofi"));
                   p.setNompapa(request.getParameter("txtNombrePa"));
                   p.setApepapapa(request.getParameter("txtApepatePa"));
                   p.setApemapapa(request.getParameter("txtApematePa"));
                   p.setIdenpapa(request.getParameter("dniPa"));
                   p.setCelpapa(Integer.parseInt(request.getParameter("txtCelularPa")));
                   p.setOcupapa(request.getParameter("txtOcupacionPa"));
                   p.setCorreopapa(request.getParameter("txtCorreoPa"));
                   p.setFecnapapa(request.getParameter("fechanaPa"));
                   p.setCodgrainpapa(Integer.parseInt(request.getParameter("gradoinPa")));
                   p.setVivepapa(request.getParameter("vivePa"));
                   p.setVivecapapa(request.getParameter("convivePa"));
                   m.setNommama(request.getParameter("txtNombreMa"));
                   m.setApepamama(request.getParameter("txtApepateMa"));
                   m.setApemamama(request.getParameter("txtApemateMa"));
                   m.setIdenmama(request.getParameter("dniMa"));
                   m.setCelmama(Integer.parseInt(request.getParameter("txtCelularMa")));
                   m.setOcumama(request.getParameter("txtOcupacionMa"));
                   m.setCorreomama(request.getParameter("txtCorreoMa"));
                   m.setFecnamama(request.getParameter("fechanaMa"));
                   m.setCodgrainmama(Integer.parseInt(request.getParameter("gradoinMa")));
                   m.setVivemama(request.getParameter("viveMa"));
                   m.setVivecamama(request.getParameter("conviveMa"));
                   f.setTelcono(Integer.parseInt(request.getParameter("txtTelefonoCont")));
                   f.setCelcono(Integer.parseInt(request.getParameter("txtCelularCont")));
                   f.setParentescono(request.getParameter("parentesco"));
                   f.setObservacion(request.getParameter("txtcomentario"));
                   fichainscriDB.insertarfichainscri(d,m,p,f);
            
        request.getRequestDispatcher("/ServletControlador?accion=mostrarfichas&mensig=guardado").forward(request, response);  
        }else{     
                   d.setCodalu(Integer.parseInt(request.getParameter("IdAlumno")));
                   d.setNomalu(request.getParameter("txtNombreAlu"));
                   d.setApepaalu(request.getParameter("txtApepateAlu"));
                   d.setApemaalu(request.getParameter("txtApemateAlu"));
                   d.setIdenalu(request.getParameter("dniAlu"));
                   d.setTelalu(Integer.parseInt(request.getParameter("txtTelefonoAlu")));
                   d.setDiralu(request.getParameter("txtDireccionAlu"));
                   d.setFecnalu(request.getParameter("fechanaAlu"));
                   d.setGenalu(request.getParameter("sexo"));
                   d.setSegualu(request.getParameter("seguro"));
                   d.setNivalu(Integer.parseInt(request.getParameter("cbNivel")));
                   d.setGraalu(Integer.parseInt(request.getParameter("cbGrado")));
                   d.setEstado(request.getParameter("estadofi"));
                   p.setNompapa(request.getParameter("txtNombrePa"));
                   p.setApepapapa(request.getParameter("txtApepatePa"));
                   p.setApemapapa(request.getParameter("txtApematePa"));
                   p.setIdenpapa(request.getParameter("dniPa"));
                   p.setCelpapa(Integer.parseInt(request.getParameter("txtCelularPa")));
                   p.setOcupapa(request.getParameter("txtOcupacionPa"));
                   p.setCorreopapa(request.getParameter("txtCorreoPa"));
                   p.setFecnapapa(request.getParameter("fechanaPa"));
                   p.setCodgrainpapa(Integer.parseInt(request.getParameter("gradoinPa")));
                   p.setVivepapa(request.getParameter("vivePa"));
                   p.setVivecapapa(request.getParameter("convivePa"));
                   m.setNommama(request.getParameter("txtNombreMa"));
                   m.setApepamama(request.getParameter("txtApepateMa"));
                   m.setApemamama(request.getParameter("txtApemateMa"));
                   m.setIdenmama(request.getParameter("dniMa"));
                   m.setCelmama(Integer.parseInt(request.getParameter("txtCelularMa")));
                   m.setOcumama(request.getParameter("txtOcupacionMa"));
                   m.setCorreomama(request.getParameter("txtCorreoMa"));
                   m.setFecnamama(request.getParameter("fechanaMa"));
                   m.setCodgrainmama(Integer.parseInt(request.getParameter("gradoinMa")));
                   m.setVivemama(request.getParameter("viveMa"));
                   m.setVivecamama(request.getParameter("conviveMa"));
                   f.setTelcono(Integer.parseInt(request.getParameter("txtTelefonoCont")));
                   f.setCelcono(Integer.parseInt(request.getParameter("txtCelularCont")));
                   f.setParentescono(request.getParameter("parentesco"));
                   f.setObservacion(request.getParameter("txtcomentario"));
                  
                   fichainscriDB.modificarfichainscri(d,m,p,f);
            
        request.getRequestDispatcher("/ServletControlador?accion=mostrarfichas&mensig=modificado").forward(request, response);
        
        }
    }
    
    
    private void insertarasignacion(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        
          Asignacion d=new Asignacion();
            
        if(request.getParameter("Guardar")!=null){
       
                   d.setCodoce(Integer.parseInt(request.getParameter("IdDocente")));
                   d.setCodmate(Integer.parseInt(request.getParameter("cbMateria")));
                   d.setCoddia(Integer.parseInt(request.getParameter("cbDia")));
                   d.setCodtur(Integer.parseInt(request.getParameter("cbTurno")));
                   d.setCodniv(Integer.parseInt(request.getParameter("cbNivel")));
                   d.setCodgra(Integer.parseInt(request.getParameter("cbGrado")));
                   d.setCodsec(Integer.parseInt(request.getParameter("cbSeccion")));
                   d.setHorain(request.getParameter("HoraIn"));
                   d.setHorafin(request.getParameter("HoraFin"));
              
            
                AsignacionesDB.insertarAsignacion(d);
            
        request.getRequestDispatcher("/ServletControlador?accion=mostrarAsigna&mensi="+request.getParameter("mensi")+"").forward(request, response);  
        }else{
                   d.setCodasi(Integer.parseInt(request.getParameter("IdAsignacion")));
                   d.setCodoce(Integer.parseInt(request.getParameter("IdDocente")));
                   d.setCodmate(Integer.parseInt(request.getParameter("cbMateria")));
                   d.setCoddia(Integer.parseInt(request.getParameter("cbDia")));
                   d.setCodtur(Integer.parseInt(request.getParameter("cbTurno")));
                   d.setCodniv(Integer.parseInt(request.getParameter("cbNivel")));
                   d.setCodgra(Integer.parseInt(request.getParameter("cbGrado")));
                   d.setCodsec(Integer.parseInt(request.getParameter("cbSeccion")));
                   d.setHorain(request.getParameter("HoraIn"));
                   d.setHorafin(request.getParameter("HoraFin"));
                  
                    AsignacionesDB.modificarAsignacion(d);
            
        request.getRequestDispatcher("/ServletControlador?accion=mostrarAsigna&mensi=modificar").forward(request, response);
        
        }
    }
    
        private void insertarasignaalu(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        
          Asigalu d=new Asigalu();
            
        if(request.getParameter("Guardar")!=null){
       
                   d.setIdAsigna(Integer.parseInt(request.getParameter("asignado")));
                   d.setIdAlu(Integer.parseInt(request.getParameter("IdAlumno")));
                AsignaAluDB.insertarAsignacionAlu(d);
            
        request.getRequestDispatcher("/ServletControlador?accion=muestranivsa&mensi=guardar").forward(request, response);  
        }else{
                 d.setIdAsigna(Integer.parseInt(request.getParameter("asignado")));
                 d.setIdAlu(Integer.parseInt(request.getParameter("IdAlumno")));
                 AsignaAluDB.modificarAsignacionAlu(d);
                 request.getRequestDispatcher("/ServletControlador?accion=muestranivsa&mensi=modificar").forward(request, response);  
        }
    }
            private void eliminafichaalu(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int aluid = Integer.parseInt(request.getParameter("id"));
            fichainscriDB.Eliminar_Ficha(aluid);
        
   request.getRequestDispatcher("/ServletControlador?accion=mostrarfichas").forward(request, response);
    }
            private void eliminarProducto(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int idpro = Integer.parseInt(request.getParameter("id"));
            ProductoDB.eliminarProducto(idpro);
        
   request.getRequestDispatcher("/RegistrarProducto.jsp?menso=eliminado").forward(request, response);
    }
     private void mostrardocentes(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Docentesh> lista=new ArrayList<Docentesh>();
    ArrayList<Asignacion> lista7=new ArrayList<Asignacion>();
    lista=DocentesDB.Listar_Docentes();
    lista7=AsignacionesDB.obtenerAsignaci();
    request.setAttribute("lista", lista);
    request.setAttribute("lista7", lista7);
    request.setAttribute("aviso", request.getParameter("mes"));
    request.getRequestDispatcher("BuscarDocente.jsp").forward(request, response); 
    } 
     
          private void mostraralumnos(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<alumno> lista=new ArrayList<alumno>();
    ArrayList<Nivel> lista2=new ArrayList<Nivel>();
    ArrayList<Grado> lista1=new ArrayList<Grado>();
    ArrayList<asignalucon> lista7=new ArrayList<asignalucon>();
    lista=fichainscriDB.Listar_Alumnos();
    lista1=AsignacionesDB.obtenerGrado();
    lista2=AsignacionesDB.obtenerNivel();
    lista7=AsignaAluDB.Listar_AsignAlumnosh();
    request.setAttribute("lista1", lista1);
    request.setAttribute("lista2", lista2);
    request.setAttribute("lista", lista);
    request.setAttribute("lista7", lista7);
    //revisar
    request.setAttribute("aviso", request.getParameter("mes"));
    request.getRequestDispatcher("BuscarAlumno.jsp").forward(request, response); 
    } 
                   

          private void mostrarpagos(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
     ArrayList<fecpagos> lista=new ArrayList<fecpagos>();
     int cantidad;
    lista=pagosDB.Listar_FecPagos();
    cantidad=pagosDB.conComprobanseguido();
    request.setAttribute("lista", lista);
    request.setAttribute("canti", cantidad);
    //revisar
    //request.setAttribute("aviso", request.getParameter("mes"));
    request.setAttribute("aviso2", request.getParameter("mensaj"));
        request.getRequestDispatcher("RealizarPago.jsp").forward(request, response); 
    } 
                    private void mostrarasistenca(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
     ArrayList<fecpagos> lista=new ArrayList<fecpagos>();
     ArrayList<Asistencia> lista2=new ArrayList<Asistencia>();
    lista=pagosDB.Listar_FecPagos();
    lista2=AsistenciaDB.Listar_Asistencias(Integer.parseInt(request.getParameter("id")));
    request.setAttribute("lista", lista);
    request.setAttribute("lista2", lista2);
    request.getRequestDispatcher("HistorialAsistencia.jsp?mes="+request.getParameter("cbMes")+"&estad="+request.getParameter("estado")).forward(request, response); 
    } 
    private void mostrarcitas(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Cita> lista=new ArrayList<Cita>();
    lista=CitaDB.Listar_Citas();
    request.setAttribute("lista", lista);
    String mensag=request.getParameter("mensag");
    request.getRequestDispatcher("ConsultarCita.jsp?mensag2="+mensag+"").forward(request, response); 
    }     
    private void mostrarsolicitudes(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<SolicitudxPostul> lista=new ArrayList<SolicitudxPostul>();
    lista=SolicitudDB.Listar_Solicitudes();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("ConsultarSolicitudes.jsp").forward(request, response); 
    }     
        private void mostrarconsulpagos(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Comprobante> lista=new ArrayList<Comprobante>();
    lista=pagosDB.Listar_Comprobantes();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("ConsultarPagos.jsp").forward(request, response); 
    }  
        private void mostraradmision(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<AdmiAluApod> lista=new ArrayList<AdmiAluApod>();
    lista=SolicitudAdmiDB.Listar_Admisones();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("ConsultarAdmi.jsp").forward(request, response); 
    }    
            private void mostrarfichas(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<gradoinstru> lista=new ArrayList<gradoinstru>();
    ArrayList<Nivel> lista2=new ArrayList<Nivel>();
    ArrayList<Grado> lista1=new ArrayList<Grado>();
    lista=fichainscriDB.obtenerGradoInstru();
    lista1=AsignacionesDB.obtenerGrado();
    lista2=AsignacionesDB.obtenerNivel();
    request.setAttribute("lista", lista);
    request.setAttribute("lista1", lista1);
    request.setAttribute("lista2", lista2);
    request.getRequestDispatcher("FichaInscripcion.jsp").forward(request, response); 
    }    
    private void mostrarPedido(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    ArrayList<Pedido> lista=new ArrayList<Pedido>();
    lista=PedidoDB.obtenerPedido();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("ConsultarVentas.jsp").forward(request, response); 
    }
    private void mostrarasignaciones(HttpServletRequest request,HttpServletResponse response)
    throws ServletException, IOException{
    ArrayList<Nivel> lista=new ArrayList<Nivel>();
    ArrayList<Grado> lista2=new ArrayList<Grado>();
    ArrayList<Seccion> lista3=new ArrayList<Seccion>();
    ArrayList<Turno> lista4=new ArrayList<Turno>();
    ArrayList<Dias> lista5=new ArrayList<Dias>();
    ArrayList<Materia> lista6=new ArrayList<Materia>();
    ArrayList<Asignacion> lista7=new ArrayList<Asignacion>();
    ArrayList<Docentesh> lista8=new ArrayList<Docentesh>();
    lista=AsignacionesDB.obtenerNivel();
    lista2=AsignacionesDB.obtenerGrado();
    lista3=AsignacionesDB.obtenerSeccion();
    lista4=AsignacionesDB.obtenerTurno();
    lista5=AsignacionesDB.obtenerDias();
    lista6=AsignacionesDB.obtenerMateria();
    lista7=AsignacionesDB.obtenerAsignaci();
    lista8=DocentesDB.Listar_Docentes();
    request.setAttribute("lista", lista);
    request.setAttribute("lista2", lista2);
    request.setAttribute("lista3", lista3);
    request.setAttribute("lista4", lista4);
    request.setAttribute("lista5", lista5);
    request.setAttribute("lista6", lista6);
    request.setAttribute("lista7", lista7);
    request.setAttribute("lista8", lista8);
    request.setAttribute("mensi", request.getParameter("mensi") );
    request.getRequestDispatcher("Asignaciones.jsp").forward(request, response); 
    }
    
        private void mostrarnivgra(HttpServletRequest request,HttpServletResponse response)
    throws ServletException, IOException{
    ArrayList<Nivel> lista=new ArrayList<Nivel>();
    ArrayList<Grado> lista2=new ArrayList<Grado>();

    lista=AsignacionesDB.obtenerNivel();
    lista2=AsignacionesDB.obtenerGrado();
    request.setAttribute("lista", lista);
    request.setAttribute("lista2", lista2);

    request.getRequestDispatcher("SolicitudMatricula.jsp").forward(request, response); 
    }
        private void mostrarnivgra2(HttpServletRequest request,HttpServletResponse response)
    throws ServletException, IOException{
       ArrayList<Nivel> lista=new ArrayList<Nivel>();
    ArrayList<Grado> lista2=new ArrayList<Grado>();
    ArrayList<Seccion> lista3=new ArrayList<Seccion>();
    ArrayList<Turno> lista4=new ArrayList<Turno>();
    ArrayList<Dias> lista5=new ArrayList<Dias>();
    ArrayList<Materia> lista6=new ArrayList<Materia>();
    ArrayList<Asignacion> lista7=new ArrayList<Asignacion>();
    ArrayList<Docentesh> lista8=new ArrayList<Docentesh>();
    ArrayList<asignalucon> lista9=new ArrayList<asignalucon>();
     ArrayList<alumno> lista10=new ArrayList<alumno>();
    lista=AsignacionesDB.obtenerNivel();
    lista2=AsignacionesDB.obtenerGrado();
    lista3=AsignacionesDB.obtenerSeccion();
    lista4=AsignacionesDB.obtenerTurno();
    lista5=AsignacionesDB.obtenerDias();
    lista6=AsignacionesDB.obtenerMateria();
    lista7=AsignacionesDB.obtenerAsignaci();
    lista9=AsignaAluDB.Listar_AsignAlumnosh();
    lista10=fichainscriDB.Listar_Alumnos();
    request.setAttribute("lista", lista);
    request.setAttribute("lista2", lista2);
    request.setAttribute("lista3", lista3);
    request.setAttribute("lista4", lista4);
    request.setAttribute("lista5", lista5);
    request.setAttribute("lista6", lista6);
    request.setAttribute("lista7", lista7);
    request.setAttribute("lista8", lista8);
    request.setAttribute("lista9", lista9);
    request.setAttribute("lista10", lista10);
    request.setAttribute("mensi", request.getParameter("mensi") );
    request.getRequestDispatcher("asigcualum.jsp").forward(request, response); 
    }
    private void registrarPedido(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
    HttpSession sesion=request.getSession();
    Pedido v=new Pedido();
    v.setCliente(request.getParameter("txtCliente").toUpperCase());
    ArrayList<DetallePedido> detalle =(ArrayList<DetallePedido>) sesion.getAttribute("carrito");
    boolean rpta=PedidoDB.insertarPedido(v, detalle);
    Double total=Double.parseDouble(request.getParameter("total"));
    int pedid=PedidoDB.conPedidoSeguido();
    if(rpta){
    request.getSession().removeAttribute("carrito");
    response.sendRedirect("RegistrarVenta.jsp?sape=sape&totaleshs="+total+"&npedid="+pedid);
    
    }
    else{
    response.sendRedirect("mensaje.jsp?men=No se registro la venta");
    }
    }
       private void registrarSolicitudD(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
           SolicitudAdmi so=new SolicitudAdmi();

                   so.setNomalum(request.getParameter("txtNombre"));
                   so.setApepatalum(request.getParameter("txtApePat"));
                   so.setApematalum(request.getParameter("txtApeMat"));
                   so.setIdenalun(request.getParameter("txtIden"));
                   so.setEdad(Integer.parseInt(request.getParameter("edad")));
                   so.setNiv(Integer.parseInt(request.getParameter("cbNivel")));
                   so.setGra(Integer.parseInt(request.getParameter("cbGrado")));
                   so.setNomapod(request.getParameter("txtNombreApode"));
                   so.setApepatapod(request.getParameter("txtApePatApode"));
                   so.setApematapod(request.getParameter("txtApeMatApode"));
                   so.setIdenapod(request.getParameter("txtIdenApode"));
                   so.setCorreapod(request.getParameter("txtCorreoApode"));
                   so.setTelapod(Integer.parseInt(request.getParameter("txtTelfApode")));
                   so.setCelapod(Integer.parseInt(request.getParameter("txtCelApode")));
                   so.setDirapod(request.getParameter("txtDireApode"));
                   SolicitudAdmiDB.insertarSolicitudAdmi(so);
                  request.getRequestDispatcher("/ServletControlador?accion=MostratNiGra&soliadmi=soliadmi").forward(request, response);

    }
       
       
    private void anadirCarrito(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
    HttpSession sesion=request.getSession();
    ArrayList<DetallePedido> carrito;
     ArrayList<DetallePedido> carrito2;
    if(request.getParameter("id")!=null){
    carrito2=(ArrayList<DetallePedido>)sesion.getAttribute("carrito");
    request.getSession().removeAttribute("carrito");
    carrito=new ArrayList<DetallePedido>();
        for(int i=0;i<carrito2.size();i++){
    DetallePedido det=carrito2.get(i);
    if(det.getCodigoProducto()!=Integer.parseInt(request.getParameter("id"))){
       carrito.add(det); 
    }
    }
      String holi="eli";
     request.setAttribute("mensaje", holi);
    sesion.setAttribute("carrito", carrito);
    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
    }
    
    else{
    if(sesion.getAttribute("carrito")==null){
    carrito=new ArrayList<DetallePedido>();
    }
    else{
    carrito=(ArrayList<DetallePedido>)sesion.getAttribute("carrito");
    }
    Producto p=ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("txtCodigo")));
    DetallePedido d = new DetallePedido();
    
    d.setCodigoProducto(Integer.parseInt(request.getParameter("txtCodigo")));
    d.setProducto(p);
    d.setCantidad(Double.parseDouble(request.getParameter("txtCantidad")));
    double subTotal=p.getPrecio()*d.getCantidad();
    d.setDescuento(subTotal);
    int indice=-1;
    for(int i=0;i<carrito.size();i++){
    DetallePedido det=carrito.get(i);
    if(det.getCodigoProducto()==p.getCodigoProducto()){
        indice=i;
        break;
    }
    }
    if(indice==-1){
      String  holi="agre";
    request.setAttribute("mensaje", holi);
    carrito.add(d);
    sesion.setAttribute("carrito", carrito);
    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
    }else{
              String  holi="extra";
    request.setAttribute("mensaje", holi);
    request.getRequestDispatcher("AnadirCarrito.jsp?id="+p.getCodigoProducto()).forward(request, response);
    }
    }
    
    }
    
    private void actualizarProducto(HttpServletRequest request,HttpServletResponse response)
       throws ServletException,IOException{
    Producto p=new Producto();
    p.setCodigoProducto(Integer.parseInt(request.getParameter("txtCodigo")));
    p.setNombre(request.getParameter("txtNombre"));
    p.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
    p.setStockproducto(Integer.parseInt(request.getParameter("txtstpr")));
    p.setStockdisponible(Integer.parseInt(request.getParameter("txtstpr")));
    p.setStockcomprometido(0);
    ProductoDB.actualizarProducto(p);

    response.sendRedirect("RegistrarProducto.jsp?menso=modificar");
    
    }
            
    private void registrarProducto(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
    String pro=request.getParameter("txtNombre");
    Double pre=Double.parseDouble(request.getParameter("txtPrecio"));
    String img=request.getParameter("txtImagen");
    int stockp=Integer.parseInt(request.getParameter("txtstpr"));    
    Producto p=new Producto();
    p.setImagen(img);
    p.setNombre(pro);
    p.setPrecio(pre);
    p.setStockproducto(stockp);
    p.setStockdisponible(stockp);
    p.setStockcomprometido(0);
    ProductoDB.insertarProducto(p);
    request.getRequestDispatcher("/RegistrarProducto.jsp?menso=satisfactorio").forward(request, response);
    }    
            private void eliminaradmision(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int postuid = Integer.parseInt(request.getParameter("id"));
            SolicitudAdmiDB.Eliminar_Admisiones(postuid);
        
   request.getRequestDispatcher("/ServletControlador?accion=MostrarAdmisiones").forward(request, response);
    }
                        private void eliminarasigalu(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int idasi = Integer.parseInt(request.getParameter("idas"));
        int idalu = Integer.parseInt(request.getParameter("idalu"));
            AsignaAluDB.Eliminar_Asignalu(idasi,idalu);
        
   request.getRequestDispatcher("/ServletControlador?accion=muestranivsa&mensi=eliminado").forward(request, response);
    }
     private void eliminarusuario(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        String perfil = request.getParameter("perfil");
        
        usuarioDB.eliminarUsuarios(id,perfil);     
        request.setAttribute("aviso", "eliminar");
  request.getRequestDispatcher("/MantenimientoUsuario.jsp").forward(request, response);  
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
