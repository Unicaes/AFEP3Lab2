<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Reporte</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">
<style>
    #searchBar {
      font-size: 16px;
      padding: 6px 10px 6px 10px;
      border: 2px solid #ddd;
      margin-bottom: 12px;
    }

    #tableEncuesta {
      border-collapse: collapse;
      width: 100%;
      border: 1px solid #ddd;
      font-size: 16px;
    }

    #tableEncuesta th, #tableEncuesta td {
      text-align: center;
      padding: 12px;
    }

    #tableEncuesta tr {
      border-bottom: 1px solid #ddd;
    }

    table, td, th {border: 1px solid #363636;}
    th {height: 30px;}
    .button-update {background-color: #008CBA;color: white;}
</style>
</head>
<body style="padding: 50px;">
	<h3>Reporte: Resúmen de encuestas registradas</h3>
        
	<div style="margin-top: 40px;">
            <s:if test="noData==true">
                
                <input type="text" id="searchBar" onkeyup="myFunction()" placeholder="Búsqueda de personas...">
                <br>
                
                <table id="tableEncuesta">
                    <thead>
                        <tr style="background-color: #E0E0E1;">
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Sexo</th>
                            <th>Deporte favorito</th>
                            <th>Mivel de estudio</th>
                            <th>Tema favorito</th>
                            <th>Fecha registrada</th>
                            <th></th>
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
                                    <button class="btn btn-danger btn-md btn-block">Remover</button>
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
        <br>
        <a href="register.jsp"><button class="btn btn-outline-dark" type="button"style="margin-right:10px;">
           Registro de encuestas</button>
        </a>
        <a href="Graphic.jsp"><button class="btn btn-outline-dark" type="button">Resultados de encuestas</button></a>
</body>

<script>
    function myFunction() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("searchBar");
      filter = input.value.toUpperCase();
      table = document.getElementById("tableEncuesta");
      tr = table.getElementsByTagName("tr");

      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        if (td) {txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {tr[i].style.display = "";} 
          else {tr[i].style.display = "none";}
        }
      }
    }
</script>
</html>