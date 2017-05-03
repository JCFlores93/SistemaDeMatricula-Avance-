<%@page import="conexionDB.BaseDeDatos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>MODIFICAR ALUMNO</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/tether.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/i18n/defaults-*.min.js"></script>
<link rel="stylesheet" type="text/css"href="css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css"href="css/fondo.css" />
<script>
$(document).ready(function(){
	$("#ibutton2").click(function(){
		$("#divOk").html("");
		$("#in").val("");
	});
});
</script>
<style>
input, .form-group,.form-control{
	margin: auto;
    width: 50%;
    
    padding: 8px;
}
label{
 margin-left: 160px;
}
small{ margin-left: 190px;}
#ibutton,#ibutton2{margin-left:70px;}
H1{
margin-left:280px;
margin-bottom: 10px;
padding:20px;
}
#divOk{
margin-left:570px;
}
#ibutton2{

margin-lefft:60px;
}

</style>
</head>
<body>
<%out.println("<form action='principal.jsp' method='post'");
		out.println("<div class='form-group'>");
		out.println("<input id='hecho' class='btn btn-primary btn-lg' type='submit' value='regresar' name='Ok'/>");
		out.println("</div>");
		out.println("</form>");
		String proceso="";
 if(request.getParameter("eliminar").compareTo("eliminar")==0){
	 String codigo=request.getParameter("codigo");
	 System.out.println(codigo);
	 BaseDeDatos.conectar();
	String instruccion="delete from datos_alumnos where codigo_alumno=\'"+codigo+"\'";
	BaseDeDatos.ejectuarInstruccion(instruccion);
	out.println("<div id='divOk'>SE HA ELIMINADO AL CLIENTE</div>");
	BaseDeDatos.desconectar();
 }
	out.println("<form action='GestionEstudiantes.jsp' method='post'");
	out.println("<div class='form-group'><label> CODIGO DEL ALUMNO:</label><input id='in'class='form-control' aria-describedy='emailHelp' type='text' name='codigo' value=''/><small"+
			" class='form-text text-muted'>Se eliminará al alumno con el siguiente codigo</small></div>");
	out.println("<div class='form-group'>");
	out.println("<input id='ibutton' class='btn btn-primary btn-lg' type='submit' value='eliminar' name='Ok'/>");
	out.println("</div>");
	out.println("<div class='form-group'>");
	out.println("<input id='ibutton2' class='btn btn-primary btn-lg'  value='limpiar' />");
	out.println("</div>");
	
	out.println("</form>");
	
 
 %>
 
 
</body>
</html>