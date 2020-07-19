
package Modelo;

public class asignalucon {
    private int codasi;
    private int codalu;
    private String codniv;
    private String codgra;
    private String codsec;
    private String codtur;
    private String coddia;
    private String codmate;
    private String horain;
    private String horafin;

    public asignalucon() {
    }

    public asignalucon(int codasi, int codalu, String codniv, String codgra, String codsec, String codtur, String coddia, String codmate, String horain, String horafin) {
        this.codasi = codasi;
        this.codalu = codalu;
        this.codniv = codniv;
        this.codgra = codgra;
        this.codsec = codsec;
        this.codtur = codtur;
        this.coddia = coddia;
        this.codmate = codmate;
        this.horain = horain;
        this.horafin = horafin;
    }

    public int getCodasi() {
        return codasi;
    }

    public void setCodasi(int codasi) {
        this.codasi = codasi;
    }

    public int getCodalu() {
        return codalu;
    }

    public void setCodalu(int codalu) {
        this.codalu = codalu;
    }

    public String getCodniv() {
        return codniv;
    }

    public void setCodniv(String codniv) {
        this.codniv = codniv;
    }

    public String getCodgra() {
        return codgra;
    }

    public void setCodgra(String codgra) {
        this.codgra = codgra;
    }

    public String getCodsec() {
        return codsec;
    }

    public void setCodsec(String codsec) {
        this.codsec = codsec;
    }

    public String getCodtur() {
        return codtur;
    }

    public void setCodtur(String codtur) {
        this.codtur = codtur;
    }

    public String getCoddia() {
        return coddia;
    }

    public void setCoddia(String coddia) {
        this.coddia = coddia;
    }

    public String getCodmate() {
        return codmate;
    }

    public void setCodmate(String codmate) {
        this.codmate = codmate;
    }

    public String getHorain() {
        return horain;
    }

    public void setHorain(String horain) {
        this.horain = horain;
    }

    public String getHorafin() {
        return horafin;
    }

    public void setHorafin(String horafin) {
        this.horafin = horafin;
    }

}
