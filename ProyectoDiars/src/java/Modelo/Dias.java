
package Modelo;

public class Dias {
     private int codigo;
    private String descdias;

    public Dias(int codigo, String descdias) {
        this.codigo = codigo;
        this.descdias = descdias;
    }

    public Dias() {
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescdias() {
        return descdias;
    }

    public void setDescdias(String descdias) {
        this.descdias = descdias;
    }

}
