<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Registro</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">
</head>

<body style="padding: 50px;">
    <h3>Registro de encuestas</h3>
     <br>
     
    <s:form action="modifyencuesta.action" method="post">
        <a href="report"><button class="btn btn-outline-dark" type="button" style="margin-right:10px;">Ir a Reporte</button></a>
        <button class="btn btn-outline-success" type="submit" value="0" name="wtd" style="margin-right:10px;">Cerrar encuesta</button>
        <button class="btn btn-outline-danger" type="submit" value="1" name="wtd" style="margin-right:10px;">Abrir encuesta</button>  
    </s:form>
        
    <s:if test="ctr>0">
            <span style="color: green;"><s:property value="msg" /></span>
    </s:if>
    <s:else>
            <span style="color: red;"><s:property value="msg" /></span>
    </s:else>
    <br>
    
    <s:form action="registeruser.action" method="post" class="bg-light border">
        <div class="container" style="margin: 15px;">
            <div class="row">
                <label class="col-3">Nombre:</label>
                <input class="col-9 form-control" name="nombre" type="text" placeholder="Ingresa tu nombre" />
            </div><br>
            <div class="row">
                <label class="col-3">Sexo:</label>
                <select name="sexo" class="col-9 form-select">
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
            </div><br>
            <div class="row">
                <label class="col-3">Deporte favorito:</label>
                <select name="deporte_favorito" class="col-9 form-select">
                    <option value="Futbol">Futbol</option>
                    <option value="Basquetball">Basquetball</option>
                    <option value="Jockey">Jockey</option>
                    <option value="Beisbal">Beisbal</option>
                    <option value="Golf">Golf</option>
                </select>
            </div><br>
            <div class="row">
                <label class="col-3">Nivel de estudio:</label>
                <select name="nivel_de_estudio" class="col-9 form-select">
                    <option value="nulo">nulo</option>
                    <option value="basico">básico</option>
                    <option value="intermedio">intermedio</option>
                    <option value="superior">superior</option>
                </select>
            </div><br>
            <div class="row">
                <label class="col-3">Temas favoritos:</label>
                <select name="tema_favorito" class="col-9 formselect">
                    <option value="Television">Television</option>
                    <option value="Cocina">Cocina</option>
                    <option value="Tecnologia">Tecnologia</option>
                    <option value="Musica">Musica</option>
                    <option value="Deportes">Deportes</option>
                </select>
            </div>
            <br>
            <input class="btn btn-outline-success" type="submit" value="Guardar"/>
        </div><br>
    </s:form>
       
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>