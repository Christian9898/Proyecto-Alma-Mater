package Utils;
import java.sql.*;

public class Conexion {

    public static Connection getConexion(){
    Connection cn=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost/ProyectAlmaMater","root","");
        System.out.print("Conexion Satifactoria");
   
    }catch(Exception e){System.out.println("Error de Conexion:"+e);}
    return cn;
    }
    public static void main(String[] args) {
      Conexion.getConexion();
    }
    
}
