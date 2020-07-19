
package Modelo;

public class Materia {
     private int codigo;
    private String descmateria;

    public Materia() {
    }

    public Materia(int codigo, String descmateria) {
        this.codigo = codigo;
        this.descmateria = descmateria;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescmateria() {
        return descmateria;
    }

    public void setDescmateria(String descmateria) {
        this.descmateria = descmateria;
    }


}
