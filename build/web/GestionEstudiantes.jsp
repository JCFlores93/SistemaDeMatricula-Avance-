
<%-- 
    Document   : RegistrarMatricula
    Created on : 17-feb-2017, 15:21:34
    Author     : JeanCarlo
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="conexionDB.*"%>

<%@page import="java.util.Calendar"%>
<%!int naño;%>


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
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/i18n/defaults-*.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css" href="css/fondo.css" />
<script type="text/javascript">
	$(document).ready(function(){
		    $('#insertar').click(function(){
			 $('#data').attr('action', 'insertar.jsp');
			});
			$('#modificar').click(function(){
			 $('#data').attr('action', 'modificar.jsp');
			});
			$('#eliminar').click(function(){
			 $('#data').attr('action', 'eliminar.jsp');
			});
			
	});
</script>
</head>
<body>
<center>
<div>
	<form action='' method='post' id='data'>
	<p>Ingrese el código del alumno :<input type='text' name='codigo'/></p>
	<div>
	<input type='submit' id='insertar' class='btn btn-primary btn-lg'name='registrar' value='registrar'/>
	<input type='submit' id='modificar' class='btn btn-primary btn-lg' name='modificar' value='modificar'/>
	<input type='submit' id='eliminar' class='btn btn-primary btn-lg' name='eliminar' value='eliminar'/>
	</div>
	</form>
</div>
	<div class='container'>
		<table class='table'>
			<thead class="thead-inverse">
				<tr>
					<th class="col-xs-2">Codigo</th>
					<th class="col-xs-2">Nombre</th>
					<th class="col-xs-2">Apellido</th>
					<th class="col-xs-2">Fecha de Nacimiento</th>
					<th class="col-xs-1">Direccion</th>
					<th class="col-xs-1">Telefono</th>
					<th class='col-xs-1'><input type="BUTTON" class="modificar" value="Modificar"></th>
					<th class='col-xs-1'><input type="BUTTON" class="borrar" value="Eliminar"></th>
				</tr>
			</thead>
			<tbody>
			<%ResultSet tabla=null;
			BaseDeDatos.conectar();
			String instruccion="select codigo_alumno,nombre,apellido,fech_nacimiento,direccion,telef from datos_alumnos";
			tabla=BaseDeDatos.consultar(instruccion);
			while(tabla.next()){
				out.println("<tr>");
				out.println("<td class='col-xs-2'value='"+tabla.getString(1)+"' name=>"+tabla.getString(1)+"</td>");
				out.println("<td class='col-xs-2'>"+tabla.getString(2)+"</td>");
				out.println("<td class='col-xs-2'>"+tabla.getString(3)+"</td>");
				out.println("<td class='col-xs-2'>"+tabla.getString(4)+"</td>");
				out.println("<td class='col-xs-1'>"+tabla.getString(5)+"</td>");
				out.println("<td class='col-xs-1'>"+tabla.getString(6)+"</td>");
				out.println("<th class='col-xs-1'><input type='BUTTON' class='modificar' value='Modificar'></th>");
				out.println("<th class='col-xs-1'><input type='BUTTON' class='borrar' value='Eliminar'></th>");
				out.println("</tr>");
			}
			
			%>
				</tbody>
		</table>
	</div>
	</center>
</body>
</html>