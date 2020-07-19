
package Modelo;

public class gradoinstru {
    private int codinstru;
    private String descinstru;

    public gradoinstru() {
    }

    public gradoinstru(int codinstru, String descinstru) {
        this.codinstru = codinstru;
        this.descinstru = descinstru;
    }

    public String getDescinstru() {
        return descinstru;
    }

    public void setDescinstru(String descinstru) {
        this.descinstru = descinstru;
    }

    public int getCodinstru() {
        return codinstru;
    }

    public void setCodinstru(int codinstru) {
        this.codinstru = codinstru;
    }
    
}
