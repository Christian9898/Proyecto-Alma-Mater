
package Modelo;

public class fecpagos {
  
    private String mes;
    private int cod;

    public fecpagos() {
    }

    public fecpagos(String mes, int cod) {
        this.mes = mes;
        this.cod = cod;
    }


    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

 
    
}
