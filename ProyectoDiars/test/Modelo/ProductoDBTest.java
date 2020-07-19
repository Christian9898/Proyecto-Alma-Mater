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
public class ProductoDBTest {
    
    public ProductoDBTest() {
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
     * Test of obtenerProducto method, of class ProductoDB.
     */
    @Test
    public void testObtenerProducto_0args() {
        System.out.println("obtenerProducto");
        boolean resultado=false;
        boolean expResult = true;
        ArrayList<Producto> result = ProductoDB.obtenerProducto();
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerProducto method, of class ProductoDB.
     */
    @Test
    public void testObtenerProducto_int() {
        System.out.println("obtenerProducto");
        boolean resultado=false;
        boolean expResult = true;
        int codigo = 6;
        Producto result = ProductoDB.obtenerProducto(codigo);
        if(result!=null){
        resultado=true;
        }
        assertEquals(expResult, resultado);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of eliminarProducto method, of class ProductoDB.
     */
    @Test
    public void testEliminarProducto() {
        System.out.println("eliminarProducto");
        int codigo = 13;
        ProductoDB.eliminarProducto(codigo);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarProducto method, of class ProductoDB.
     */
    @Test
    public void testActualizarProducto() {
        System.out.println("actualizarProducto");
        Producto p=new Producto();
        boolean expResult = true;
        boolean result = false;
        p.setCodigoProducto(2);
        p.setNombre("Polo-Deporte");
        p.setPrecio(20);
        p.setStockproducto(500);
        /*este toma el valor del stock siempre*/
        p.setStockdisponible(500);
        p.setStockcomprometido(0);
        if(p.getNombre().equals("")){
        System.out.println("Completa este Campo");
        }else if(p.getPrecio()<=0){
        System.out.println("No se acepta valor de precio");
        }else if(p.getStockproducto()<=0){
        System.out.println("No se acepta valor de stock");
        }else{
        System.out.println("Modificacion Exitosa");
        ProductoDB.actualizarProducto(p);
        result=true;
        }
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of insertarProducto method, of class ProductoDB.
     */
    @Test
    public void testInsertarProducto() {
        System.out.println("insertarProducto");
        Producto p=new Producto();
        boolean expResult = true;
        boolean result = false;
        p.setImagen("img9.jpg");
        p.setNombre("Prueba");
        p.setPrecio(12);
        p.setStockproducto(100);
        /*este toma el valor del stock siempre*/
        p.setStockdisponible(100);
        /*este siempre inicia en cero cuando se registra*/
        p.setStockcomprometido(0);
        if(p.getImagen().equals("Falta escoger una imagen")){
        System.out.println("El dni debe tener 8 caracteres. Ej. 72180104");
        }else if(p.getNombre().equals("")){
        System.out.println("Completa este Campo");
        }else if(p.getPrecio()<=0 || p.getStockproducto()<=0){
        System.out.println("No se acepta valor 0 de precio");
        }else if(p.getStockproducto()<=0){
        System.out.println("No se acepta valor 0 de stock");
        }else{
        System.out.println("Registro Exitoso");
        ProductoDB.insertarProducto(p);
        result=true;
        }
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
