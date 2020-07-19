
package Modelo;

import java.sql.Timestamp;

public class SolicitudxPostul {
    private int codsoli;
    private String nomspostu;
    private String apelsstu;
    private String email;
    private int cel;
    private Timestamp fechaSol;
    private byte[] archivopdf2;

    public SolicitudxPostul(int codsoli, String nomspostu, String apelsstu, String email, int cel, Timestamp fechaSol, byte[] archivopdf2) {
        this.codsoli = codsoli;
        this.nomspostu = nomspostu;
        this.apelsstu = apelsstu;
        this.email = email;
        this.cel = cel;
        this.fechaSol = fechaSol;
        this.archivopdf2 = archivopdf2;
    }

    public SolicitudxPostul() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCel() {
        return cel;
    }

    public void setCel(int cel) {
        this.cel = cel;
    }

    public int getCodsoli() {
        return codsoli;
    }

    public void setCodsoli(int codsoli) {
        this.codsoli = codsoli;
    }

    public String getNomspostu() {
        return nomspostu;
    }

    public void setNomspostu(String nomspostu) {
        this.nomspostu = nomspostu;
    }

    public String getApelsstu() {
        return apelsstu;
    }

    public void setApelsstu(String apelsstu) {
        this.apelsstu = apelsstu;
    }

    public Timestamp getFechaSol() {
        return fechaSol;
    }

    public void setFechaSol(Timestamp fechaSol) {
        this.fechaSol = fechaSol;
    }

    public byte[] getArchivopdf2() {
        return archivopdf2;
    }

    public void setArchivopdf2(byte[] archivopdf2) {
        this.archivopdf2 = archivopdf2;
    }


    
}
