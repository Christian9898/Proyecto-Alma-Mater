package Modelo;

public class Usuario {
    private int idDooAlu;
    private String nomUsu;
    private String apepaUsu;
    private String apemaUsu;
    private String perfil;
    private String codusu;
    private String claveUsu;

    public Usuario() {
    }

    public Usuario(int idDooAlu, String nomUsu, String apepaUsu, String apemaUsu, String perfil, String codusu, String claveUsu) {
        this.idDooAlu = idDooAlu;
        this.nomUsu = nomUsu;
        this.apepaUsu = apepaUsu;
        this.apemaUsu = apemaUsu;
        this.perfil = perfil;
        this.codusu = codusu;
        this.claveUsu = claveUsu;
    }


    public int getIdDooAlu() {
        return idDooAlu;
    }

    public void setIdDooAlu(int idDooAlu) {
        this.idDooAlu = idDooAlu;
    }

    public String getNomUsu() {
        return nomUsu;
    }

    public void setNomUsu(String nomUsu) {
        this.nomUsu = nomUsu;
    }

    public String getApepaUsu() {
        return apepaUsu;
    }

    public void setApepaUsu(String apepaUsu) {
        this.apepaUsu = apepaUsu;
    }

    public String getApemaUsu() {
        return apemaUsu;
    }

    public void setApemaUsu(String apemaUsu) {
        this.apemaUsu = apemaUsu;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getCodusu() {
        return codusu;
    }

    public void setCodusu(String codusu) {
        this.codusu = codusu;
    }

    public String getClaveUsu() {
        return claveUsu;
    }

    public void setClaveUsu(String claveUsu) {
        this.claveUsu = claveUsu;
    }

    
}
