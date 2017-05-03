<%-- 
    Document   : RegistrarMatricula
    Created on : 17-feb-2017, 15:21:34
    Author     : JeanCarlo
--%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="conexionDB.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%! int naño; %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>MATRICULA</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/tether.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/i18n/defaults-*.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css" href="css/fondo.css" />
<style>
#botones{

}
table{
margin-left:100px
}

#fecha{
margin-left:1200px
}
input[type="text"] {

  background-color : #d1d1d1; 

}
#hecho{
	margin-left:20px;
	margin-top:-90px;
}

</style>
<script type='text/javascript'>
	$(document).ready(function() {
				
		$('#tr1').hide();
		$('#tr2').hide();
		$('#tr3').hide();
		$('#tr4').hide();
		$('#tr5').hide();
		$('#tr6').hide();
		$('#tr7').hide();
		
	
		var p1 = $('#p1').val();
		var vacio='';
		if(p1 != vacio){
			$('#cbo_Ciclo').attr('disabled', true);
		}

		$('#agregar').click(function() {
			$('#cbo_Ciclo').prop('disabled','disabled');
			var per=$("#i_año").val();
			var cod=$("#i_CodigoDelCurso1").text();
			var turno=$("#i_Turno1").text();
			var seccion = $("#i_Seccion option:selected").text();
			var curso = $("#i_Curso option:selected").text();
			var creditos=$("#i_Creditos1").text();	
			var ciclo=$("#cbo_Ciclo option:selected").text();
			//var nFilas = $("#tabla tr").length;
			// var letra = "" + nFilas;
			var vacio = "";
			var p1 = $('#p1').val();
			var p2 = $('#p2').val();
			var p3 = $('#p3').val();
			var p4 = $('#p4').val();
			var p5 = $('#p5').val();
			var p6 = $('#p6').val();
			var p7 = $('#p7').val();

			if (p1 === vacio) {
				$('#contador').attr('value', 1);
				$('#tr1').show();
				$('#p1').attr('value',per);
				$('#c1').attr('value',cod);
				$('#t1').attr('value',turno);
				$('#s1').attr('value',seccion);
				$('#a1').attr('value',curso);
				$('#cr1').attr('value',creditos);
				$('#v1').attr('value', 1);
				$('#ciclo1').attr('value', ciclo);
				//console.log("fsdfsdfgsdgs s"+p1+"");
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var suma=c1;
			} else if (p2 === vacio) {
				$('#contador').attr('value', 2);
				$('#tr2').show();
				$('#p2').attr('value',per);
				$('#c2').attr('value',cod);
				$('#t2').attr('value',turno);
				$('#s2').attr('value', seccion);
				$('#a2').attr('value', curso);
				$('#cr2').attr('value',creditos);
				$('#v2').attr('value', 1);
				$('#ciclo2').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var suma=c1+c2;
				//console.log("Doesn't work");
			} else if (p3 === vacio) {
				$('#contador').attr('value', 3);
				$('#tr3').show();
				$('#p3').attr('value',per);
				$('#c3').attr('value',cod);
				$('#t3').attr('value', turno);
				$('#s3').attr('value', seccion);
				$('#a3').attr('value', curso);
				$('#cr3').attr('value', creditos);
				$('#v3').attr('value', 1);
				$('#ciclo3').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var c3=parseInt($('#cr3').val());
				var suma=c1+c2+c3;
			} else if (p4 === vacio) {
				$('#contador').attr('value', 4);

				$('#tr4').show();
				$('#p4').attr('value',per);
				$('#c4').attr('value',cod);
				$('#t4').attr('value', turno);
				$('#s4').attr('value', seccion);
				$('#a4').attr('value', curso);
				$('#cr4').attr('value',  creditos);
				$('#v4').attr('value', 1);
				$('#ciclo4').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var c3=parseInt($('#cr3').val());
				var c4=parseInt($('#cr4').val());
				var suma=c1+c2+c3+c4;
				if(suma <= 17){
					suma=0;
					$('#contadorDeCreditos').val(suma);
				}else {
					$('#agregar').attr("disabled", true);
				}
			} else if (p5 === vacio) {
				$('#contador').attr('value', 5);

				$('#tr5').show();
				$('#p5').attr('value',per);
				$('#c5').attr('value', cod);
				$('#t5').attr('value', turno);
				$('#s5').attr('value', seccion);
				$('#a5').attr('value', curso);
				$('#cr5').attr('value', creditos);
				$('#v5').attr('value',  1);
				$('#ciclo5').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var c3=parseInt($('#cr3').val());
				var c4=parseInt($('#cr4').val());
				var c5=parseInt($('#cr5').val());
				var suma=c1+c2+c3+c4+c5;
				if(suma <= 17){
					suma=0;
					$('#contadorDeCreditos').val(suma);
				}else {
					$('#agregar').attr("disabled", true);
				}
			} else if (p6 === vacio) {
				$('#contador').attr('value', 6);

				$('#tr6').show();
				$('#p6').attr('value',per);
				$('#c6').attr('value', cod);
				$('#t6').attr('value',turno);
				$('#s6').attr('value', seccion);
				$('#a6').attr('value', curso);
				$('#cr6').attr('value',creditos);
				$('#v6').attr('value',  1);
				$('#ciclo6').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var c3=parseInt($('#cr3').val());
				var c4=parseInt($('#cr4').val());
				var c5=parseInt($('#cr5').val());
				var c6=parseInt($('#cr6').val());
				var suma=c1+c2+c3+c4+c5+c6;
				if(suma <= 17){
					suma=0;
					$('#contadorDeCreditos').val(suma);
				}else {
					$('#agregar').attr("disabled", true);
				}
			}else if (p7 === vacio) {
				$('#contador').attr('value', 7);

				$('#tr7').show();
				$('#p7').attr('value',per);
				$('#c7').attr('value', cod);
				$('#t7').attr('value',turno);
				$('#s7').attr('value', seccion);
				$('#a7').attr('value', curso);
				$('#cr7').attr('value',creditos);
				$('#v7').attr('value',  1);
				$('#ciclo7').attr('value', ciclo);
				var contando=$('#contadorDeCreditos').val();
				var c1=parseInt($('#cr1').val());
				var c2=parseInt($('#cr2').val());
				var c3=parseInt($('#cr3').val());
				var c4=parseInt($('#cr4').val());
				var c5=parseInt($('#cr5').val());
				var c6=parseInt($('#cr6').val());
				var c7=parseInt($('#cr7').val());
				var suma=c1+c2+c3+c4+c5+c6;
				if(suma <= 17){
					suma=0;
					$('#contadorDeCreditos').val(suma);
				}else {
					$('#agregar').attr("disabled", true);
				}
			}

			return false;
		});
	});
