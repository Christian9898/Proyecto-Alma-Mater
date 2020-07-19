
package Modelo;

import java.io.InputStream;

public class DatDocen {
    
    private int coddoc;
    private String destiem;
    private String fechaingre;
    private InputStream archivopdf;
    private byte[] archivopdf2;

    public DatDocen(int coddoc, String destiem, String fechaingre, InputStream archivopdf, byte[] archivopdf2) {
        this.coddoc = coddoc;
        this.destiem = destiem;
        this.fechaingre = fechaingre;
        this.archivopdf = archivopdf;
        this.archivopdf2 = archivopdf2;
    }

    public DatDocen() {
    }

    public int getCoddoc() {
        return coddoc;
    }

    public void setCoddoc(int coddoc) {
        this.coddoc = coddoc;
    }

    public String getDestiem() {
        return destiem;
    }

    public void setDestiem(String destiem) {
        this.destiem = destiem;
    }

    public String getFechaingre() {
        return fechaingre;
    }

    public void setFechaingre(String fechaingre) {
        this.fechaingre = fechaingre;
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
