
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;


public class AsignacionesDB {
    
        public static boolean insertarAsignacion(Asignacion p){
    boolean rpta=false;
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_RegistrarAsignacion(?,?,?,?,?,?,?,?,?,?)}");
    c4.registerOutParameter(1, Types.INTEGER);
    c4.setInt(2,p.getCodoce());
    c4.setInt(3,p.getCodniv());
    c4.setInt(4,p.getCodgra());
    c4.setInt(5,p.getCodsec());
    c4.setInt(6,p.getCoddia());
    c4.setInt(7,p.getCodmate());
    c4.setInt(8,p.getCodtur());
    c4.setString(9,p.getHorain());
    c4.setString(10,p.getHorafin());
    
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
        public static AsignaxDocen conAsignadito(int id) {
  AsignaxDocen vo = new AsignaxDocen();
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_condAsignadito(?)}");
            c1.setInt(1,id);
            ResultSet rs=c1.executeQuery();    
            while(rs.next()){
                vo.setCodasi(rs.getInt(1));
                vo.setCodoce(rs.getInt(2));
                vo.setCodniv(rs.getInt(3));
                vo.setCodgra(rs.getInt(4));
                vo.setCodsec(rs.getInt(5));
                vo.setCoddia(rs.getInt(6));
                vo.setCodmate(rs.getInt(7));
                vo.setCodtur(rs.getInt(8));
                vo.setHorain(rs.getString(9));
                vo.setHorafin(rs.getString(10));
                vo.setNomdocen(rs.getString(11));
                vo.setApepatdocen(rs.getString(12));
                vo.setApematdocen(rs.getString(13));
            }
        } 
        catch (Exception ex) {} 
        return vo;
    }
    public static boolean modificarAsignacion(Asignacion p){
    boolean rpta=false;
    try{
    CallableStatement c4=Conexion.getConexion().prepareCall("{call sp_ModificarAsignacion(?,?,?,?,?,?,?,?,?,?)}");
    c4.setInt(1,p.getCodasi());
    c4.setInt(2,p.getCodoce());
    c4.setInt(3,p.getCodniv());
    c4.setInt(4,p.getCodgra());
    c4.setInt(5,p.getCodsec());
    c4.setInt(6,p.getCoddia());
    c4.setInt(7,p.getCodmate());
    c4.setInt(8,p.getCodtur());
    c4.setString(9,p.getHorain());
    c4.setString(10,p.getHorafin());
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
    
    public static ArrayList<Asignacion> obtenerAsignaci(){
    ArrayList<Asignacion> lista6=new ArrayList<Asignacion>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conAsignaciones()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Asignacion a=new Asignacion();
    a.setCodasi(rs.getInt(1));
    a.setCodoce(rs.getInt(2));
    a.setCodniv(rs.getInt(3));
    a.setCodgra(rs.getInt(4));
    a.setCodsec(rs.getInt(5));
    a.setCoddia(rs.getInt(6));
    a.setCodmate(rs.getInt(7));
    a.setCodtur(rs.getInt(8));
    a.setHorain(rs.getString(9));
    a.setHorafin(rs.getString(10));
    lista6.add(a);
    }
    }catch(Exception e){System.out.println("asignacion--->"+e); 
    }
    return lista6;
    }
   public static ArrayList<Nivel> obtenerNivel(){
    ArrayList<Nivel> lista=new ArrayList<Nivel>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conNivel()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Nivel n=new Nivel();
    n.setCodigo(rs.getInt(1));
    n.setDescnivel(rs.getString(2));
    lista.add(n);
    }
    }catch(Exception e){System.out.println("nivel--->"+e); 
    }
    return lista;
    }
      public static ArrayList<Grado> obtenerGrado(){
    ArrayList<Grado> lista1=new ArrayList<Grado>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conGrado()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Grado g=new Grado();
    g.setCodigo(rs.getInt(1));
    g.setDescgrado(rs.getString(2));
    lista1.add(g);
    }
    }catch(Exception e){System.out.println("grado--->"+e); 
    }
    return lista1;
    }
         public static ArrayList<Seccion> obtenerSeccion(){
    ArrayList<Seccion> lista2=new ArrayList<Seccion>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conSeccion()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Seccion s=new Seccion();
    s.setCodigo(rs.getInt(1));
    s.setDescseccion(rs.getString(2));
    lista2.add(s);
    }
    }catch(Exception e){System.out.println("seccion--->"+e); 
    }
    return lista2;
    }
    public static ArrayList<Turno> obtenerTurno(){
    ArrayList<Turno> lista3=new ArrayList<Turno>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conTurno()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Turno t=new Turno();
    t.setCodigo(rs.getInt(1));
    t.setDescturno(rs.getString(2));
    lista3.add(t);
    }
    }catch(Exception e){System.out.println("turno--->"+e); 
    }
    return lista3;
    }
    public static ArrayList<Dias> obtenerDias(){
    ArrayList<Dias> lista4=new ArrayList<Dias>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conDias()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Dias d=new Dias();
    d.setCodigo(rs.getInt(1));
    d.setDescdias(rs.getString(2));
    lista4.add(d);
    }
    }catch(Exception e){System.out.println("dias--->"+e); 
    }
    return lista4;
    }
    
    public static ArrayList<Materia> obtenerMateria(){
    ArrayList<Materia> lista5=new ArrayList<Materia>();
    try{
    CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_conMateria()}");
    ResultSet rs=c1.executeQuery();
    while(rs.next()){
    Materia m=new Materia();
    m.setCodigo(rs.getInt(1));
    m.setDescmateria(rs.getString(2));
    lista5.add(m);
    }
    }catch(Exception e){System.out.println("materia--->"+e); 
    }
    return lista5;
    }
    
    /*Metodo Eliminar*/
    public static void Eliminar_Asignacion(int id) {
      
        try {
            CallableStatement c1=Conexion.getConexion().prepareCall("{call sp_eliAsignacion(?)}");
            c1.setInt(1, id);
            c1.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
        
        
    }
    
}
