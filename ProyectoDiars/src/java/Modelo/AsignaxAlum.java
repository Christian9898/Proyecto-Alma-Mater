
package Modelo;


public class AsignaxAlum {
    private int idasigna;
    private int idalu;
    private String nombre;
    private String apellpat;
    private String apellmat;
    private String ident;
    private int niv;
    private int gra;
    private String estado;

    public AsignaxAlum() {
    }

    public AsignaxAlum(int idasigna, int idalu, String nombre, String apellpat, String apellmat, String ident, int niv, int gra, String estado) {
        this.idasigna = idasigna;
        this.idalu = idalu;
        this.nombre = nombre;
        this.apellpat = apellpat;
        this.apellmat = apellmat;
        this.ident = ident;
        this.niv = niv;
        this.gra = gra;
        this.estado = estado;
    }



    public int getGra() {
        return gra;
    }

    public void setGra(int gra) {
        this.gra = gra;
    }

    public int getIdasigna() {
        return idasigna;
    }

    public void setIdasigna(int idasigna) {
        this.idasigna = idasigna;
    }

    public int getIdalu() {
        return idalu;
    }

    public void setIdalu(int idalu) {
        this.idalu = idalu;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellpat() {
        return apellpat;
    }

    public void setApellpat(String apellpat) {
        this.apellpat = apellpat;
    }

    public String getApellmat() {
        return apellmat;
    }

    public void setApellmat(String apellmat) {
        this.apellmat = apellmat;
    }

    public String getIdent() {
        return ident;
    }

    public void setIdent(String ident) {
        this.ident = ident;
    }

    public int getNiv() {
        return niv;
    }

    public void setNiv(int niv) {
        this.niv = niv;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
