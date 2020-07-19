
package Modelo;

public class Grado {
     private int codigo;
    private String descgrado;

    public Grado() {
    }

    public Grado(int codigo, String descgrado) {
        this.codigo = codigo;
        this.descgrado = descgrado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescgrado() {
        return descgrado;
    }

    public void setDescgrado(String descgrado) {
        this.descgrado = descgrado;
    }

    
    
}
