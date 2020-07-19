<%-- 
    Document   : mensaje
    Created on : 28-oct-2019, 13:03:08
    Author     : JOSEP LEO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    String usu="";
    String nom="";
    HttpSession sesionOK=request.getSession();
    if(sesionOK.getAttribute("perfil")!=null){
    nom=(String)sesionOK.getAttribute("nom")+" "+(String)sesionOK.getAttribute("apepa")+" "+(String)sesionOK.getAttribute("apema");
    }
    else{
    %>
      <jsp:forward page="Login.jsp">
        <jsp:param name="msg" value="Tiene que loguearse"/>
    </jsp:forward>    
    
    <%
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align="center">
            <%
            if(request.getParameter("men")!=null){
            out.println(request.getParameter("men"));
            }
            %>
        </h2>
        
    </body>
</html>
