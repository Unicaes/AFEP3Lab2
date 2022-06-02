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
        <label>Cantidad hombres:</label>
        <s:property value="CantHombres" />
        <br>
        <label>Cantidad mujeres:</label>
        <s:property value="CantMujeres" />
        <br>
        <label>Cantidad Futbol</label>
        <s:property value="TotalFutbol" />
        <br>
        <label>Cantidad Basquetball</label>
        <s:property value="TotalBasquet" />
        <br>
        <label>Cantidad Jockey</label>
        <s:property value="TotalJockey" />
        <br>
        <label>Cantidad Beisbal</label>
        <s:property value="TotalBeisbal" />
        <br>
        <label>Cantidad Golf</label>
        <s:property value="TotalGolf" />
        <br>
        <label>Cantidad educacion nula</label>
        <s:property value="nulo" />
        <br>
        <label>Cantidad educacion basica</label>
        <s:property value="basico" />
        <br>
        <label>Cantidad educacion intermedia</label>
        <s:property value="intermedio" />
        <br>
        <label>Cantidad educacion superior</label>
        <s:property value="superior" />
        <br>
        <label>Cantidad Television</label>
        <s:property value="Television" />
        <br>
        <label>Cantidad Cocina</label>
        <s:property value="Cocina" />
        <br>
        <label>Cantidad Tecnologia</label>
        <s:property value="Tecnologia" />
        <br>
        <label>Cantidad Musica</label>
        <s:property value="Musica" />
        <br>
        <label>Cantidad Deportes</label>
        <s:property value="Deportes" />
        
        <br>
        <label>Total encuestas:</label>
        <s:property value="TotalEncuestas" />
    </body>
</html>
