<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Practica03 Guzman Valeria </title>
</head>
<body> 

 <div class="container">
 <h1>Crud de Revista</h1>
		 <div class="col-md-23" >  
			  <form id="idFormElimina" action="eliminaCrudRevista">
			  		<input type="hidden" id="id_elimina" name="id">
			  </form>	
				
		       <form accept-charset="UTF-8"  action="consultaCrudRevista" class="simple_form" id="defaultForm2"  method="post">
					<div class="row">
						<div class="col-md-3">	
							<div class="form-group">
							  	<label class="control-label" for="id_nonbre_filtro">NOMBRE</label>
							  	<input class="form-control" id="id_nonbre_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
							</div>
						</div>
					</div>			
					<div class="row">
						<div class="col-md-3">
							<button type="submit" class="btn btn-primary" id="validateBtnw1" >FILTRA</button><br>&nbsp;<br>
						</div>
						<div class="col-md-3">
							<button type="button" data-toggle='modal' onclick="registrar();"  class='btn btn-success' id="validateBtnw2" >REGISTRA</button><br>&nbsp;<br>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="tableRevista" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th>ID</th>
												<th>Nombre</th>
												<th>Precio</th>
												<th>Serie</th>
												<th>Categoria</th>
												<th>FechaLanzamiento</th>
												<th>FechaEdicion</th>
												<th>Categoria</th>
											</tr>
										</thead>
										<tbody>
												   
												<c:forEach items="${revista}" var="x">
													<tr>
														<td>${x.idRevista}</td>
														<td>${x.nombre}</td>
														<td>${x.precio}</td>
														<td>${x.serie}</td>
														<td>${x.categoria}</td>
														<td>${x.fechaLanzamiento}</td>
														<td>${x.fechaEdicion}</td>
														<td>
														
														<button type='button' data-toggle='modal' onclick="editar('${x.idRevista}','${x.nombre}','${x.precio}','${x.serie}','${x.categoria}','${x.fechaLanzamiento}','${x.fechaEdicion}','${x.categoria.idCategoria}');" class='btn btn-success' style='background-color:hsla(233, 100%, 100%, 0);'>
																<img src='images/edit.gif' id='id_update' width='auto' height='auto' />
															</button>
														</td>
														<td>
															<button type='button' data-toggle='modal' onclick="eliminar('${x.idRevista}');" class='btn btn-success' style='background-color:hsla(233, 100%, 100%, 0);'>
																<img src='images/delete.gif' width='auto' height='auto' />
															</button>
														</td>
													</tr>
													</c:forEach>
													</tbody>
										</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
		 		</form>
		  </div>
</div>
  
														
<div class="modal fade" id="idModalRegistra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de revistra</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraRevista" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Revista</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_precio">Precio</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_precio" name="precio" placeholder="Ingrese el precio" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_serie">Serie</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_serie" name="serie" placeholder="Ingrese la serie" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_categoria">Categoria</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_categoria" name="categoria" placeholder="Ingrese la categoria" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fechaLanzamiento">Fecha Lanzamiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_fechaLanzamiento" name="fechaLanzamiento" placeholder="Ingrese la fecha de Lanzamiento" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fechaEdicion">Fecha Edicion</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_fechaEdicion" name="fechaEdicion" placeholder="Ingrese la fecha de Edicion" type="text" maxlength="2"/>
		                                        </div>
		                                    </div> 
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_categoria">Categoria</label>
		                                        <div class="col-lg-5">
													<select id="id_reg_categoria" name="categoria.idCategoria" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="submit" class="btn btn-primary">REGISTRA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
	</div>
		<div class="modal fade" id="idModalActualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Revista</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudRevista" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Revista</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-5">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idModalidad" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_precio">Precio</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_precio" name="precio" placeholder="Ingrese el precio" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_serie">Serie</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_serie" name="serie" placeholder="Ingrese la serie" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_categoria">Categoria</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_categoria" name="categoria" placeholder="Ingrese la categoria" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_fechaLanzamiento">Fecha Lanzamiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_fechaLanzamiento" name="fechaLanzamiento" placeholder="Ingrese la Fecha de Lanzamiento" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_fechaEdicion">Fecha Edicion</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_fechaEdicion" name="fechaEdicion" placeholder="Ingrese la Fecha de Edicion" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>  
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_categoria">Categoria</label>
		                                        <div class="col-lg-5">
													<select id="id_act_categoria" name="categoria.idCategoria" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="submit" class="btn btn-primary">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </div>

		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>

<script type="text/javascript">
$.getJSON("cargaCategoria", {}, function(data, q,t){
	console.log(data);
	
	$.each(data, function(index,item){
		$("#id_reg_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
		$("#id_act_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
	});
	
});
</script>

<script type="text/javascript">
function eliminar(id){	
	$('input[id=id_elimina]').val(id);
	$('#idFormElimina').submit();
}

function registrar(){	
	$('#idModalRegistra').modal("show");
}

function editar(id,nombre,precio,serie,edadMaxima, edadMinima, idDeporte){	
	$('input[id=id_ID]').val(id);
	$('input[id=id_act_nombre]').val(nombre);
	$('input[id=id_act_precio]').val(precio);
	$('input[id=id_act_serie]').val(serie);
	$('input[id=id_act_categoria]').val(categoria);
	$('input[id=id_act_fechaLanzamiento]').val(fechaLanzamiento);
	$('input[id=id_act_fechaEdicion]').val(fechaEdicion);
	$('select[id=id_act_Categoria]').val(idCategia);
	$('#idModalActualiza').modal("show");
}

$(document).ready(function() {
    $('#tableAlumno').DataTable();
} );
</script>
<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "precio": {
        		selector : '#id_reg_precio',
                validators: {
                    notEmpty: {
                        message: 'El precio es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'El precio'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'El precio'
		            }
                }
            },
            "serie": {
        		selector : '#id_reg_serie',
                validators: {
                	notEmpty: {
                        message: 'La serie es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La serie'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La serie'
		            }
                }
            },
            "categoria": {
        		selector : '#id_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La categoria '
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La categoria'
		            }
                }
            },
            "fechaLanzamiento": {
        		selector : '#id_fechaLanzamiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha Lanzamiento es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La fechaLanzamiento'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La fechaLanzamiento '
		            }
                }
            },
            "fechaEdicion": {
        		selector : '#id_fechaLanzamiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha Edicion es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La fecha Edicion '
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La fecha Edicion'
		            }
                }
            },
            "categoria.idCategoria": {
        		selector : '#id_reg_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria esok un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "precio": {
        		selector : '#id_act_precio',
                validators: {
                    notEmpty: {
                        message: 'El precio es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'El precio'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'El precio'
		            }
                }
            },
            "serie": {
        		selector : '#id_act_serie',
                validators: {
                	notEmpty: {
                        message: 'La serie es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La serie'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La serie'
		            }
                }
            },
            "categoria": {
        		selector : '#id_act_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La categoria'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La categoria'
		            }
                }
            },
            "fechaLanzamiento": {
        		selector : '#id_act_fechaLanzamiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha Lanzamiento es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La fechaLanzamiento'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La fechaLanzamiento'
		            }
                }
            },
            "fechaEdicion": {
        		selector : '#id_act_fechaEdicion',
                validators: {
                	notEmpty: {
                        message: 'La fecha Edicion es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La fechaEdicion'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La fechaEdicion'
		            }
                }
            },
            "categoria.idCategoria": {
        		selector : '#id_act_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria un campo obligatorio'
                    },
                }
            },
          
        }   
    });
</script>
    
</body>
</html> 