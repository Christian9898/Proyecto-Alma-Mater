
package Modelo;
public class Comprobante {
private int Codcomprobante;
private String fechAcomprobante;
private String mescomprobante;
private String fecMes;
private int monto;
private int CodOperario;
private String cargoOperario;
private String nomCompOperario;
private int CodAlu;
private String dniAlu;
private String nombreAlu;
private String apelpAlu;
private String apelmAlu;
private int Codrespon;
private String dnirespo;
private String nomcrespo;
private String apecrespo; 

    public Comprobante() {
    }

    public Comprobante(int Codcomprobante, String fechAcomprobante, String mescomprobante, String fecMes, int monto, int CodOperario, String cargoOperario, String nomCompOperario, int CodAlu, String dniAlu, String nombreAlu, String apelpAlu, String apelmAlu, int Codrespon, String dnirespo, String nomcrespo, String apecrespo) {
        this.Codcomprobante = Codcomprobante;
        this.fechAcomprobante = fechAcomprobante;
        this.mescomprobante = mescomprobante;
        this.fecMes = fecMes;
        this.monto = monto;
        this.CodOperario = CodOperario;
        this.cargoOperario = cargoOperario;
        this.nomCompOperario = nomCompOperario;
        this.CodAlu = CodAlu;
        this.dniAlu = dniAlu;
        this.nombreAlu = nombreAlu;
        this.apelpAlu = apelpAlu;
        this.apelmAlu = apelmAlu;
        this.Codrespon = Codrespon;
        this.dnirespo = dnirespo;
        this.nomcrespo = nomcrespo;
        this.apecrespo = apecrespo;
    }

    public String getApecrespo() {
        return apecrespo;
    }

    public void setApecrespo(String apecrespo) {
        this.apecrespo = apecrespo;
    }

    public int getCodcomprobante() {
        return Codcomprobante;
    }

    public void setCodcomprobante(int Codcomprobante) {
        this.Codcomprobante = Codcomprobante;
    }

    public String getFechAcomprobante() {
        return fechAcomprobante;
    }

    public void setFechAcomprobante(String fechAcomprobante) {
        this.fechAcomprobante = fechAcomprobante;
    }

    public String getMescomprobante() {
        return mescomprobante;
    }

    public void setMescomprobante(String mescomprobante) {
        this.mescomprobante = mescomprobante;
    }

    public String getFecMes() {
        return fecMes;
    }

    public void setFecMes(String fecMes) {
        this.fecMes = fecMes;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public int getCodOperario() {
        return CodOperario;
    }

    public void setCodOperario(int CodOperario) {
        this.CodOperario = CodOperario;
    }

    public String getCargoOperario() {
        return cargoOperario;
    }

    public void setCargoOperario(String cargoOperario) {
        this.cargoOperario = cargoOperario;
    }

    public String getNomCompOperario() {
        return nomCompOperario;
    }

    public void setNomCompOperario(String nomCompOperario) {
        this.nomCompOperario = nomCompOperario;
    }

    public int getCodAlu() {
        return CodAlu;
    }

    public void setCodAlu(int CodAlu) {
        this.CodAlu = CodAlu;
    }

    public String getDniAlu() {
        return dniAlu;
    }

    public void setDniAlu(String dniAlu) {
        this.dniAlu = dniAlu;
    }

    public String getNombreAlu() {
        return nombreAlu;
    }

    public void setNombreAlu(String nombreAlu) {
        this.nombreAlu = nombreAlu;
    }

    public String getApelpAlu() {
        return apelpAlu;
    }

    public void setApelpAlu(String apelpAlu) {
        this.apelpAlu = apelpAlu;
    }

    public String getApelmAlu() {
        return apelmAlu;
    }

    public void setApelmAlu(String apelmAlu) {
        this.apelmAlu = apelmAlu;
    }

    public int getCodrespon() {
        return Codrespon;
    }

    public void setCodrespon(int Codrespon) {
        this.Codrespon = Codrespon;
    }

    public String getDnirespo() {
        return dnirespo;
    }

    public void setDnirespo(String dnirespo) {
        this.dnirespo = dnirespo;
    }

    public String getNomcrespo() {
        return nomcrespo;
    }

    public void setNomcrespo(String nomcrespo) {
        this.nomcrespo = nomcrespo;
    }


    
}
