package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SolicitudDB {
    
    /*Metodo listar*/
    public static ArrayList<SolicitudxPostul> Listar_Solicitudes() {
        ArrayList<SolicitudxPostul> list = new ArrayList<SolicitudxPostul>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_consolcitudes()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                SolicitudxPostul vo = new SolicitudxPostul();
                vo.setCodsoli(rs.getInt(1));
                vo.setNomspostu(rs.getString(2));
                vo.setApelsstu(rs.getString(3));
                vo.setFechaSol(rs.getTimestamp(4));
                vo.setCel(rs.getInt(5));
                vo.setEmail(rs.getString(6));
                vo.setArchivopdf2(rs.getBytes(7));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }

/*Metodo Eliminar*/
    public static void Eliminar_PdfVO(int id) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliSolicitud(?)}");
            c1.setInt(1, id);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }

}