</script>


<script type="text/javascript">
function combo_curso() {
	//alert("cambiar a select dependiente");
	$('#i_opc').val("1");
	$.post('comboI.jsp', $('#data').serialize(), function(data) {
		$('#i_Curso').html(data);
	});
	return false;
}
	function combo_seccion() {
		//alert("cambiar a select dependiente");
		$('#i_opc').val("1");
		$.post('comboD.jsp', $('#data').serialize(), function(data) {
			$('#i_Seccion').html(data);
		});
		return false;
	}
	function mostrar_Profesor() {
		
		$('#i_opc').val("1");
		$.post('lblProfesor.jsp', $('#data').serialize(), function(data) {
			
			$('#i_Horario').html(data);
		});
		return false;
	}
	//function mostrar_Horario() {
	//	$('#i_opc').val("1");
		//$.post('lblHorario.jsp', $('#data').serialize(), function(data) {
			//$('#i_Horario').html(data);
		//});
		//return false;
	//}
	$(function() {
		$(document).on('click', '.borrar', function(event) {
			debugger;
			event.preventDefault();
			//$(this).closest('tr').remove();
			var idActual=$(this).attr('id');
			var idSiguiente = idActual + 1;
			var cantidadDeFilas=$('#contador').val();
			for(var i = idActual; i<cantidadDeFilas;i++){
				var p2=$("#p"+idSiguiente).attr('value');
				//alert(""+p1);
				var ciclo2= $("#ciclo"+idSiguiente).attr('value');
				var c2=$("#c"+idSiguiente).attr('value');
				var t2=$("#t"+idSiguiente).attr('value');
				var s2=$("#s"+idSiguiente).attr('value');
				var a2=$("#a"+idSiguiente).attr('value');
				var cr2=$("#cr"+idSiguiente).attr('value');
				
				$("#p" + idActual).attr('value',p2);
				$("#ciclo"+idActual).attr('value',ciclo2);
				$("#c"+idActual).attr('value',c2);
				$("#t"+idActual).attr('value',t2);
				$("#s"+idActual).attr('value',s2);
				$("#a"+idActual).attr('value',a2);
				$("#cr"+idActual).attr('value',cr2);
				
			}			
				
			$('#tr' + cantidadDeFilas).remove();
			$('#contador').attr('value',(cantidadDeFilas-1));
				
				
		});
		return false;
	});
</script>

</head>

