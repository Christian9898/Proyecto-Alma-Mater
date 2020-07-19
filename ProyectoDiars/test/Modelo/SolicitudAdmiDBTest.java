/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author JOSEP LEO
 */
public class SolicitudAdmiDBTest {
    
    public SolicitudAdmiDBTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of insertarSolicitudAdmi method, of class SolicitudAdmiDB.
     */
    @Test
    public void testInsertarSolicitudAdmi() {
        System.out.println("insertarSolicitudAdmi");
        SolicitudAdmi so = new SolicitudAdmi();
        boolean expResult = true;
        boolean result = false;
        so.setNomalum("Mariana");
        so.setApepatalum("Quispe");
        so.setApematalum("Callahua");
        so.setIdenalun("72186105");
        so.setEdad(9);
        so.setNiv(2);
        so.setGra(6);
        so.setNomapod("Mariano");
        so.setApepatapod("Quispe");
        so.setApematapod("Lopez");
        so.setIdenapod("73461178");
        so.setCorreapod("mariano@gmail.com");
        so.setTelapod(5564416);
        so.setCelapod(916618719);
        so.setDirapod("Jr.LosRobles");
        if(so.getIdenalun().length()<8){
        System.out.println("El dni Alumno debe tener 8 caracteres. Ej. 72180104");
        }else if(so.getIdenapod().length()<8 ||  so.getIdenapod().length()>8){
        System.out.println("El dni Apoderado debe tener 8 caracteres. Ej. 72180104");
        }else if(Integer.toString(so.getTelapod()).length() <7){
        System.out.println("El telefono debe tener 7 caracteres. Ej. 5564416");
        }else if(Integer.toString(so.getCelapod()).length()<9){
        System.out.println("El celular debe tener 9 caracteres. Ej. 666112233");
        }else if((so.getCorreapod().indexOf('@', 0) == -1 || so.getCorreapod().indexOf('.', 0) == -1)){
        System.out.println("El formato de correo es incorrecto. Ej. ejemplo12@tipo.dominio");
        }else if(so.getNomalum().equals("") || so.getApematalum().equals("") ||so.getApepatalum().equals("")
        ||so.getIdenalun().equals("") || so.getNomapod().equals("") ||so.getApepatapod().equals("") ||so.getApematapod().equals("")
        ||so.getIdenapod().equals("") || so.getCorreapod().equals("") ||so.getDirapod().equals("")){
        System.out.println("Completa este Campo");
        }else if(so.getEdad()>15 || so.getEdad()<=0){
        System.out.println("El valor debe ssr menor o igual a 15 y mayor que 0");
        }
        else{
        System.out.println("Registro Exitoso");
        SolicitudAdmiDB.insertarSolicitudAdmi(so);
        result=true;
        }
        assertEquals(expResult, result);
        
        
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Listar_Admisones method, of class SolicitudAdmiDB.
     */
    @Test
    public void testListar_Admisones() {
        System.out.println("Listar_Admisones");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<AdmiAluApod> result = SolicitudAdmiDB.Listar_Admisones();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Eliminar_Admisiones method, of class SolicitudAdmiDB.
     */
    @Test
    public void testEliminar_Admisiones() {
        System.out.println("Eliminar_Admisiones");
        int id = 4;
        SolicitudAdmiDB.Eliminar_Admisiones(id);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
