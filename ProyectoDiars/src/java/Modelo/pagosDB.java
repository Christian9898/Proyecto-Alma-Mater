
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class pagosDB {
        /*Metodo listar*/
    public static ArrayList<fecpagos> Listar_FecPagos() {
        ArrayList<fecpagos> list = new ArrayList<fecpagos>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_fechpago()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                fecpagos vo = new fecpagos();
                vo.setMes(rs.getString(1));
                vo.setCod(rs.getInt(2));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
        /*Metodo listar*/
    public static int conComprobanseguido() {
        int canti=0;
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_CantComproban()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                canti=(rs.getInt(1));
            }
        } 
        catch (Exception ex) {
        } 
       return canti;
    }
    
    
       public static void insertarPagos(Comprobante po){
    try{
        
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_RegistrarResponsable(?,?,?,?)}");
    c2.registerOutParameter(1, Types.INTEGER);
    c2.setString(2, po.getDnirespo());
    c2.setString(3, po.getNomcrespo());
    c2.setString(4, po.getApecrespo());
    c2.executeUpdate(); 
    
    po.setCodrespon(c2.getInt(1));
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarComprobante(?,?,?,?,?,?,?,?)}");
    c1.registerOutParameter(1, Types.INTEGER);
    c1.setString(2, po.getFechAcomprobante());
    c1.setString(3, po.getFecMes());
    c1.setInt(4, po.getMonto());
    c1.setInt(5, po.getCodOperario());
    c1.setString(6, po.getCargoOperario());
    c1.setInt(7, po.getCodAlu());
    c1.setInt(8, po.getCodrespon());
    c1.executeUpdate(); 
    
    }catch(Exception e){
    JOptionPane.showMessageDialog(null, e);}
} 
        public static ArrayList<Comprobante> Listar_Comprobantes() {
        ArrayList<Comprobante> list = new ArrayList<Comprobante>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ConsultasPagos()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Comprobante vo = new Comprobante();
                vo.setCodcomprobante(rs.getInt(1));
                vo.setFechAcomprobante(rs.getString(2));
                vo.setFecMes(rs.getString(3));
                vo.setMonto(rs.getInt(4));
                vo.setNomCompOperario(rs.getString(5));
                vo.setCargoOperario(rs.getString(6));
                vo.setNombreAlu(rs.getString(7));
                vo.setNomcrespo(rs.getString(8));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
}
