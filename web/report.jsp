<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Report</title>
<style>
table, td, th {border: 1px solid black;}
table {border-collapse: collapse;width: 60%;}
th {height: 30px;}
.button-update {background-color: #008CBA;color: white;}
.button-delete {background-color: red;color: white;}
</style>
</head>
<body>
	<h2>Struts 2 Create, Read, Update and Delete (CRUD) Example using JDBC</h2>
	<div style="margin-top: 40px;">
		<s:if test="noData==true">
			<table>
				<thead>
					<tr style="background-color: #E0E0E1;">
						<th>ID</th>
						<th>Nombre</th>
						<th>Sexo</th>
						<th>Deporte favorito</th>
						<th>Mivel de estudio</th>
						<th>Tema favorito</th>
						<th>Fecha registrada</th>
					</tr>
				</thead>
				<s:iterator value="beanList">
					<tr>
						<td><s:property value="encuesta_id" /></td>
						<td><s:property value="nombre" /></td>
						<td><s:property value="sexo" /></td>
						<td><s:property value="deporte_favorito" /></td>
						<td><s:property value="nivel_de_estudio" /></td>
						<td><s:property value="tema_favorito" /></td>
						<td><s:property value="fecha_registrada" /></td>
						<td>
                                                            <a href="deleterecord.action?uemail=<s:property value="encuesta_id"/>">
								<button class="button-delete">Delete</button>
							</a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>
	</div>
</body>
</html>