
package Modelo;


public class Asignacion {
    private int codasi;
    private int codoce;
    private int codniv;
    private int codgra;
    private int codsec;
    private int codtur;
    private int coddia;
    private int codmate;
    private String horain;
    private String horafin;

    public Asignacion() {
    }

    public Asignacion(int codasi, int codoce, int codniv, int codgra, int codsec, int codtur, int coddia, int codmate, String horain, String horafin) {
        this.codasi = codasi;
        this.codoce = codoce;
        this.codniv = codniv;
        this.codgra = codgra;
        this.codsec = codsec;
        this.codtur = codtur;
        this.coddia = coddia;
        this.codmate = codmate;
        this.horain = horain;
        this.horafin = horafin;
    }

    public String getHorafin() {
        return horafin;
    }

    public void setHorafin(String horafin) {
        this.horafin = horafin;
    }

    public String getHorain() {
        return horain;
    }

    public void setHorain(String horain) {
        this.horain = horain;
    }

    public int getCodasi() {
        return codasi;
    }

    public void setCodasi(int codasi) {
        this.codasi = codasi;
    }

    public int getCodoce() {
        return codoce;
    }

    public void setCodoce(int codoce) {
        this.codoce = codoce;
    }

    public int getCodniv() {
        return codniv;
    }

    public void setCodniv(int codniv) {
        this.codniv = codniv;
    }

    public int getCodgra() {
        return codgra;
    }

    public void setCodgra(int codgra) {
        this.codgra = codgra;
    }

    public int getCodsec() {
        return codsec;
    }

    public void setCodsec(int codsec) {
        this.codsec = codsec;
    }

    public int getCodtur() {
        return codtur;
    }

    public void setCodtur(int codtur) {
        this.codtur = codtur;
    }

    public int getCoddia() {
        return coddia;
    }

    public void setCoddia(int coddia) {
        this.coddia = coddia;
    }

    public int getCodmate() {
        return codmate;
    }

    public void setCodmate(int codmate) {
        this.codmate = codmate;
    }


    
}
