
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class DocentesDB {
    public static void insertarDocente(Docentesh d,DatDocen vo,GradoAcademico gr){
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarDocente(?,?,?,?,?,?,?,?,?,?,?)}");
    c1.registerOutParameter(1, Types.INTEGER);
    c1.setString(2,d.getNomdocen());
    c1.setString(3,d.getApepatdocen());
    c1.setString(4,d.getApematdocen());
    c1.setString(5,d.getIdentidocen());
    c1.setString(6,d.getFecnadocen());
    c1.setString(7,d.getNaciondocen());
    c1.setString(8,d.getEstdocente());
    c1.setInt(9,d.getCeldocen());
    c1.setString(10,d.getDirdocen());
    c1.setString(11,d.getEmaidocen());
    
    c1.executeUpdate(); 
    
    d.setCodocen(c1.getInt(1));           
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_insertarforaca2(?,?)}");
    c3.setInt(1,d.getCodocen());
    c3.setString(2,gr.getDesforaca());
    c3.executeUpdate();
    
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_tiemdedica(?,?,?,?)}");
    c2.setInt(1,d.getCodocen());
    c2.setString(2,vo.getDestiem());
    c2.setString(3,vo.getFechaingre());
    c2.setBlob(4,vo.getArchivopdf());
    c2.executeUpdate();
    }catch(Exception e){
    JOptionPane.showMessageDialog(null, e);}
}
    
       public static void modificarDocente(Docentesh d,DatDocen vo,GradoAcademico gr){

    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ModificarDocente(?,?,?,?,?,?,?,?,?,?,?)}");
    c1.setInt(1, d.getCodocen());
    c1.setString(2,d.getNomdocen());
    c1.setString(3,d.getApepatdocen());
    c1.setString(4,d.getApematdocen());
    c1.setString(5,d.getIdentidocen());
    c1.setString(6,d.getFecnadocen());
    c1.setString(7,d.getNaciondocen());
    c1.setString(8,d.getEstdocente());
    c1.setInt(9,d.getCeldocen());
    c1.setString(10,d.getDirdocen());
    c1.setString(11,d.getEmaidocen());
    
    c1.executeUpdate(); 
      
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_modificarforaca2(?,?)}");
    c3.setInt(1,d.getCodocen());
    c3.setString(2,gr.getDesforaca());
    c3.executeUpdate();
    
    if(vo.getArchivopdf()!=null){
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_modficartiemdedica(?,?,?,?)}");
    c2.setInt(1,d.getCodocen());
    c2.setString(2,vo.getDestiem());
    c2.setString(3,vo.getFechaingre());
    c2.setBlob(4,vo.getArchivopdf());
    c2.executeUpdate();
    }else{
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_modficartiemdedica2(?,?,?)}");
    c2.setInt(1,d.getCodocen());
    c2.setString(2,vo.getDestiem());
    c2.setString(3,vo.getFechaingre());
    c2.executeUpdate();
    }
    }catch(Exception e){
    JOptionPane.showMessageDialog(null, e);}
} 
    
    public static Docentesh ConDocen(int id) {
  Docentesh vo = new Docentesh();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_condocente2(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodocen(rs.getInt(1));
                vo.setNomdocen(rs.getString(2));
                vo.setApepatdocen(rs.getString(3));
                vo.setApematdocen(rs.getString(4));
                vo.setIdentidocen(rs.getString(5));
                vo.setFecnadocen(rs.getString(6));
                vo.setNaciondocen(rs.getString(7));
                vo.setEstdocente(rs.getString(8));
                vo.setCeldocen(rs.getInt(9));
                vo.setDirdocen(rs.getString(10));
                vo.setEmaidocen(rs.getString(11));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
    
      public static DatDocen DatosDocentes(int id) {
        DatDocen dt=new DatDocen();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_condatdocen(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();
            while(rs.next()){
            dt.setCoddoc(rs.getInt(1));
            dt.setDestiem(rs.getString(2));
            dt.setFechaingre(rs.getString(3));
            dt.setArchivopdf2(rs.getBytes(4));
            }
        } 
        catch (Exception ex) {} 
       return dt;
    }
    public static GradoAcademico ConGradoAca(int id) {
        GradoAcademico gr = new GradoAcademico();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_congracade(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();
            while(rs.next()){
            gr.setCodpostul(rs.getInt(1));
            gr.setDesforaca(rs.getString(2));
            }
        } 
        catch (Exception ex) {} 
       return gr;
    }
    
        public static ArrayList<Docentesh> Listar_Docentes() {
        ArrayList<Docentesh> list = new ArrayList<Docentesh>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_condocente()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Docentesh vo = new Docentesh();
                vo.setCodocen(rs.getInt(1));
                vo.setNomdocen(rs.getString(2));
                vo.setApepatdocen(rs.getString(3));
                vo.setApematdocen(rs.getString(4));
                vo.setIdentidocen(rs.getString(5));
                vo.setFecnadocen(rs.getString(6));
                vo.setDirdocen(rs.getString(7));
                vo.setEmaidocen(rs.getString(8));
                vo.setEstdocente(rs.getString(9));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
/*Metodo Eliminar*/
    public static void Eliminar_Docente(int id) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliDocente(?)}");
            c1.setInt(1, id);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }
}
