<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="conexionDB.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<style>
input,.form-group,.form-control{
	margin: auto;
    width: 50%;
    
    padding: 8px;
}
label,small,#ibutton{
 margin-left: 160px;
}

H1{
margin-left:280px;
margin-bottom: 10px;
padding:20px;
}
#hecho{
	margin-left:20px;
	margin-top:-90px;
}

</style>
<body>
	<%out.println("<form action='principal.jsp' method='post'");
		out.println("<div class='form-group'>");
		out.println("<input id='hecho' class='btn btn-primary btn-lg' type='submit' value='regresar' name='Ok'/>");
		out.println("</div>");
		out.println("</form>");
		String proceso = "";

		if (request.getParameter("modificar") != null) {
			String codigo = request.getParameter("codigo");
			System.out.println(codigo);
			ResultSet tabla = null;
			BaseDeDatos.conectar();
			String instruccion = "select * from datos_alumnos where codigo_alumno='" + codigo + "'";
			tabla = BaseDeDatos.consultar(instruccion);
			tabla.next();
			out.println("<h1>REGISTRO DEL ALUMNO A MODIFICAR</h1>");
			out.println("<form action='modificar.jsp' method='post'>");
			
			out.println("<div class='form-group'><label>CODIGO :</label><input  class='form-control'"
				+"	aria-describedy='emailHelp'type='text' name='codigoAlumno' value='"
					+ tabla.getString(8) + "'/></div>");
			out.println("<div class='form-group'><label> CONTRASEÑA:</label><input class='form-control' aria-describedy='emailHelp' type='text' name='contrasenAlumno' value='"
					+ tabla.getString(4) + "'/></div>");
			out.println("<div class='form-group'><label>  NOMBRE :</label><input class='form-control' aria-describedy='emailHelp' type='text' name='nombreAlumno' value='"
					+ tabla.getString(2) + "'/></div>");
			out.println("<div class='form-group'><label>  APELLIDO :</label><input class='form-control' aria-describedy='emailHelp' type='text' name='apellidoAlumno' value='"
					+ tabla.getString(3) + "'/></div>");
			out.println("<div class='form-group'><label>  FECHA DE NACIMIENTO :</label><input class='form-control' aria-describedy='emailHelp' type='text' name='fechaAlumno' value='"
					+ tabla.getString(5) + "'/></div>");
			out.println("<div class='form-group'><label>  DIRECCION  :</label><input class='form-control' aria-describedy='emailHelp' type='text' name='direccionAlumno' value='"
					+ tabla.getString(6) + "'/></div>");
			out.println("<div class='form-group'><label>  TELEFONO  :</label><input class='form-control' aria-describedy='emailHelp' type='text' name='telefonoAlumno' value='"
					+ tabla.getString(7) + "'/></div>");
			out.println("<div class='form-group'>");
			out.println("<input id='ibutton' class='btn btn-primary btn-lg' type='submit' name='registrar' value='registrar'>");
			out.println("</div>");
			out.println("</form>");
			BaseDeDatos.desconectar();
		}else{

		if (request.getParameter("registrar").compareTo("registrar") == 0) {
			String codigo, contraseña, nombre, apellido, fecha, direccion, telefono;
			codigo = request.getParameter("codigoAlumno");
			contraseña = request.getParameter("contrasenAlumno");
			nombre = request.getParameter("nombreAlumno");
			apellido = request.getParameter("apellidoAlumno");
			fecha = request.getParameter("fechaAlumno");
			direccion = request.getParameter("direccionAlumno");
			telefono = request.getParameter("telefonoAlumno");
			BaseDeDatos.conectar();
			String instruccion = "update datos_alumnos set nombre=\'" + nombre + "\',apellido=\'" + apellido
					+ "\',contrasena=\'" + contraseña + "\',fech_nacimiento=\'" + fecha + "\',direccion=\'"
					+ direccion + "\',telef=\'" + telefono + "\',codigo_alumno=\'" + codigo
					+ "\' where codigo_alumno=\'" + codigo + "\'";
			out.println(instruccion);
			BaseDeDatos.ejectuarInstruccion(instruccion);
			BaseDeDatos.desconectar();
		}

		out.println("<title>BIENVENIDO AL MENU ELIMINAR</title>");
		}
	%>


</body>
</html>