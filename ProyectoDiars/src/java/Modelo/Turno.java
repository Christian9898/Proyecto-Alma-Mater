
package Modelo;


public class Turno {
     private int codigo;
    private String descturno;

    public Turno() {
    }

    public Turno(int codigo, String descturno) {
        this.codigo = codigo;
        this.descturno = descturno;
    }

    public String getDescturno() {
        return descturno;
    }

    public void setDescturno(String descturno) {
        this.descturno = descturno;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
}
