/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DetallePedido;
import Modelo.Producto;
import Modelo.ProductoDB;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JOSEP LEO
 */
@WebServlet(name = "ServletCantidad", urlPatterns = {"/ServletCantidad"})
public class ServletCantidad extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String mens=request.getParameter("accioncanti");
       if(mens.equals("modificanti")){
       this.modificanti(request,response);
       }
    }
    private void modificanti(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        HttpSession sesion=request.getSession();
    ArrayList<DetallePedido> carrito;

    if(sesion.getAttribute("carrito")==null){
    carrito=new ArrayList<DetallePedido>();
    }
    else{
    carrito=(ArrayList<DetallePedido>)sesion.getAttribute("carrito");
    }
    Producto p=ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("txtCodigo")));
    DetallePedido d = new DetallePedido();
    
    d.setCodigoProducto(Integer.parseInt(request.getParameter("txtCodigo")));
    d.setProducto(p);
    d.setCantidad(Double.parseDouble(request.getParameter("txtCantidad")));
    double subTotal=p.getPrecio()*d.getCantidad();
    d.setDescuento(subTotal);
    int indice=-1;
    for(int i=0;i<carrito.size();i++){
    DetallePedido det=carrito.get(i);
    if(det.getCodigoProducto()==p.getCodigoProducto()){
        carrito.remove(i);
        if(request.getParameter("mens").equals("agregale")){
        d.setCantidad(1+det.getCantidad());
        d.setDescuento(p.getPrecio()*d.getCantidad());
        carrito.add(d);
        }
        if(request.getParameter("mens").equals("quitale")){
             d.setCantidad(det.getCantidad()-1);
             d.setDescuento(p.getPrecio()*d.getCantidad());
        if(d.getCantidad()!=0){
        carrito.add(d);
        }
        }
        
        indice=i;    
        break;
    }
    }
    if(indice==-1){
    carrito.add(d);
    }
    sesion.setAttribute("carrito", carrito);
    
    response.sendRedirect("RegistrarVenta.jsp");
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
