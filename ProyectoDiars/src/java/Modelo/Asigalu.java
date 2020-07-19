
package Modelo;

public class Asigalu {
   private int  idAsigna ;
private int idAlu; 
private int exam1;
private int exam2;
private int exam3;
private int exam4; 
private int promf; 
private String estado; 
private String nombre;
private String materia;
private String grado;

    public Asigalu() {
    }


    public Asigalu(int idAsigna, int idAlu, int exam1, int exam2, int exam3, int exam4, int promf, String estado, String nombre, String materia, String grado) {
        this.idAsigna = idAsigna;
        this.idAlu = idAlu;
        this.exam1 = exam1;
        this.exam2 = exam2;
        this.exam3 = exam3;
        this.exam4 = exam4;
        this.promf = promf;
        this.estado = estado;
        this.nombre = nombre;
        this.materia = materia;
        this.grado = grado;
    }

    public int getIdAsigna() {
        return idAsigna;
    }

    public void setIdAsigna(int idAsigna) {
        this.idAsigna = idAsigna;
    }

    public int getIdAlu() {
        return idAlu;
    }

    public void setIdAlu(int idAlu) {
        this.idAlu = idAlu;
    }

    public int getExam1() {
        return exam1;
    }

    public void setExam1(int exam1) {
        this.exam1 = exam1;
    }

    public int getExam2() {
        return exam2;
    }

    public void setExam2(int exam2) {
        this.exam2 = exam2;
    }

    public int getExam3() {
        return exam3;
    }

    public void setExam3(int exam3) {
        this.exam3 = exam3;
    }

    public int getExam4() {
        return exam4;
    }

    public void setExam4(int exam4) {
        this.exam4 = exam4;
    }

    public int getPromf() {
        return promf;
    }

    public void setPromf(int promf) {
        this.promf = promf;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    
    
}
