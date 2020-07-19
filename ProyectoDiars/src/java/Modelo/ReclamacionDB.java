
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class ReclamacionDB {
   
           public static void insertarReclamacion(Reclamo po){

    try{
    
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarReclamo(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    c1.registerOutParameter(1, Types.INTEGER);
    c1.setString(2, po.getNomb());
    c1.setString(3, po.getApepat());
    c1.setString(4, po.getApemat());
    c1.setString(5, po.getIden());
    c1.setInt(6, po.getEdad());
    c1.setString(7, po.getNombap());
    c1.setString(8, po.getApepatap());
    c1.setString(9, po.getApematap());
    c1.setString(10, po.getIdenap());
    c1.setString(11, po.getCorreoap());
    c1.setInt(12, po.getTelap());
    c1.setInt(13, po.getCelap());
    c1.setString(14, po.getDirecap());
    c1.setString(15, po.getBiencon());
    c1.setString(16, po.getDecsripcion());
    c1.setString(17, po.getTiporecla());
    c1.setString(18, po.getDetrecla());
    c1.setString(19, po.getPedirecla());
    
    c1.executeUpdate(); 

    }catch(Exception e){
    JOptionPane.showMessageDialog(null, e);}
} 
    
           
          public static ArrayList<Reclamo> Listar_Reclamos() {
        ArrayList<Reclamo> list = new ArrayList<Reclamo>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conreclama()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Reclamo po = new Reclamo();
    po.setIdreclam(rs.getInt(1));
    po.setNomb(rs.getString(2));
    po.setApepat(rs.getString(3));
    po.setApemat(rs.getString(4));
    po.setIden(rs.getString(5));
    po.setEdad(rs.getInt(6));
    po.setNombap(rs.getString(7));
    po.setApepatap(rs.getString(8));
    po.setApematap(rs.getString(9));
    po.setIdenap(rs.getString(10));
    po.setCorreoap(rs.getString(11));
    po.setTelap(rs.getInt(12));
    po.setCelap(rs.getInt(13));
    po.setDirecap(rs.getString(14));
    po.setBiencon(rs.getString(15));
    po.setDecsripcion(rs.getString(16));
    po.setTiporecla(rs.getString(17));
    po.setDetrecla(rs.getString(18));
    po.setPedirecla(rs.getString(19));
                list.add(po);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }         
}
