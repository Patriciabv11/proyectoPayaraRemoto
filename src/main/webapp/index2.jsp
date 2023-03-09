<%-- 
    Document   : index
    Created on : 25-feb-2023, 12:42:26
    Author     : Profesor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="ServletController">
            <h2><b>Elige una ciudaddddd</b></h2>
            <input type="checkbox" name="name" value="Vigo">Vigo
            <input type="checkbox" name="name" value="Albacete">Albacete
            <input type="checkbox" name="name" value="Madrid">Madrid
            <input type="checkbox" name="name" value="Sevilla">Sevilla

             <input type="submit" name="operacion" value="Buscar">
        </form>
    </body>
</html>

