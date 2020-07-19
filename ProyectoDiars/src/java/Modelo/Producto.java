package Modelo;

public class Producto {
    private int codigoProducto;
    private String nombre;
    private double precio;
    private String imagen;
    private int stockproducto;
    private int stockdisponible;
     private int stockcomprometido;

    public Producto() {
    }

    public Producto(int codigoProducto, String nombre, double precio, String imagen, int stockproducto) {
        this.codigoProducto = codigoProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.imagen = imagen;
        this.stockproducto = stockproducto;
    }



    public Producto(int codigoProducto, String nombre, double precio, String imagen, int stockproducto, int stockdisponible, int stockcomprometido) {
        this.codigoProducto = codigoProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.imagen = imagen;
        this.stockproducto = stockproducto;
        this.stockdisponible = stockdisponible;
        this.stockcomprometido = stockcomprometido;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getStockproducto() {
        return stockproducto;
    }

    public void setStockproducto(int stockproducto) {
        this.stockproducto = stockproducto;
    }

    public int getStockdisponible() {
        return stockdisponible;
    }

    public void setStockdisponible(int stockdisponible) {
        this.stockdisponible = stockdisponible;
    }

    public int getStockcomprometido() {
        return stockcomprometido;
    }

    public void setStockcomprometido(int stockcomprometido) {
        this.stockcomprometido = stockcomprometido;
    }


}
