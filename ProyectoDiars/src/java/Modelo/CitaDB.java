
package Modelo;

import Utils.Conexion;
import java.sql.*;
import java.util.ArrayList;

public class CitaDB {
    
     public static void InsertarCita(Cita c){
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarCita(?,?,?,?,?,?,?)}");
    c1.setInt(1, c.getCodpo());
    c1.setString(2, c.getNom());
    c1.setString(3, c.getEma());
    c1.setInt(4, c.getTelf());
    c1.setString(5, c.getDirec());
    c1.setString(6, c.getFechini());
    c1.setString(7, c.getFechfin());
    c1.executeUpdate(); 
    
     } catch(Exception e){}
     }
     
         public static ArrayList<Cita> Listar_Citas() {
        ArrayList<Cita> list = new ArrayList<Cita>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_concita()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Cita vo = new Cita();
                vo.setCodcita(rs.getInt(1));
                vo.setNom(rs.getString(2));
                vo.setEma(rs.getString(3));
                vo.setFechini(rs.getString(4));
                vo.setFechfin(rs.getString(5));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
         
    public static void Eliminar_Cita(int id) {
                try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_elicita(?)}");
            c1.setInt(1, id);
            c1.executeQuery();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
    } 
       
     /*Metodo Modificar*/
    public static void Modificar_Cita(Cita c) {
       
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_modificita(?,?,?)}");
             c1.setInt(1, c.getCodcita());
             c1.setString(2, c.getFechini());
             c1.setString(3, c.getFechfin());
             c1.executeUpdate();
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
    }
    
}
