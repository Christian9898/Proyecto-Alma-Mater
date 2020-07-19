<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <title>Login | I.E.P ALMA MATER</title>
        <link rel="stylesheet" href="css/master.css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
        h4{
            color: yellow;
        }
    </style>
    </head>
    <body>
        <div class="login-box" id="login">
      <div class="logo-letras">
      <img src="imagenes/insignianew.png" class="avatar" alt="Avatar Image">
      <h2>I.E.P ALMA MATER</h2>
      </div>
      <div class="logo-letras2">
      <h3>"Formamos Triunfadores"</h3></div>
      <div class="separar">
      <p>Para acceder a su aula virtual por favor ingrese su usuario y contraseña.</p>
      </div>
      <form action="ServletLogueo" method="post">
          <input type="hidden" name="accion" value="loguin">
        <label for="username">Usuario</label>
        <input type="text" name="txtUsu" placeholder="Ingrese user">
        <label for="password">Contraseña</label>
        <input type="password" name="txtPas" placeholder="Ingrese password">
        <input type="submit" name="btn" value="INICIAR SESIÓN">
        <a href="#">No puedes acceder a tu cuenta?</a><h4 align="center" id="aviso">
            <%
            if(request.getAttribute("msg")!=null){
            out.println(request.getAttribute("msg"));
            }
            %>
            
        </h4>
      </form>
    </div>
    <script>
                    $('#login').click(function(){
       document.getElementById("aviso").innerHTML="";
}); 
    </script>
    </body>
</html>
