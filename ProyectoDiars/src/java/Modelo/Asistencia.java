
package Modelo;

public class Asistencia {
  private int codasis;
  private int coddocen;
  private String fecdocen;
  private String mesdocen;
  private String aniodocen;
  private String hordocen;
  private String hordocensa;
  private String estadocen;
  private int comunicado;

    public Asistencia() {
    }

    public Asistencia(int codasis, int coddocen, String fecdocen, String mesdocen, String aniodocen, String hordocen, String hordocensa, String estadocen, int comunicado) {
        this.codasis = codasis;
        this.coddocen = coddocen;
        this.fecdocen = fecdocen;
        this.mesdocen = mesdocen;
        this.aniodocen = aniodocen;
        this.hordocen = hordocen;
        this.hordocensa = hordocensa;
        this.estadocen = estadocen;
        this.comunicado = comunicado;
    }



    public String getHordocensa() {
        return hordocensa;
    }

    public void setHordocensa(String hordocensa) {
        this.hordocensa = hordocensa;
    }

    public int getCodasis() {
        return codasis;
    }

    public void setCodasis(int codasis) {
        this.codasis = codasis;
    }

    public int getCoddocen() {
        return coddocen;
    }

    public void setCoddocen(int coddocen) {
        this.coddocen = coddocen;
    }

    public String getFecdocen() {
        return fecdocen;
    }

    public void setFecdocen(String fecdocen) {
        this.fecdocen = fecdocen;
    }

    public String getHordocen() {
        return hordocen;
    }

    public void setHordocen(String hordocen) {
        this.hordocen = hordocen;
    }

    public String getEstadocen() {
        return estadocen;
    }

    public void setEstadocen(String estadocen) {
        this.estadocen = estadocen;
    }

    public int getComunicado() {
        return comunicado;
    }

    public void setComunicado(int comunicado) {
        this.comunicado = comunicado;
    }

    public String getMesdocen() {
        return mesdocen;
    }

    public void setMesdocen(String mesdocen) {
        this.mesdocen = mesdocen;
    }

    public String getAniodocen() {
        return aniodocen;
    }

    public void setAniodocen(String aniodocen) {
        this.aniodocen = aniodocen;
    }

    
}
