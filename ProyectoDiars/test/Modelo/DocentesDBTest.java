/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;
import javax.servlet.http.Part;
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
public class DocentesDBTest {
    
    public DocentesDBTest() {
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
     * Test of insertarDocente method, of class DocentesDB.
     */
    @Test
    public void testInsertarDocente() {
        System.out.println("insertarDocente");
        boolean expResult = true;
        boolean result = false;
        Docentesh d = new Docentesh();
        DatDocen vo = new DatDocen();
        GradoAcademico gr = new GradoAcademico();
                   d.setNomdocen("Mario");
                   d.setApepatdocen("Casas");
                   d.setApematdocen("Lopez");
                   d.setFecnadocen("2020-06-27");
                   d.setNaciondocen("Peruano");
                   d.setIdentidocen("72186105");
                   d.setCeldocen(916618719);
                   d.setEstdocente("Activo");
                   d.setDirdocen("El Puerto");
                   d.setEmaidocen("mario@gmail.com");
                   gr.setDesforaca("Maestria");
                   vo.setFechaingre("2015-06-26");
                   vo.setDestiem("Medio Tiempo");
                   vo.setArchivopdf(null);
        if(d.getNomdocen().equals("") || d.getApepatdocen().equals("") || d.getApematdocen().equals("") ||
           d.getFecnadocen().equals("") || d.getNaciondocen().equals("") || d.getIdentidocen().equals("") ||
           d.getEstdocente().equals("") || d.getDirdocen().equals("") || d.getEmaidocen().equals("") ||
           gr.getDesforaca().equals("") || vo.getFechaingre().equals("") || vo.getDestiem().equals("")){
        System.out.println("Completa este Campo");
        }else if(d.getIdentidocen().length()<8 || d.getIdentidocen().length()>8){
        System.out.println("El dni debe tener 8 caracteres. Ej. 72180104");
        }else if(Integer.toString(d.getCeldocen()).length()<9){
        System.out.println("El celular debe tener 9 caracteres. Ej. 666112233");
        }else if((d.getEmaidocen().indexOf('@', 0) == -1 || d.getEmaidocen().indexOf('.', 0) == -1)){
        System.out.println("Registro Fallido");
        }else{
        System.out.println("Registro Exitoso");
        DocentesDB.insertarDocente(d, vo, gr);
        result=true;
        }
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of modificarDocente method, of class DocentesDB.
     */
    @Test
    public void testModificarDocente() {
        System.out.println("modificarDocente");
        boolean expResult = true;
        boolean result = false;
        Docentesh d = new Docentesh();
        DatDocen vo = new DatDocen();
        GradoAcademico gr = new GradoAcademico();
                   d.setCodocen(8);
                   d.setNomdocen("Julieta");
                   d.setApepatdocen("Ramitos");
                   d.setApematdocen("Rosa");
                   d.setFecnadocen("2011-12-26");
                   d.setNaciondocen("Peruana");
                   d.setIdentidocen("23552532");
                   d.setCeldocen(916618719);
                   d.setEstdocente("Activo");
                   d.setDirdocen("Jr.ManuelOdria");
                   d.setEmaidocen("julieta@gmail.com");
                   gr.setDesforaca("Titulado");
                   vo.setFechaingre("2020-07-16");
                   vo.setDestiem("Medio Tiempo");
                   /*le puse null ya q entra la lectura del archivo subido y lo convertia en binario*/
                   vo.setArchivopdf(null);
                   
        if(d.getNomdocen().equals("") || d.getApepatdocen().equals("") || d.getApematdocen().equals("") ||
           d.getFecnadocen().equals("") || d.getNaciondocen().equals("") || d.getIdentidocen().equals("") ||
           d.getEstdocente().equals("") || d.getDirdocen().equals("") || d.getEmaidocen().equals("") ||
           gr.getDesforaca().equals("") || vo.getFechaingre().equals("") || vo.getDestiem().equals("")){
        System.out.println("Completa este Campo");
        }else if(d.getIdentidocen().length()<8 || d.getIdentidocen().length()>8){
        System.out.println("El dni debe tener 8 caracteres. Ej. 72180104");
        }else if(Integer.toString(d.getCeldocen()).length()<9){
        System.out.println("El celular debe tener 9 caracteres. Ej. 666112233");
        }else if((d.getEmaidocen().indexOf('@', 0) == -1 || d.getEmaidocen().indexOf('.', 0) == -1)){
        System.out.println("Registro Fallido");
        }else{
        System.out.println("Registro Exitoso");
        DocentesDB.modificarDocente(d, vo, gr);
        result=true;
        }
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of ConDocen method, of class DocentesDB.
     */
    @Test
    public void testConDocen() {
        System.out.println("ConDocen");
        boolean resultado=false;
        boolean expResult = true;
        int id = 4;
        Docentesh result = DocentesDB.ConDocen(id);
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of DatosDocentes method, of class DocentesDB.
     */
    @Test
    public void testDatosDocentes() {
        System.out.println("DatosDocentes");
        boolean resultado=false;
        boolean expResult = true;
        int id = 4;
        DatDocen result = DocentesDB.DatosDocentes(id);
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of ConGradoAca method, of class DocentesDB.
     */
    @Test
    public void testConGradoAca() {
        System.out.println("ConGradoAca");
        boolean resultado=false;
        boolean expResult = true;
        int id = 4;
        GradoAcademico result = DocentesDB.ConGradoAca(id);
         if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Listar_Docentes method, of class DocentesDB.
     */
    @Test
    public void testListar_Docentes() {
        System.out.println("Listar_Docentes");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<Docentesh> result = DocentesDB.Listar_Docentes();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
