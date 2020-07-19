package Modelo;

import Utils.Conexion;
import java.sql.*;
import java.util.ArrayList;

public class DetallePedidoDB {
    public static ArrayList<DetallePedido> obtenerDetalleVenta(int num){
    ArrayList<DetallePedido> lista=new ArrayList<DetallePedido>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_detallePedido(?)}");
    c1.setInt(1, num);
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    DetallePedido v=new DetallePedido();
    v.setCodigoVenta(rs.getInt(1));
    v.setCodigoProducto(rs.getInt(2));
    v.setCantidad(rs.getDouble(3));
    v.setDescuento(rs.getDouble(4));
    v.setPrecio(rs.getDouble(5));
    lista.add(v);
    }
    }catch(Exception e){System.out.println(e);}
    return lista;
    }
}
