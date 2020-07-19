
package Modelo;


public class Nivel {
    private int codigo;
    private String descnivel;

    public Nivel() {
    }

    public Nivel(int codigo, String descnivel) {
        this.codigo = codigo;
        this.descnivel = descnivel;
    }

    public String getDescnivel() {
        return descnivel;
    }

    public void setDescnivel(String descnivel) {
        this.descnivel = descnivel;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    
}
