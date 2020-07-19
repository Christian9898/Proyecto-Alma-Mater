
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;

public class SolicitudAdmiDB {
        
    public static void insertarSolicitudAdmi(SolicitudAdmi so){
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_RegiSoliAlumno(?,?,?,?,?,?,?,?)}");
    c4.registerOutParameter(1, Types.INTEGER);
    c4.setString(2,so.getNomalum());
    c4.setString(3,so.getApepatalum());
    c4.setString(4,so.getApematalum());
    c4.setString(5,so.getIdenalun());
    c4.setInt(6,so.getEdad());
    c4.setInt(7,so.getNiv());
    c4.setInt(8,so.getGra());
    c4.executeUpdate();
    
    so.setCodalum(c4.getInt(1)); 
    
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_RegiSoliApod(?,?,?,?,?,?,?,?,?)}");
    c3.setInt(1,so.getCodalum());
    c3.setString(2,so.getNomapod());
    c3.setString(3,so.getApepatapod());
    c3.setString(4,so.getApematapod());
    c3.setString(5,so.getIdenapod());
    c3.setString(6,so.getCorreapod());
    c3.setInt(7,so.getTelapod());
    c3.setInt(8,so.getCelapod());
    c3.setString(9,so.getDirapod());
                    
    c3.executeUpdate();
    }catch(Exception e){}
    }
        /*Metodo listar*/
    public static ArrayList<AdmiAluApod> Listar_Admisones() {
        ArrayList<AdmiAluApod> list = new ArrayList<AdmiAluApod>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_consolAdmisiones()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                AdmiAluApod vo = new AdmiAluApod();
                vo.setCodalum(rs.getInt(1));
                vo.setNombresalum(rs.getString(2));
                vo.setEdad(rs.getInt(3));
                vo.setNiv(rs.getString(4));
                vo.setGra(rs.getString(5));
                vo.setNombresapod(rs.getString(6));
                vo.setTelapod(rs.getInt(7));
                vo.setCelapod(rs.getInt(8));
                vo.setCorreapod(rs.getString(9));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
    
    /*Metodo Eliminar*/
    public static void Eliminar_Admisiones(int id) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliAdmisiones(?)}");
            c1.setInt(1, id);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }
    
}
