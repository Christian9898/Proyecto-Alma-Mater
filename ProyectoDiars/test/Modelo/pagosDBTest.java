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
public class pagosDBTest {
    
    public pagosDBTest() {
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
     * Test of Listar_FecPagos method, of class pagosDB.
     */
    @Test
    public void testListar_FecPagos() {
        System.out.println("Listar_FecPagos");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<fecpagos> result = pagosDB.Listar_FecPagos();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }

    /**
     * Test of conComprobanseguido method, of class pagosDB.
     */
    @Test
    public void testConComprobanseguido() {
        System.out.println("conComprobanseguido");
        int expResult = 9;
        int result = pagosDB.conComprobanseguido();
        assertEquals("Se espera el numro del ultimo comprobante mas 1",expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of insertarPagos method, of class pagosDB.
     */
    @Test
    public void testInsertarPagos() {
        
            Comprobante p=new Comprobante();
            boolean expResult = true;
            boolean result = false;
        p.setDnirespo("72186105");
        p.setNomcrespo("Sape");
        p.setApecrespo("Loco");
        p.setCodOperario(1);
        p.setCargoOperario("Administrador");
        p.setCodAlu(2);
        p.setFechAcomprobante("5/2/2018");
        p.setFecMes("31/05/2020");
        p.setMonto(250);
        p.setCodrespon(14);
        if(p.getDnirespo().length()<8){
        System.out.println("El dni debe tener 8 caracteres. Ej. 72180104");
        }else if(p.getDnirespo().equals("") || p.getNomcrespo().equals("") || p.getApecrespo().equals("") || p.getFechAcomprobante().equals("") || p.getFecMes().equals("")){
        System.out.println("Completa este Campo");
        }else if(p.getCodAlu()<=0){
        System.out.println("Falta Escoger un Alumno");
        }else{
        System.out.println("Registro Exitoso");
        pagosDB.insertarPagos(p);
        result=true;
        }
        assertEquals(expResult, result);
        
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of Listar_Comprobantes method, of class pagosDB.
     */
    @Test
    public void testListar_Comprobantes() {
        System.out.println("Listar_Comprobantes");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<Comprobante> result = pagosDB.Listar_Comprobantes();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
