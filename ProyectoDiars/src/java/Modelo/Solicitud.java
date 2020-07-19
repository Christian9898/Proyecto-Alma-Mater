package Modelo;

import java.io.InputStream;
import java.sql.Timestamp;

public class Solicitud {

    /*Todo los atributos*/
    private int codSoli;
    private int codPostul;
    private Timestamp fechaSol;
    private InputStream archivopdf;
    private byte[] archivopdf2;

    public Solicitud(int codSoli, int codPostul, Timestamp fechaSol, byte[] archivopdf2) {
        this.codSoli = codSoli;
        this.codPostul = codPostul;
        this.fechaSol = fechaSol;
        this.archivopdf2 = archivopdf2;
    }

    public Solicitud() {
    }

    public int getCodSoli() {
        return codSoli;
    }

    public void setCodSoli(int codSoli) {
        this.codSoli = codSoli;
    }

    public int getCodPostul() {
        return codPostul;
    }

    public void setCodPostul(int codPostul) {
        this.codPostul = codPostul;
    }

    public Timestamp getFechaSol() {
        return fechaSol;
    }

    public void setFechaSol(Timestamp fechaSol) {
        this.fechaSol = fechaSol;
    }

    public InputStream getArchivopdf() {
        return archivopdf;
    }

    public void setArchivopdf(InputStream archivopdf) {
        this.archivopdf = archivopdf;
    }

    public byte[] getArchivopdf2() {
        return archivopdf2;
    }

    public void setArchivopdf2(byte[] archivopdf2) {
        this.archivopdf2 = archivopdf2;
    }


}