<body>
<%out.println("<form action='principal.jsp' method='post'");
		out.println("<div class='form-group'>");
		out.println("<input id='hecho' class='btn btn-primary btn-lg' type='submit' value='regresar' name='Ok'/>");
		out.println("</div>");
		out.println("</form>");%>
	<center>
		<div class='title'>
			<H2>UNIVERSIDAD NACIONAL FEDERICO VILLARREAL</H2>
			<H3>OFICINA CENTRAL DE REGISTROS ACADEMICOS</H3>
			<h1>MATRICULA</h1>
		</div>
	</center>

	<%
		HttpSession sesion = request.getSession();
		String idAlumno = (String) sesion.getAttribute("usuario");
		String nomAlumno = (String) sesion.getAttribute("nombre");
		String apeAlumno = (String) sesion.getAttribute("apellido");
		out.println("<H4>BIENVENIDO :" + nomAlumno + "" + apeAlumno+"</H4></BR>");
		out.println("<H4>Usuario Activo:" + idAlumno+"</H4>");
		if (idAlumno != null) {
			ResultSet tabla = null;
			BaseDeDatos.conectar();
			String instruccion1 = "select codigo_alumno  from datos_alumnos WHERE codigo_alumno=\'" + idAlumno + "\'";
			tabla = BaseDeDatos.consultar(instruccion1);
			String ncodigo="";
			while (tabla.next()) {
	%>

	<FORM ACTION='Guardar.jsp' METHOD='POST' id="data">
		<div>
				<%
				 ncodigo=tabla.getString(1);
				};BaseDeDatos.desconectar();
				  int acodigo=Integer.parseInt(ncodigo.substring(0,4));					
					Calendar fecha = Calendar.getInstance();
			        int año = fecha.get(Calendar.YEAR);
			        int mes = fecha.get(Calendar.MONTH) + 1;
			        int dia = fecha.get(Calendar.DAY_OF_MONTH); %>
					<div id="fecha">Fecha:<%=dia %>/<%=mes %>/<%=año %></div>
					<%naño=año-acodigo;
					System.out.println("año :"+año);
					System.out.println("acodigo :"+acodigo);
					System.out.println("naño :"+naño);%>
					
					
					<input type="hidden" name='i_opc' id='i_opc' /> 
					<input type="hidden" NAME='CONTADOR' id='contador' />
					<input type="hidden" NAME='año' id='año' value='<%=naño%>' />
				</div>
		
	<%/*Para seleccionar los cursos*/%>
		<center>
		<table>
		<tr><td><p id>Periodo Actual :</p></td><td><input type="text" name="n_año" id='i_año' value=<%=naño%> readonly></td></tr>
		<tr><td><p>Ingrese el ciclo</p></td><%
		ResultSet tabla0=null;
		BaseDeDatos.conectar();
		String instruccion0="select p.ciclo from detalle d"+ 
				" inner join periodos p on d.id_periodo=p.id_periodo "+
				" inner join materias m on d.id_materia=m.id_materia "+
				" where m.año like '"+naño+"%' group by p.ciclo";
		tabla0=BaseDeDatos.consultar(instruccion0);
		%>
		<td colspan="4"><select class="form-control col-xs-3" data-style="btn-primary"id='cbo_Ciclo' name='cbo_Ciclo' onchange='combo_curso()'>
		<option value=''>seleccione</option>
		<%while(tabla0.next())
		{
	%>
	
			<%
				
						String val_materia = tabla0.getString(1);//guardamos un campo de resultado en una variable
						String materia = tabla0.getString(1);//guardamos un campo de resultado en una variable
			%>
			<option value='<%=val_materia%>'><%=materia%></option>
			<!--imprimimos el contenido del select -->
			<%};
			%>
		</select>
		</td>
		</tr>
		<td colspan="1"><p class='col-xs-1'>Escoja el curso :</p></td>
		<td colspan="4"><select class="form-control col-xs-3" data-style="btn-primary" name="cbo_Curso" id="i_Curso" onchange='combo_seccion()'><option value=''>seleccione</option></select></td>
		</tr>
		<tr>
		<td colspan="1"><p class='col-xs-2'>Escoja la sección</p></td>
		<td colspan="4"><select class="form-control col-xs-3" data-style="btn-primary" name="cbo_Seccion" id="i_Seccion" onchange='mostrar_Profesor()'><option value=''>seleccione</option></select></td>
		</tr>
		<tr>
		<td colspan="1"><p><label  class='col-xs-2' id='i_CodigoDelCurso' ></label> </p></td>
		<td colspan="1"><p><label  class='col-xs-2' id='i_Profesor' ></label></p></td>
		<td colspan="1"><p><label class='col-xs-2' id='i_Turno'></label></p></td>
		<td colspan="1"><p><label class='col-xs-2' id='i_Horario'></label></p></td>
		<td colspan="1"><p><label name='creditos' class='col-xs-2' id='i_Creditos' ></label></p></td>
		</tr>
		</table>
		</center>
		<br>
		<div id='botones'>
		<center>
		
		<button class="btn btn-primary" TYPE='BUTTON' VALUE='AGREGAR' id='agregar'>AGREGAR</button>
		<INPUT class="btn btn-primary" TYPE='SUBMIT' NAME='REGISTRAR' VALUE='REGISTRAR' id='registrar'><BR>
		</center>
		</div>
		</br>
		
		<input type="hidden" NAME='contadorDeCreditos' id='contadorDeCreditos' value=''/>
		<div class='container'>
			<table id='tabla' class="table">
				<thead class="thead-inverse">
					<tr>

						<th class='col-xs-1'>Per</th>
						<th class='col-xs-1'>Ciclo</th>
						<th class='col-xs-2'>Código</th>
						<th class='col-xs-1'>T</th>
						<th class='col-xs-1'>S</th>
						<th class='col-xs-4'>Asignaturas</th>
						<th class='col-xs-1'>Cred</th>
						<th class='col-xs-1'>Vez</th>
						<th class='col-xs-1'>---</th>
					</tr>
				</thead>
				<tbody>
					<tr id='tr1'>
						<td class='col-xs-1'><input type="TEXT" name="periodo1"
							value="" id='p1' /></td>
						<td class='col-xs-1'><input type="TEXT" name="ciclo1"
							value="" id='ciclo1' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo1"
							value="" id='c1' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno1"
							value="" id='t1' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion1"
							value="" id='s1' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura1"
							value="" id='a1' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito1"
							value="" id='cr1' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez1" value=""
							id='v1' /></td>
						<td class='col-xs-1'><input id='1'type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr2'>
						<td class='col-xs-1'><input type="TEXT" name="periodo2"
							value="" id='p2' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo2"
							value="" id='ciclo2' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo2"
							value="" id='c2' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno2"
							value="" id='t2' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion2"
							value="" id='s2' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura2"
							value="" id='a2' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito2"
							value="" id='cr2' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez2" value=""
							id='v2' /></td>
						<td class='col-xs-1'><input id='2' type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr3'>
						<td class='col-xs-1'><input type="TEXT" name="periodo3"
							value="" id='p3' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo3"
							value="" id='ciclo3' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo3"
							value="" id='c3' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno3"
							value="" id='t3' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion3"
							value="" id='s3' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura3"
							value="" id='a3' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito3"
							value="" id='cr3' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez3" value=""
							id='v3' /></td>
						<td class='col-xs-1'><input id='3' type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr4'>
						<td class='col-xs-1'><input type="TEXT" name="periodo4"
							value="" id='p4' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo4"
							value="" id='ciclo4' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo4"
							value="" id='c4' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno4"
							value="" id='t4' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion4"
							value="" id='s4' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura4"
							value="" id='a4' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito4"
							value="" id='cr4' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez4" value=""
							id='v4' /></td>
						<td class='col-xs-1'><input id='4'type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr5'>
						<td class='col-xs-1'><input type="TEXT" name="periodo5"
							value="" id='p5' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo5"
							value="" id='ciclo5' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo5"
							value="" id='c5' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno5"
							value="" id='t5' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion5"
							value="" id='s5' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura5"
							value="" id='a5' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito5"
							value="" id='cr5' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez5" value=""
							id='v5' /></td>
						<td class='col-xs-1'><input id='5' type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr6'>
						<td class='col-xs-1'><input type="TEXT" name="periodo6"
							value="" id='p6' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo6"
							value="" id='ciclo6' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo6"
							value="" id='c6' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno6"
							value="" id='t6' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion6"
							value="" id='s6' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura6"
							value="" id='a6' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito6"
							value="" id='cr6' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez6" value=""
							id='v6' /></td>
						<td class='col-xs-1'><input id='6' type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
					<tr id='tr7'>
						<td class='col-xs-1'><input type="TEXT" name="periodo7"
							value="" id='p7' /></td>
							<td class='col-xs-1'><input type="TEXT" name="ciclo7"
							value="" id='ciclo7' /></td>
						<td class='col-xs-2'><input type="TEXT" name="codigo7"
							value="" id='c7' /></td>
						<td class='col-xs-1'><input type="TEXT" name="turno7"
							value="" id='t7' /></td>
						<td class='col-xs-1'><input type="TEXT" name="seccion7"
							value="" id='s7' /></td>
						<td class='col-xs-3'><input type="TEXT" name="asignatura7"
							value="" id='a7' /></td>
						<td class='col-xs-1'><input type="TEXT" name="credito7"
							value="" id='cr7' /></td>
						<td class='col-xs-1'><input type="TEXT" name="vez7" value=""
							id='v7' /></td>
						<td class='col-xs-1'><input id='7'type="BUTTON" class="borrar"
							value="Eliminar" /></td>
					</tr>
				</tbody>

			</table>
		</div>
		
	</FORM>
	<%
		
		}
	%>
</BODY>
</HTML>