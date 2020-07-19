package Modelo;

public class DetallePedido {
    private int codigoVenta;
    private int codigoProducto;
    private double cantidad;
    private double descuento;
    private double precio;
    private Producto producto;
    private Pedido venta;

    public DetallePedido(int codigoVenta, int codigoProducto, double cantidad, double descuento, Producto producto, Pedido venta) {
        this.codigoVenta = codigoVenta;
        this.codigoProducto = codigoProducto;
        this.cantidad = cantidad;
        this.descuento = descuento;
        this.producto = producto;
        this.venta = venta;
    }

    public DetallePedido(int codigoVenta, int codigoProducto, double cantidad, double descuento) {
        this.codigoVenta = codigoVenta;
        this.codigoProducto = codigoProducto;
        this.cantidad = cantidad;
        this.descuento = descuento;
    }
    public DetallePedido() {
    }

    public Pedido getVenta() {
        return venta;
    }

    public void setVenta(Pedido venta) {
        this.venta = venta;
    }

    public int getCodigoVenta() {
        return codigoVenta;
    }

    public void setCodigoVenta(int codigoVenta) {
        this.codigoVenta = codigoVenta;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    
}
