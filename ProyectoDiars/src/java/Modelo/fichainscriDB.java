
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class fichainscriDB {
    
          public static ArrayList<gradoinstru> obtenerGradoInstru(){
    ArrayList<gradoinstru> lista=new ArrayList<gradoinstru>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conGradoInstrucci()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    gradoinstru g=new gradoinstru();
    g.setCodinstru(rs.getInt(1));
    g.setDescinstru(rs.getString(2));
    lista.add(g);
    }
    }catch(Exception e){System.out.println("gradoinstru--->"+e); 
    }
    return lista;
    
    }
       public static ArrayList<Nivel> obtenerNivel(){
    ArrayList<Nivel> lista2=new ArrayList<Nivel>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conNivel()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Nivel n=new Nivel();
    n.setCodigo(rs.getInt(1));
    n.setDescnivel(rs.getString(2));
    lista2.add(n);
    }
    }catch(Exception e){System.out.println("nivel--->"+e); 
    }
    return lista2;
    }
      public static ArrayList<Grado> obtenerGrado(){
    ArrayList<Grado> lista1=new ArrayList<Grado>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conGrado()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Grado g=new Grado();
    g.setCodigo(rs.getInt(1));
    g.setDescgrado(rs.getString(2));
    lista1.add(g);
    }
    }catch(Exception e){System.out.println("grado--->"+e); 
    }
    return lista1;
    }
    
     public static void insertarfichainscri(alumno po,mama gm,papa gr,fichainscrip f){
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarAlumno(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    c1.registerOutParameter(1, Types.INTEGER);
    c1.setString(2, po.getNomalu());
    c1.setString(3, po.getApepaalu());
    c1.setString(4, po.getApemaalu());
    c1.setString(5, po.getIdenalu());
    c1.setInt(6, po.getTelalu());
    c1.setString(7, po.getDiralu());
    c1.setString(8, po.getFecnalu());
    c1.setString(9, po.getGenalu());
    c1.setString(10, po.getSegualu());
    c1.setInt(11, po.getNivalu());
    c1.setInt(12, po.getGraalu());
    c1.setString(13,po.getEstado());
    c1.executeUpdate(); 
  
    po.setCodalu(c1.getInt(1));      
          
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_RegistrarMama(?,?,?,?,?,?,?,?,?,?,?,?)}");
    c3.setInt(1,po.getCodalu());
    c3.setString(2,gm.getNommama());
    c3.setString(3,gm.getApepamama());
    c3.setString(4,gm.getApemamama());
    c3.setString(5,gm.getIdenmama());
    c3.setInt(6,gm.getCelmama());
    c3.setString(7,gm.getOcumama());
    c3.setString(8,gm.getCorreomama());
    c3.setString(9,gm.getFecnamama());
    c3.setInt(10,gm.getCodgrainmama()); 
    c3.setString(11,gm.getVivemama()); 
    c3.setString(12,gm.getVivecamama()); 
    c3.executeUpdate();
    
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_RegistrarPapa(?,?,?,?,?,?,?,?,?,?,?,?)}");
    c2.setInt(1,po.getCodalu());
    c2.setString(2,gr.getNompapa());
    c2.setString(3,gr.getApepapapa());
    c2.setString(4,gr.getApemapapa());
    c2.setString(5,gr.getIdenpapa());
    c2.setInt(6,gr.getCelpapa());
    c2.setString(7,gr.getOcupapa());
    c2.setString(8,gr.getCorreopapa());
    c2.setString(9,gr.getFecnapapa());
    c2.setInt(10,gr.getCodgrainpapa()); 
    c2.setString(11,gr.getVivepapa()); 
    c2.setString(12,gr.getVivecapapa()); 
    c2.executeUpdate();
    
      
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_RegistrarFicha(?,?,?,?,?,?,?)}");
    c4.setInt(1,po.getCodalu());
    c4.setInt(2,po.getCodalu());
    c4.setInt(3,po.getCodalu());
    c4.setInt(4,f.getTelcono());
    c4.setInt(5,f.getCelcono());
    c4.setString(6,f.getParentescono());
    c4.setString(7,f.getObservacion());
    c4.executeUpdate();
    
    }catch(Exception e){}
}
     public static boolean modificarfichainscri(alumno po,mama gm,papa gr,fichainscrip f){
 boolean rpta=false;
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ModificarAlumno(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    c1.setInt(1,po.getCodalu());
    c1.setString(2, po.getNomalu());
    c1.setString(3, po.getApepaalu());
    c1.setString(4, po.getApemaalu());
    c1.setString(5, po.getIdenalu());
    c1.setInt(6, po.getTelalu());
    c1.setString(7, po.getDiralu());
    c1.setString(8, po.getFecnalu());
    c1.setString(9, po.getGenalu());
    c1.setString(10, po.getSegualu());
    c1.setInt(11, po.getNivalu());
    c1.setInt(12, po.getGraalu());
    c1.setString(13,po.getEstado());
    c1.executeUpdate(); 
    int i2=0;     
          
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_ModificarMama(?,?,?,?,?,?,?,?,?,?,?,?)}");
    c3.setInt(1,po.getCodalu());
    c3.setString(2,gm.getNommama());
    c3.setString(3,gm.getApepamama());
    c3.setString(4,gm.getApemamama());
    c3.setString(5,gm.getIdenmama());
    c3.setInt(6,gm.getCelmama());
    c3.setString(7,gm.getOcumama());
    c3.setString(8,gm.getCorreomama());
    c3.setString(9,gm.getFecnamama());
    c3.setInt(10,gm.getCodgrainmama()); 
    c3.setString(11,gm.getVivemama()); 
    c3.setString(12,gm.getVivecamama()); 
    c3.executeUpdate();
    
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_ModificarPapa(?,?,?,?,?,?,?,?,?,?,?,?)}");
    c2.setInt(1,po.getCodalu());
    c2.setString(2,gr.getNompapa());
    c2.setString(3,gr.getApepapapa());
    c2.setString(4,gr.getApemapapa());
    c2.setString(5,gr.getIdenpapa());
    c2.setInt(6,gr.getCelpapa());
    c2.setString(7,gr.getOcupapa());
    c2.setString(8,gr.getCorreopapa());
    c2.setString(9,gr.getFecnapapa());
    c2.setInt(10,gr.getCodgrainpapa()); 
    c2.setString(11,gr.getVivepapa()); 
    c2.setString(12,gr.getVivecapapa()); 
    c2.executeUpdate();
    
      
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_ModificarFicha(?,?,?,?,?,?,?)}");
    c4.setInt(1,po.getCodalu());
    c4.setInt(2,po.getCodalu());
    c4.setInt(3,po.getCodalu());
    c4.setInt(4,f.getTelcono());
    c4.setInt(5,f.getCelcono());
    c4.setString(6,f.getParentescono());
    c4.setString(7,f.getObservacion());
    i2=c4.executeUpdate();
    if(i2==1){
    rpta=true;
    }
    else{
    rpta=false;
    }
    }catch(Exception e){
    JOptionPane.showMessageDialog(null, e);}
    return rpta;
}
             public static ArrayList<alumno> Listar_Alumnos() {
        ArrayList<alumno> list = new ArrayList<alumno>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conAlumno()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                alumno vo = new alumno();
                vo.setCodalu(rs.getInt(1));
                vo.setNomalu(rs.getString(2));
                vo.setApepaalu(rs.getString(3));
                vo.setApemaalu(rs.getString(4));
                vo.setIdenalu(rs.getString(5));
                vo.setGenalu(rs.getString(6));
                vo.setNivalu(rs.getInt(7));
                vo.setGraalu(rs.getInt(8));
                vo.setEstado(rs.getString(9));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
             
              /*Metodo Eliminar*/
    public static void Eliminar_Ficha(int id) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliFichaAlu(?)}");
            c1.setInt(1, id);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }
             
                 public static alumno ConAlumno(int id) {
  alumno vo = new alumno();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conAlumnoF(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodalu(rs.getInt(1));
                vo.setNomalu(rs.getString(2));
                vo.setApepaalu(rs.getString(3));
                vo.setApemaalu(rs.getString(4));
                vo.setIdenalu(rs.getString(5));
                vo.setTelalu(rs.getInt(6));
                vo.setDiralu(rs.getString(7));
                vo.setFecnalu(rs.getString(8));
                vo.setGenalu(rs.getString(9));
                vo.setSegualu(rs.getString(10));
                vo.setNivalu(rs.getInt(11));
                vo.setGraalu(rs.getInt(12));
                vo.setEstado(rs.getString(13));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }

  public static papa ConPapa(int id) {
  papa vo = new papa();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conPapaF(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodpapa(rs.getInt(1));
                vo.setNompapa(rs.getString(2));
                vo.setApepapapa(rs.getString(3));
                vo.setApemapapa(rs.getString(4));
                vo.setIdenpapa(rs.getString(5));
                vo.setCelpapa(rs.getInt(6));
                vo.setOcupapa(rs.getString(7));
                vo.setCorreopapa(rs.getString(8));
                vo.setFecnapapa(rs.getString(9));
                vo.setCodgrainpapa(rs.getInt(10));
                vo.setVivepapa(rs.getString(11));
                vo.setVivecapapa(rs.getString(12));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
    public static mama ConMama(int id) {
  mama vo = new mama();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conMamaF(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodmama(rs.getInt(1));
                vo.setNommama(rs.getString(2));
                vo.setApepamama(rs.getString(3));
                vo.setApemamama(rs.getString(4));
                vo.setIdenmama(rs.getString(5));
                vo.setCelmama(rs.getInt(6));
                vo.setOcumama(rs.getString(7));
                vo.setCorreomama(rs.getString(8));
                vo.setFecnamama(rs.getString(9));
                vo.setCodgrainmama(rs.getInt(10));
                vo.setVivemama(rs.getString(11));
                vo.setVivecamama(rs.getString(12));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
  public static fichainscrip ConFicha(int id) {
  fichainscrip vo = new fichainscrip();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conFichaF(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodficha(rs.getInt(1));
                vo.setCodpapa(rs.getInt(2));
                vo.setCodmama(rs.getInt(3));
                vo.setTelcono(rs.getInt(4));
                vo.setCelcono(rs.getInt(5));
                vo.setParentescono(rs.getString(6));
                vo.setObservacion(rs.getString(7));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
    
    
    
}
