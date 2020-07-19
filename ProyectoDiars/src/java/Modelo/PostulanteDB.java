package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.Types;
import javax.swing.JOptionPane;

public class PostulanteDB {
  public static boolean insertarPostulante(Solicitud vo,Postulante po,GradoAcademico gr){
 boolean rpta=false;
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_RegistrarPostulante(?,?,?,?,?,?,?,?,?)}");
    c1.registerOutParameter(1, Types.INTEGER);
    c1.setString(2, po.getNompostul());
    c1.setString(3, po.getApepatpostul());
    c1.setString(4, po.getApematpostul());
    c1.setString(5, po.getFecnapostul());
    c1.setString(6, po.getNacippostul());
    c1.setInt(7, po.getCelpostul());
    c1.setString(8, po.getDirpostul());
    c1.setString(9, po.getEmaipostul());
    c1.executeUpdate(); 
    int i2=0;
    po.setCodpostul(c1.getInt(1));      
          
    CallableStatement c3=Conexion.getConexion().prepareCall("{call sp_insertarforaca(?,?)}");
    c3.setInt(1,po.getCodpostul());
    c3.setString(2,gr.getDesforaca());
    c3.executeUpdate();
    
    CallableStatement c2=Conexion.getConexion().prepareCall("{call sp_insertarSol(?,?)}");
    c2.setInt(1,po.getCodpostul());
    c2.setBlob(2,vo.getArchivopdf());
    i2=c2.executeUpdate();
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
