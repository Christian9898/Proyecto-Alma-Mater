package Modelo;

public class GradoAcademico {
    private int codpostul;
    private String desforaca;

    public GradoAcademico() {
    }

    public GradoAcademico(int codpostul, String desforaca) {
        this.codpostul = codpostul;
        this.desforaca = desforaca;
    }

    public String getDesforaca() {
        return desforaca;
    }

    public void setDesforaca(String desforaca) {
        this.desforaca = desforaca;
    }

    public int getCodpostul() {
        return codpostul;
    }

    public void setCodpostul(int codpostul) {
        this.codpostul = codpostul;
    }
    
    
}
