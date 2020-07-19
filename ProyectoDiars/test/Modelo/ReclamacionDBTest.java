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
public class ReclamacionDBTest {
    
    public ReclamacionDBTest() {
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
     * Test of insertarReclamacion method, of class ReclamacionDB.
     */
    @Test
    public void testInsertarReclamacion() {
        System.out.println("insertarReclamacion");
        Reclamo po = null;
        ReclamacionDB.insertarReclamacion(po);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of Listar_Reclamos method, of class ReclamacionDB.
     */
    @Test
    public void testListar_Reclamos() {
        System.out.println("Listar_Reclamos");
        ArrayList<Reclamo> expResult = null;
        ArrayList<Reclamo> result = ReclamacionDB.Listar_Reclamos();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
