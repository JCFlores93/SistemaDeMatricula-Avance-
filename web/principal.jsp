<
<%-- 
    Document   : principal
    Created on : 29-jun-2015, 15:28:38
    Author     : JeanCarlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="conexionDB.*"%>


<%
// Leemos la variable de sesión 'validado'
    Boolean validado = (Boolean) session.getAttribute("validado");
// Si la variable de sesión 'validado' no ha
// sido creada o contiene un valor 'false'
    if (validado == null || !validado.booleanValue()) {
// Leemos la variable POST 'usuario'
        String usuario = request.getParameter("usuario");
// Leemos la variable POST 'contrasena'
        String contrasena = request.getParameter("contrasena");
// Si las variables POST 'usuario' y 'contrasena'
// existen y 'usuario' contiene texto
        if (usuario != null && contrasena != null && !usuario.equals("")) {
// Establecemos la variable de sessión 'usuario'
            session.setAttribute("usuario", usuario);
// Cargamos el Driver de SQLServer
 //          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
// Creamos una conección a MySQL, Sintaxis:
// jdbc:mysql://[servidor]:[puerto]/[base de datos], usuario, contraseña
//            Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Sales_DW;user=flores;password=flores123;");
// Creamos un Statement

          //  Statement stmt = conexion.createStatement();
// Cramos un Resultado de Consulta SQL
           ResultSet tabla =null;
            BaseDeDatos.conectar();
            String instruccion= "SELECT codigo_alumno,nombre,apellido FROM datos_alumnos WHERE codigo_alumno='" + usuario + "' AND contrasena='" + contrasena + "'";
            tabla=BaseDeDatos.consultar(instruccion);
// Si el resultado contiene filas
            while (tabla.next()) {
            // 'validado' a true
                validado = new Boolean(true);
            	session.setAttribute("nombre", tabla.getString(2));
            	session.setAttribute("apellido", tabla.getString(3));
            	};
// Cerramos el Statment
          //  stmt.close();
// Cerramos la conexión
           // conn.close();
        }
    }
// Si la variable de sesión
// 'validado' no ha sido creada
    if (validado == null) // Establecemos la variable local
    // 'validado' a true
    {
        validado = new Boolean(false);
    }
// Añadimos la variable de sesión 'validado'
// con el contenido de la variable local
    session.setAttribute("validado", validado);
    
// Si la variable local 'validado' es false
    if (!validado.booleanValue()) // Redireccionamos a la página login.jsp
    {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>MENU PRINCIPAL</title>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script src="js/tether.min.js" ></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        
        <script type="text/javascript"src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
        <script src="js/bootstrap-select.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/i18n/defaults-*.min.js"></script>  
        <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/fondo.css"/>
        <style>
        td{
        text-align: center;
        }
        table{
        margin-left:50px;
        }
        #enlace{
        margin-left: 1200px;
        margin-top: 1000px;
        
        }
        </style>
    </head>
    <body>
    <div>
    <center><p><h1>Bienvenido al Módulo Principal</h1></p></center>
    </div>
    
       
        <%
            HttpSession sesion = request.getSession();
            String nombre = (String) sesion.getAttribute("nombre");
            String codigo = (String) sesion.getAttribute("usuario");
            String apellido = (String) sesion.getAttribute("apellido");
            out.println("<div id='alumno'>Usuario Activo: " +nombre+""+apellido+"</div>");
            out.println("<div id='codigo'>Codigo: " +codigo+"</div>");
        %>
	        <a id="enlace" href="salir.jsp"> Cerrar Sesión</a>
    
        
        
        
        <table  cellspacing="100">
        
        <tr>
        
        <td> <a href="RegistrarMatricula.jsp"><img src="img/matricula.jpg" border="0">
                    <br>Realizar Matrícula</a>
                    </td>
                    
            <td> <a href="MallaCurricular.jsp"><img src="img/mallaIcono.jpg" border="0">
                    <br>Malla Curricular</a>
            </td>
               <td> <a href="RecordDeNotas.jsp"><img src="img/recordDeNotas.jpg" border="0">
                    <br>Record de Notas</a>
            </td>
                    
                     <td> <a href="Horarios.jsp"><img src="img/horarioIcono.jpg" border="0">
                    <br>Horarios</a>
            </td>
            
            
        
           
                  
            <td> <a href="PlanaDocente.jsp"><img src="img/docente.png" border="0">
                    <br>Plana Docente</a>
           </td>
           
        </tr>
     
    </table>
  
    </body>
</html>