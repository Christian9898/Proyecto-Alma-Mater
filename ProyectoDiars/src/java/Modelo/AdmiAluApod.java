
package Modelo;

public class AdmiAluApod {
    private int codalum;
    private String nombresalum;
    private int edad;
    private String niv;
    private String gra;
    private String nombresapod;
    private String correapod;
    private int telapod;
    private int celapod;

    public AdmiAluApod() {
    }

    public AdmiAluApod(int codalum, String nombresalum, int edad, String niv, String gra, String nombresapod, String correapod, int telapod, int celapod) {
        this.codalum = codalum;
        this.nombresalum = nombresalum;
        this.edad = edad;
        this.niv = niv;
        this.gra = gra;
        this.nombresapod = nombresapod;
        this.correapod = correapod;
        this.telapod = telapod;
        this.celapod = celapod;
    }

    public int getCodalum() {
        return codalum;
    }

    public void setCodalum(int codalum) {
        this.codalum = codalum;
    }

    public String getNombresalum() {
        return nombresalum;
    }

    public void setNombresalum(String nombresalum) {
        this.nombresalum = nombresalum;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getNiv() {
        return niv;
    }

    public void setNiv(String niv) {
        this.niv = niv;
    }

    public String getGra() {
        return gra;
    }

    public void setGra(String gra) {
        this.gra = gra;
    }

    public String getNombresapod() {
        return nombresapod;
    }

    public void setNombresapod(String nombresapod) {
        this.nombresapod = nombresapod;
    }

    public String getCorreapod() {
        return correapod;
    }

    public void setCorreapod(String correapod) {
        this.correapod = correapod;
    }

    public int getTelapod() {
        return telapod;
    }

    public void setTelapod(int telapod) {
        this.telapod = telapod;
    }

    public int getCelapod() {
        return celapod;
    }

    public void setCelapod(int celapod) {
        this.celapod = celapod;
    }
    
    
}
