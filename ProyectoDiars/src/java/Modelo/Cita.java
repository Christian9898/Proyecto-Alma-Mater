
package Modelo;

public class Cita {
   private int codcita;
   private int codpo;
   private String nom;
   private String ema;
   private int telf;
   private String direc;
   private String fechini;
   private String fechfin;

    public Cita(int codcita, int codpo, String nom, String ema, int telf, String direc, String fechini, String fechfin) {
        this.codcita = codcita;
        this.codpo = codpo;
        this.nom = nom;
        this.ema = ema;
        this.telf = telf;
        this.direc = direc;
        this.fechini = fechini;
        this.fechfin = fechfin;
    }

    public Cita() {
    }

    public int getCodcita() {
        return codcita;
    }

    public void setCodcita(int codcita) {
        this.codcita = codcita;
    }

    public int getCodpo() {
        return codpo;
    }

    public void setCodpo(int codpo) {
        this.codpo = codpo;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEma() {
        return ema;
    }

    public void setEma(String ema) {
        this.ema = ema;
    }

    public int getTelf() {
        return telf;
    }

    public void setTelf(int telf) {
        this.telf = telf;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public String getFechini() {
        return fechini;
    }

    public void setFechini(String fechini) {
        this.fechini = fechini;
    }

    public String getFechfin() {
        return fechfin;
    }

    public void setFechfin(String fechfin) {
        this.fechfin = fechfin;
    }

}
