
package Modelo;

public class Seccion {
     private int codigo;
    private String descseccion;

    public Seccion() {
    }

    public Seccion(int codigo, String descseccion) {
        this.codigo = codigo;
        this.descseccion = descseccion;
    }

    public String getDescseccion() {
        return descseccion;
    }

    public void setDescseccion(String descseccion) {
        this.descseccion = descseccion;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
}
