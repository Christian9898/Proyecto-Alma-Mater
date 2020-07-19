
package Modelo;

public class fichainscrip {
    private int codficha;
    private int codpapa;
    private int codmama;
    private int telcono;
    private int celcono;
    private String parentescono;
    private String observacion;

    public fichainscrip() {
    }

    public fichainscrip(int codficha, int codpapa, int codmama, int telcono, int celcono, String parentescono, String observacion) {
        this.codficha = codficha;
        this.codpapa = codpapa;
        this.codmama = codmama;
        this.telcono = telcono;
        this.celcono = celcono;
        this.parentescono = parentescono;
        this.observacion = observacion;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public int getCodficha() {
        return codficha;
    }

    public void setCodficha(int codficha) {
        this.codficha = codficha;
    }

    public int getCodpapa() {
        return codpapa;
    }

    public void setCodpapa(int codpapa) {
        this.codpapa = codpapa;
    }

    public int getCodmama() {
        return codmama;
    }

    public void setCodmama(int codmama) {
        this.codmama = codmama;
    }

    public int getTelcono() {
        return telcono;
    }

    public void setTelcono(int telcono) {
        this.telcono = telcono;
    }

    public int getCelcono() {
        return celcono;
    }

    public void setCelcono(int celcono) {
        this.celcono = celcono;
    }

    public String getParentescono() {
        return parentescono;
    }

    public void setParentescono(String parentescono) {
        this.parentescono = parentescono;
    }
    
}
