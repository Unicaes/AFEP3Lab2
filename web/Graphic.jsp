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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>

        <div class="container mt-4">
            <div class="row">
                <div class="col-md-4">
                    <div class="card bg-info">
                        <div class="card-header">
                            <h6 class="text-center">Total de Encuestas</h6>
                        </div>
                        <div class="card-body text-center">
                            <span class=""><s:property value="TotalEncuestas" />
                            </span>
                        </div>
                    </div><!-- .card -->
                </div><!-- .col -->
                <div class="col-md-4">
                    <div class="card bg-warning">
                        <div class="card-header">
                            <h6 class="text-center">Mujeres que les gusta el futbol</h6>
                        </div>
                        <div class="card-body text-center">
                            <span class=""><s:property value="PorcentajeMujeres" />
                            </span>
                        </div>
                    </div><!-- .card -->
                </div><!-- .col -->
                <div class="col-md-4">
                    <div class="card bg-danger text-white">
                        <div class="card-header">
                            <h6 class="text-center">Hombres que les gusta la cocina</h6>
                        </div>
                        <div class="card-body text-center">
                            <span class=""><s:property value="PorcentajeHombre" />
                            </span>
                        </div>
                    </div><!-- .card -->
                </div><!-- .col -->
            </div>
        </div>

        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="https://code.highcharts.com/modules/export-data.js"></script>
        <script src="https://code.highcharts.com/modules/accessibility.js"></script>

        <h3 class="text-center mt-4">Graficos por Pregunta</h3>
        <figure class="highcharts-figure">
            <div id="container-1"></div>
            <div class="container mb-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-6">
                        <table class="table">
                            <tr>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                            </tr>
                            <tr>
                                <td>Femenino</td>
                                <td><s:property value="CantMujeres" /></td>
                            </tr>
                            <tr>
                                <td>Masculino</td>
                                <td><s:property value="CantHombres" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
                            
            <div id="container-2"></div>
            <div class="container mb-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-6">
                        <table class="table">
                            <tr>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                            </tr>
                            <tr>
                                <td>Futbol</td>
                                <td><s:property value="TotalFutbol" /></td>
                            </tr>
                            <tr>
                                <td>Basquetball</td>
                                <td><s:property value="TotalBasquet" /></td>
                            </tr>
                            <tr>
                                <td>Jockey</td>
                                <td><s:property value="TotalJockey" /></td>
                            </tr>
                            <tr>
                                <td>Beisbal</td>
                                <td><s:property value="TotalBeisbal" /></td>
                            </tr>
                            <tr>
                                <td>Golf</td>
                                <td><s:property value="TotalGolf" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            
            <div id="container-3"></div>
            <div class="container mb-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-6">
                        <table class="table">
                            <tr>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                            </tr>
                            <tr>
                                <td>Nulo</td>
                                <td><s:property value="nulo" /></td>
                            </tr>
                            <tr>
                                <td>Basico</td>
                                <td><s:property value="basico" /></td>
                            </tr>
                            <tr>
                                <td>Intermedio</td>
                                <td><s:property value="intermedio" /></td>
                            </tr>
                            <tr>
                                <td>Superior</td>
                                <td><s:property value="superior" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            
            <div id="container-4"></div>
            <div class="container mb-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-6">
                        <table class="table">
                            <tr>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                            </tr>
                            <tr>
                                <td>Television</td>
                                <td><s:property value="Television" /></td>
                            </tr>
                            <tr>
                                <td>Cocina</td>
                                <td><s:property value="Cocina" /></td>
                            </tr>
                            <tr>
                                <td>Tecnologia</td>
                                <td><s:property value="Tecnologia" /></td>
                            </tr>
                            <tr>
                                <td>Musica</td>
                                <td><s:property value="Musica" /></td>
                            </tr>
                            <tr>
                                <td>Deportes</td>
                                <td><s:property value="Deportes" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </figure>

        <script>
            Highcharts.chart('container-1', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: '1. Sexo'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                        name: 'Cantidad',
                        colorByPoint: true,
                        data: [{
                                name: 'Femenino',
                                y: <s:property value="CantMujeres" />
                            }, {
                                name: 'Masculino',
                                y: <s:property value="CantHombres" />
                            }]
                    }]
            });
            Highcharts.chart('container-2', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: '2. Deporte Favorito'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                        name: 'Cantidad',
                        colorByPoint: true,
                        data: [{
                                name: 'Futbol',
                                y: <s:property value="TotalFutbol" />
                            }, {
                                name: 'Basquetball',
                                y: <s:property value="TotalBasquet" />
                            }, {
                                name: 'Jockey',
                                y: <s:property value="TotalJockey" />
                            }, {
                                name: 'Beisbal',
                                y: <s:property value="TotalBeisbal" />
                            }, {
                                name: 'Golf',
                                y: <s:property value="TotalGolf" />
                            }]
                    }]
            });

            Highcharts.chart('container-3', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: '3. Nivel de Educacion'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                        name: 'Cantidad',
                        colorByPoint: true,
                        data: [{
                                name: 'Nulo',
                                y: <s:property value="nulo" />
                            }, {
                                name: 'Basico',
                                y: <s:property value="basico" />
                            }, {
                                name: 'Intermedio',
                                y: <s:property value="intermedio" />
                            }, {
                                name: 'Superior',
                                y: <s:property value="superior" />
                            }]
                    }]
            });

            Highcharts.chart('container-4', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: '4. Tema Favorito'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                        name: 'Cantidad',
                        colorByPoint: true,
                        data: [{
                                name: 'Television',
                                y: <s:property value="Television" />
                            }, {
                                name: 'Cocina',
                                y: <s:property value="Cocina" />
                            }, {
                                name: 'Tecnologia',
                                y: <s:property value="Tecnologia" />
                            }, {
                                name: 'Musica',
                                y: <s:property value="Musica" />
                            }, {
                                name: 'Deportes',
                                y: <s:property value="Deportes" />
                            }]
                    }]
            });
        </script>
    </body>
</html>
