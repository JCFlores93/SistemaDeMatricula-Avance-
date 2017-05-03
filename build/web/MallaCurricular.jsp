<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Calendar"%>
    <%@page import="java.sql.ResultSet"%>
<%@ page import="conexionDB.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MALLA CURRICULAR</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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

#hecho{
	margin-left:20px;
	margin-top:-90px;
}
</style>
</head>
<body>
<%out.println("<form action='principal.jsp' method='post'");
		out.println("<div class='form-group'>");
		out.println("<input id='hecho' class='btn btn-primary btn-lg' type='submit' value='regresar' name='Ok'/>");
		out.println("</div>");
		out.println("</form>");%>
<h1>MALLA CURRRICULAR</h1>
<table id='data' class="table">
<thead class="thead-inverse">
<tr>
<th>Año</th>
<th>Ciclo</th>
<th>Materia</th>
</tr>
</thead>
<tbody>
<%

ResultSet tabla=null;
BaseDeDatos.conectar();
String instruccion="select p.ciclo,m.materia,m.año  from detalle d inner join materias m on d.id_materia=m.id_materia inner join periodos p on d.id_periodo=p.id_periodo";
tabla=BaseDeDatos.consultar(instruccion);

while(tabla.next()){
	String año=tabla.getString(3);
	String fin=año.substring(0,1);
	%>
	<tr>
	<td><%=fin%></td>
	<td><%=tabla.getString(1)%></td>
	<td><%=tabla.getString(2)%></td>
	</tr>
	<%
};
BaseDeDatos.desconectar();
%>
</tbody>
</table>

</body>
</html>