package Modelo;
import java.sql.*;
import java.util.ArrayList;
import Utils.Conexion;
import javax.swing.JOptionPane;

public class PedidoDB {
    
    public static boolean insertarPedido(Pedido varventa, ArrayList<DetallePedido> d){
 boolean rpta=false;
try{
Connection cn=Conexion.getConexion();
CallableStatement c1=cn.prepareCall("{call sp_RegistrarPedido(?,?)}");
c1.registerOutParameter(1, Types.INTEGER);
c1.setString(2, varventa.getCliente());
int i=c1.executeUpdate();
int i2=0;
varventa.setCodigoVenta(c1.getInt(1));
CallableStatement c2=cn.prepareCall("{call sp_RegistrarDetalle(?,?,?,?)}");
for(DetallePedido aux: d){
c2.setInt(1,varventa.getCodigoVenta());
c2.setInt(2, aux.getCodigoProducto());
c2.setDouble(3, aux.getCantidad());
c2.setDouble(4, aux.getDescuento());
i2=c2.executeUpdate();

}
if(i2==1){
rpta=true;
}
}catch (Exception e){
JOptionPane.showMessageDialog(null, e);}
return rpta;
    
}
    public static ArrayList<Pedido> obtenerPedido(){
    ArrayList<Pedido> lista=new ArrayList<Pedido>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_pedido()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Pedido v=new Pedido(rs.getInt(1),rs.getString(2),rs.getTimestamp(3));
    lista.add(v);
    }
    }catch(Exception e){System.out.println("pedido--->"+e); 
    }
    return lista;
    }
        public static int conPedidoSeguido() {
        int canti=0;
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_CantPedido()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                canti=(rs.getInt(1));
            }
        } 
        catch (Exception ex) {
        } 
       return canti;
    }
}