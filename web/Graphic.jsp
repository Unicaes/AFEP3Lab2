<%-- 
    Document   : Graphic
    Created on : Jun 1, 2022, 11:40:02 PM
    Author     : bryan
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label>Porcentaje Hombres:</label>
        <s:property value="PorcentajeHombre" />
        <br>
        <label>Porcentaje Mujeres:</label>
        <s:property value="PorcentajeMujeres" />
        <br>
        <label>Total encuestas:</label>
        <s:property value="TotalEncuestas" />
    </body>
</html>
