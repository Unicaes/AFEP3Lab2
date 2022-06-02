<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Register</title>
<style type="text/css">
.button-register {background-color: green;color: white;}
.button-report {background-color: #000000;color: white;margin-left: 30%;}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<h2>Struts 2 Create, Read, Update and Delete (CRUD) Example using JDBC</h2>
	<a href="report"><button class="btn btn-primary" type="button">Report</button></a>
        <br>
	<s:form action="registeruser.action" method="post">
            <div class="container">
                <div class="row">
                    <label class="col-3">Nombre</label>
                    <input class="col-9 form-control" name="nombre" type="text" placeholder="Ingresa tu nombre:" />
                </div>
                <div class="row">
                    <label class="col-3">Sexo</label>
                    <select name="sexo" class="col-9 form-select">
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                    </select>
                </div>
                <div class="row">
                    <label class="col-3">Deporte favorito</label>
                    <select name="deporte_favorito" class="col-9 form-select">
                        <option value="Futbol">Futbol</option>
                        <option value="Basquetball">Basquetball</option>
                        <option value="Jockey">Jockey</option>
                        <option value="Beisbal">Beisbal</option>
                        <option value="Golf">Golf</option>
                    </select>
                </div>
                <div class="row">
                    <label class="col-3">Nivel de estudio</label>
                    <select name="nivel_de_estudio" class="col-9 form-select">
                        <option value="nulo">nulo</option>
                        <option value="basico">básico</option>
                        <option value="intermedio">intermedio</option>
                        <option value="superior">superior</option>
                    </select>
                </div>
                <div class="row">
                    <label class="col-3">Temas favoritos</label>
                    <select name="tema_favorito" class="col-9 form-select">
                        <option value="Television">Television</option>
                        <option value="Cocina">Cocina</option>
                        <option value="Tecnologia">Tecnologia</option>
                        <option value="Musica">Musica</option>
                        <option value="Deportes">Deportes</option>
                    </select>
                </div>
                <br>
                <input class="btn btn-primary" type="submit" value="Register"/>
            </div>
	</s:form>
	<s:if test="ctr>0">
		<span style="color: green;"><s:property value="msg" /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value="msg" /></span>
	</s:else>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>