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
//                       Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Sales_DW;user=flores;password=flores123;");
           // Creamos un Statement

                     //  Statement stmt = conexion.createStatement();
           // Cramos un Resultado de Consulta SQL
            ResultSet tabla =null;
            BaseDeDatos.conectar();
            String instruccion= "SELECT usuario FROM usuarios WHERE usuario='" + usuario + "' AND contraseña='" + contrasena + "'";
            tabla=BaseDeDatos.consultar(instruccion);
// Si el resultado contiene filas
            while (tabla.next()) {
            // 'validado' a true
            
                validado = new Boolean(true);
            	
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
        <title>MENU PRINCIPAL - USUARIO</title>
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
        
    </head>
    <body><p>Bienvenido al Módulo de Gestión de Estudiante</p>
       
        <%
            HttpSession sesion = request.getSession();
            String nombre = (String) sesion.getAttribute("usuario");
            out.println("Usuario Activo:" + nombre);
        %>
        
  
        <a href="salir.jsp">
            Cerrar Sesión</a>
    
        
        
        
        <table  border="0">
        <tr>
            <!-- <td> <a href="ingresarCliente.jsp"><img src="img/add.png" border="0">
                    <br>Adición</a>
            </td>
           <td> <a href="ingresarCompra.jsp"><img src="img/buyadd.png" border="0">
                    <br>Buscar</a>
            </td>
            <td> <a href="ingresarProducto.jsp"><img src="img/addbeer.png" border="0">
                    <br>Editar</a>
            </td>
            <td> <a href="ingresarVentas.jsp"><img src="img/saleadd.png" border="0">
                    <br>Eliminar</a>-->
        </tr>
            <!--  <tr>
            <td> <a href="buscarClienteNombre.jsp"><img src="img/find.png" border="0">
                    <br>Buscar Cliente</a>
            </td>  
            <td> <a href="buscarCompraProveedor.jsp"><img src="img/buyfind.png"  border="0">
                    <br>Buscar</a>
            </td>
            <td> <a href="buscarProductoNombre.jsp"><img src="img/findbeer.png" border="0">
                    <br>Editar</a>
            </td>
            <td> <a href="buscarVentaFecha.jsp"><img src="img/salefind.png" border="0">
                    <br>Eliminar</a>-->
        </tr>
            <!--
                <tr>
            <td> <a href="eliminarCliente.jsp"><img src="img/delete.png" border="0">
                    <br>Adición</a>
            </td>
            <td> <a href="eliminarProducto.jsp"><img src="img/deletebeer.png" border="0">
                    <br>Buscar</a>
            </td>
           
            <td> <a href="modificarCliente.jsp"><img src="img/edit.png" border="0">
                    <br>Editar</a>
            </td> -->
            <td> <a href="GestionEstudiantes.jsp"><img src="img/matricula.jpg" border="0">
                    <br>GESTION DE ESTUDIANTES</a>
        </tr>
    </table>
  
    </body>
</html>