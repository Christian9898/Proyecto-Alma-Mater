<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/stylesconsul.css" type="text/css" media="screen"/>
         <style>
             .datagrid table 
{ 
    border-collapse: collapse; 
    text-align: left; 
    min-width: 600px;
    width: 100%;
} 
         </style>
    </head>
    <body>
        
        
    <div class="datagrid">
        <table>
            <thead>
                <tr align="center">
                <th>Cod.Ped</th>
                <th>Cod.Pro</th>
                <th>Cantidad</th>
                <th>Pre.Unitario</th>
                <th>Importe</th>
             </tr>
            </thead>
            <tfoot>
                <tr align="center">
                    <td colspan="8">
                        <div id="paging"><ul><li><a href="#"><span>Previous</span></a></li><li><a href="#" class="active"><span>1</span></a></li><li><a href="#"><span>2</span></a></li><li><a href="#"><span>3</span></a></li><li><a href="#"><span>4</span></a></li><li><a href="#"><span>5</span></a></li><li><a href="#"><span>Next</span></a></li></ul>
                        </div>
                </tr>
            </tfoot>
            <tbody>
            <%
            ArrayList<DetallePedido> lista=new ArrayList<DetallePedido>();
            lista=DetallePedidoDB.obtenerDetalleVenta(Integer.parseInt(request.getParameter("cod")));
            
for(DetallePedido d:lista){
%>
<tr align="center">
    <td><%=d.getCodigoVenta()%></td>   
    <td><%=d.getCodigoProducto() %></td>   
    <td><%=d.getCantidad() %></td>
    <td><%=d.getPrecio() %></td>
    <td><%=d.getDescuento() %></td>
</tr>
                <%}
                   %>
            </tbody>
        </table>
    </div>

    </body>
</html>
