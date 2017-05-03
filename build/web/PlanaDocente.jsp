<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@ page import="conexionDB.*"%>
<%@page import="java.util.Calendar"%>
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
td >th{
background-color:black;
}
td,th{
background-color:white;
text-align:center;
}
H1{
text-align: center;
}
.table table-bordered{
margin-top:50px;
}
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
<h1>PLANA DOCENTE</h1></BR>
	<table class="table table-bordered">
  <thead class="thead-default">
    <tr>
      <th>#</th>
      <th></th>
      <th>Nombres</th>
      <th>Apellidos</th>
      <th>Especialidad</th>
      <th>Teléfono</th>
    </tr>
  </thead>
  <tbody>
<%ResultSet tabla =null;
BaseDeDatos.conectar();
String instruccion="select id_profesor,nombre,apellido,telefono,especialidad from profesores";
tabla=BaseDeDatos.consultar(instruccion);
while(tabla.next()){
	%>

    <tr>
      <th scope="row"><%=tabla.getInt(1)%></th>
      <th><img alt="primera imagen" src="img/profesores/<%=tabla.getInt(1)%>.jpg" width='90' height='90'></th>
      <td><%=tabla.getString(2)%></td>
      <td><%=tabla.getString(3)%></td>
      <td><%=tabla.getString(5)%></td>
      <td><%=tabla.getString(4)%></td>
      
    </tr>
    	<%		
		};
	%>
	</tbody>
	</table>
	


</body>
</html>