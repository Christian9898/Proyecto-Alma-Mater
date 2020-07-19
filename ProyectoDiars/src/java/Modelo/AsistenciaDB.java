
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;

public class AsistenciaDB {
        public static boolean insertarAsitencia(Asistencia p){
    boolean rpta=false;
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_RegistrarAsis(?,?,?,?,?,?,?,?,?)}");
    c4.registerOutParameter(1, Types.INTEGER);
    c4.setInt(2,p.getCoddocen());
    c4.setString(3,p.getFecdocen());
    c4.setString(4,p.getMesdocen());
    c4.setString(5,p.getAniodocen());
    c4.setString(6,p.getHordocen());
    c4.setString(7,"00:00:00");
    c4.setString(8,p.getEstadocen());
    int com;
    if(p.getEstadocen().equals("ASISTIO")){
    com=1;
    }else{
    com=0;
    }
    c4.setInt(9,com);
    int i=c4.executeUpdate();
    if(i==1){
    rpta=true;
    }
    else{
    rpta=false;
    }
    }catch(Exception e){}
    return rpta;
    }
                public static boolean modificarAsitencia(Asistencia p){
    boolean rpta=false;
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_actualizaAsite(?,?,?,?,?)}");
    c4.setInt(1,p.getCoddocen());
    c4.setString(2,p.getFecdocen());
    c4.setString(3,p.getMesdocen());
    c4.setString(4,p.getAniodocen());
    c4.setString(5,p.getHordocen());
    int i=c4.executeUpdate();
    if(i==1){
    rpta=true;
    }
    else{
    rpta=false;
    }
    }catch(Exception e){}
    return rpta;
    }
                    public static ArrayList<Asistencia> Listar_Asistencias(int cod) {
        ArrayList<Asistencia> list = new ArrayList<Asistencia>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ConAsistencia(?)}");
            c1.setInt(1,cod);
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Asistencia vo = new Asistencia();
                vo.setCodasis(rs.getInt(1));
                vo.setCoddocen(rs.getInt(2));
                vo.setFecdocen(rs.getString(3));
                vo.setHordocen(rs.getString(4));
                vo.setHordocensa(rs.getString(5));
                vo.setEstadocen(rs.getString(6));
                vo.setComunicado(rs.getInt(7));
                list.add(vo);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
        
}
