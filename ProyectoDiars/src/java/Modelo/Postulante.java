package Modelo;

public class Postulante {
    
    private int codpostul;
    private String nompostul;
    private String apepatpostul;
    private String apematpostul;
    private String fecnapostul;
    private String nacippostul;
    private int celpostul;
    private String dirpostul;
    private String emaipostul;

    public Postulante() {
    }

    public Postulante(int codpostul, String nompostul, String apepatpostul, String apematpostul, String fecnapostul, String nacippostul, int celpostul, String dirpostul, String emaipostul) {
        this.codpostul = codpostul;
        this.nompostul = nompostul;
        this.apepatpostul = apepatpostul;
        this.apematpostul = apematpostul;
        this.fecnapostul = fecnapostul;
        this.nacippostul = nacippostul;
        this.celpostul = celpostul;
        this.dirpostul = dirpostul;
        this.emaipostul = emaipostul;
    }




    public String getEmaipostul() {
        return emaipostul;
    }

    public void setEmaipostul(String emaipostul) {
        this.emaipostul = emaipostul;
    }

    public int getCodpostul() {
        return codpostul;
    }

    public void setCodpostul(int codpostul) {
        this.codpostul = codpostul;
    }

    public String getNompostul() {
        return nompostul;
    }

    public void setNompostul(String nompostul) {
        this.nompostul = nompostul;
    }

    public String getApepatpostul() {
        return apepatpostul;
    }

    public void setApepatpostul(String apepatpostul) {
        this.apepatpostul = apepatpostul;
    }

    public String getApematpostul() {
        return apematpostul;
    }

    public void setApematpostul(String apematpostul) {
        this.apematpostul = apematpostul;
    }

    public String getFecnapostul() {
        return fecnapostul;
    }

    public void setFecnapostul(String fecnapostul) {
        this.fecnapostul = fecnapostul;
    }
    public int getCelpostul() {
        return celpostul;
    }

    public void setCelpostul(int celpostul) {
        this.celpostul = celpostul;
    }

    public String getDirpostul() {
        return dirpostul;
    }

    public void setDirpostul(String dirpostul) {
        this.dirpostul = dirpostul;
    }

    public String getNacippostul() {
        return nacippostul;
    }

    public void setNacippostul(String nacippostul) {
        this.nacippostul = nacippostul;
    }
    
}
