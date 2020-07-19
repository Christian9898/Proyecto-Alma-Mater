
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import javax.swing.JOptionPane;
import org.apache.commons.codec.digest.DigestUtils;

public class usuarioDB {
   public static boolean insertarUsuarios(Usuario po){
 boolean rpta=false;
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarUsuario(?,?,?,?,?,?,?)}");
    
    String pass_crypto;
    pass_crypto=DigestUtils.md5Hex(po.getClaveUsu());
    c1.setInt(1, po.getIdDooAlu());
    c1.setString(2, po.getNomUsu());
    c1.setString(3, po.getApepaUsu());
    c1.setString(4, po.getApemaUsu());
    c1.setString(5, po.getPerfil());
    c1.setString(6, po.getCodusu());
    c1.setString(7, pass_crypto);
    int i2=c1.executeUpdate(); 
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
   
   
                  
   public static Usuario Conusariosporperfil(int id,String perfil) {
  Usuario vo = new Usuario();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_muestrausuario(?,?)}");
            c1.setInt(1,id);
            c1.setString(2,perfil);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
    vo.setIdDooAlu(rs.getInt(1));
    vo.setNomUsu(rs.getString(2));
    vo.setApepaUsu(rs.getString(3));
    vo.setApemaUsu(rs.getString(4));
    vo.setPerfil(rs.getString(5));
    vo.setCodusu(rs.getString(6));
    vo.setClaveUsu(rs.getString(7));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
   
      public static boolean modificarUsuarios(Usuario po){
 boolean rpta=false;
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ModificarUsuario(?,?,?,?)}");  
    String pass_crypto;
    pass_crypto=DigestUtils.md5Hex(po.getClaveUsu());
    c1.setInt(1, po.getIdDooAlu());
    c1.setString(2, po.getPerfil());
    c1.setString(3, po.getCodusu());
    c1.setString(4, pass_crypto);
    int i2=c1.executeUpdate(); 
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
            public static boolean eliminarUsuarios(int id,String perfil){
 boolean rpta=false;
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_EliminarUsuario(?,?)}");  
    c1.setInt(1,id);
    c1.setString(2,perfil);
    int i2=c1.executeUpdate(); 
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
}
