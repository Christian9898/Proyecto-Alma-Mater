
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AsignaAluDB {
            public static void insertarAsignacionAlu(Asigalu p){

    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_RegistrarAsigAlu(?,?,?,?,?,?,?,?)}");
    c4.setInt(1, p.getIdAsigna());
    c4.setInt(2,p.getIdAlu());
    c4.setInt(3,00);
    c4.setInt(4,00);
    c4.setInt(5,00);
    c4.setInt(6,00);
    c4.setInt(7,00);
    c4.setString(8,"Incompleto");

    c4.executeUpdate();

    }catch(Exception e){}

    }
            
            
         /*Metodo Modificar*/
    public static void Modificar_notalu(Asigalu c) {
       
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_modficarnotasalu(?,?,?,?,?,?,?,?)}");
             c1.setInt(1, c.getIdAsigna());
             c1.setInt(2, c.getIdAlu());
             c1.setInt(3, c.getExam1());
             c1.setInt(4, c.getExam2());
             c1.setInt(5, c.getExam3());
             c1.setInt(6, c.getExam4());
             int promf =(int)((c.getExam1()+c.getExam2()+c.getExam3()+c.getExam4())/4);
             c1.setInt(7,promf );
             String est = null;
             if(promf>=11){
            est="Aprobado";
             }else{
            est="Desaprobado";
             }
             c1.setString(8,est);
             c1.executeUpdate();
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
    }        
            
            
            
    public static ArrayList<Asigalu> Listar_alumnoasinotas(int cod) {
        ArrayList<Asigalu> list = new ArrayList<Asigalu>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_consnotasdeasig(?)}");
            c1.setInt(1,cod);
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                Asigalu a = new Asigalu();
                
    a.setIdAsigna(rs.getInt(1));
    a.setMateria(rs.getString(2));
    a.setGrado(rs.getString(3));
    a.setIdAlu(rs.getInt(4));
    a.setNombre(rs.getString(5));
    a.setExam1(rs.getInt(6));
    a.setExam2(rs.getInt(7));
    a.setExam3(rs.getInt(8));
    a.setExam4(rs.getInt(9));
    a.setPromf(rs.getInt(10));
    a.setEstado(rs.getString(11));
                list.add(a);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }  
            
            
            
            
    public static void modificarAsignacionAlu(Asigalu p){

    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_modficarasignalu(?,?)}");
    c4.setInt(1, p.getIdAsigna());
    c4.setInt(2,p.getIdAlu());
    c4.executeUpdate();

    }catch(Exception e){}

    }
            
                    public static ArrayList<asignalucon> Listar_AsignAlumnosh() {
        ArrayList<asignalucon> list = new ArrayList<asignalucon>();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_ConsultasAsigAlu()}");
            ResultSet rs=c1.executeQuery();
            while (rs.next()) {
                asignalucon a = new asignalucon();
    a.setCodasi(rs.getInt(1));
    a.setCodalu(rs.getInt(2));
    a.setCodniv(rs.getString(3));
    a.setCodgra(rs.getString(4));
    a.setCodsec(rs.getString(5));
    a.setCoddia(rs.getString(6));
    a.setCodmate(rs.getString(7));
    a.setCodtur(rs.getString(8));
    a.setHorain(rs.getString(9));
    a.setHorafin(rs.getString(10));
                list.add(a);
            }
        } 
        catch (Exception ex) {
        } 
       return list;
    }
                    
                    
                            public static AsignaxAlum conAsignaditoalum(int id,int id2) {
  AsignaxAlum vo = new AsignaxAlum();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_condAsignaditoalu(?,?)}");
            c1.setInt(1,id);
            c1.setInt(2,id2);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setIdasigna(rs.getInt(1));
                vo.setIdalu(rs.getInt(2));
                vo.setNombre(rs.getString(3));
                vo.setApellpat(rs.getString(4));
                vo.setApellmat(rs.getString(5));
                vo.setIdent(rs.getString(6));
                vo.setNiv(rs.getInt(7));
                vo.setGra(rs.getInt(8));
                vo.setEstado(rs.getString(9));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
            
       public static void Eliminar_Asignalu(int id,int id2) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliAsignaalumn(?,?)}");
            c1.setInt(1, id);
            c1.setInt(2, id2);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }
            
}
