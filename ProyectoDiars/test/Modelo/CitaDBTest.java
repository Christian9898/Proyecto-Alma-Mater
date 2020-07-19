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
public class CitaDBTest {
    
    public CitaDBTest() {
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
     * Test of InsertarCita method, of class CitaDB.
     */
    @Test
    public void testInsertarCita() {
        System.out.println("InsertarCita");
        Cita c = new Cita();
        boolean expResult = true;
        boolean result = false;
        /*datos del postulante y de la empresa ya vienenpor defecto del cu anterior*/
        c.setNom("Josep");
        c.setEma("reyesrojas251999@gmail.com");
        c.setTelf(5470894);
        c.setDirec("JIRON ANDRES AVELINO CACERES 365, Lima, Carabayllo.");
        c.setFechini("19/06/2020 15:55");
        c.setFechfin("19/06/2020 18:55");
        c.setCodpo(1);
        if(c.getFechini().equals("")){
        System.out.println("Falta Asignar Hora de Inicio");
        }else if(c.getFechfin().equals("")){
        System.out.println("Falta Asignar Hora de Fin");
        }else{
        System.out.println("Registro Exitoso");
        CitaDB.InsertarCita(c);
        result=true;
        }
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Listar_Citas method, of class CitaDB.
     */
    @Test
    public void testListar_Citas() {
        System.out.println("Listar_Citas");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<Cita> result = CitaDB.Listar_Citas();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Eliminar_Cita method, of class CitaDB.
     */
    @Test
    public void testEliminar_Cita() {
        System.out.println("Eliminar_Cita");
        int id = 6;
        CitaDB.Eliminar_Cita(id);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Modificar_Cita method, of class CitaDB.
     */
    @Test
    public void testModificar_Cita() {
        System.out.println("Modificar_Cita");
        /*aqui los datos ya estan siendo visualizados y nunca se podra registrar un valor vacio por ende no lo valido xd*/
        Cita c = new Cita();
        c.setCodcita(2);
        c.setFechini("01/07/2020 16:25");
        c.setFechfin("01/07/2020 17:25");
        CitaDB.Modificar_Cita(c);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
