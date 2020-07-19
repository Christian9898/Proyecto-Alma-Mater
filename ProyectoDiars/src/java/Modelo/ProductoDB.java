package Modelo;
import java.sql.*;
import java.util.ArrayList;
import Utils.Conexion;

public class ProductoDB {
    
    public static ArrayList<Producto> obtenerProducto(){
    ArrayList<Producto> lista=new ArrayList<Producto>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call listarproductos()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Producto p=new Producto(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4),rs.getInt(5));
    lista.add(p);
    }
    }catch(Exception e){}
    return lista;
    }
    
    public static Producto obtenerProducto(int codigo){
    Producto p=null;
    try{
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_ProductoCod(?)}");
    c2.setInt(1,codigo);
    ResultSet rs=c2.executeQuery();
    while(rs.next()){
    p=new Producto(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4),rs.getInt(5));
    }
    }catch(Exception e){}
    return p;
    }
        public static void eliminarProducto(int codigo){
    try{
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_ElimiProductoCod(?)}");
    c2.setInt(1,codigo);
    c2.executeQuery();
    }catch(Exception e){}
    }
    
    public static void actualizarProducto(Producto varproducto){
    try{
        CallableStatement  c3=Conexion.getConexion().prepareCall("{call sp_actualizarPro(?,?,?,?,?,?)}");
    c3.setInt(1,varproducto.getCodigoProducto());
    c3.setString(2,varproducto.getNombre());
    c3.setDouble(3,varproducto.getPrecio());
    c3.setInt(4,varproducto.getStockproducto());
    c3.setInt(5,varproducto.getStockdisponible());
    c3.setInt(6,varproducto.getStockcomprometido());
    c3.executeUpdate();
    }catch(Exception e){}
    }
    
    public static void insertarProducto(Producto p){
   
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_insertarPro(?,?,?,?,?,?)}");
    c4.setString(1,p.getNombre());
    c4.setDouble(2,p.getPrecio());
    c4.setString(3,p.getImagen());
    c4.setInt(4,p.getStockproducto());
    c4.setInt(5,p.getStockdisponible());
    /*este toma el valor del primero siempre*/
    c4.setInt(6,p.getStockcomprometido());
    /*este siempre inicia en cero cuando se registra*/
    c4.executeUpdate();
    }catch(Exception ex){
     System.out.println(ex.getMessage());
    }
}
}
