package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class principal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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
// Cargamos el Driver de MySQL
            Class.forName("com.mysql.jdbc.Driver");
// Creamos una conección a MySQL, Sintaxis:
// jdbc:mysql://[servidor]:[puerto]/[base de datos], usuario, contraseña
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/luz_verde", "root", "root");
// Creamos un Statement
            Statement stmt = conn.createStatement();
// Cramos un Resultado de Consulta SQL
            ResultSet rs = stmt.executeQuery(
                    "SELECT usuario FROM usuarios "
                    + "WHERE usuario='" + usuario + "' "
                    + "AND contrasena='" + contrasena + "'"
            );
// Si el resultado contiene filas
            if (rs.next()) // Establecemos la variable local
            // 'validado' a true
            
                validado = new Boolean(true);
            
// Cerramos el Statment
            stmt.close();
// Cerramos la conexión
            conn.close();
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Bienvenido</title>\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"themes/smoothness/jquery-ui.css\">-->\n");
      out.write("        <script src=\"js/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <!--<script src=\"js/jquery-ui.js\"></script>-->\n");
      out.write("        <script>\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body><p>Bienvenido al Módulo de Gestión de Estudiante</p>\n");
      out.write("       \n");
      out.write("        ");

            HttpSession sesion = request.getSession();
            String nombre = (String) sesion.getAttribute("usuario");
            out.println("Usuario Activo:" + nombre);
        
      out.write("\n");
      out.write("        \n");
      out.write("  \n");
      out.write("        <a href=\"salir.jsp\">\n");
      out.write("            Cerrar Sesión</a>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <table  border=\"0\">\n");
      out.write("        <tr>\n");
      out.write("            <td> <a href=\"ingresarCliente.jsp\"><img src=\"img/add.png\" border=\"0\">\n");
      out.write("                    <br>Adición</a>\n");
      out.write("            </td>\n");
      out.write("           <!-- <td> <a href=\"ingresarCompra.jsp\"><img src=\"img/buyadd.png\" border=\"0\">\n");
      out.write("                    <br>Buscar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"ingresarProducto.jsp\"><img src=\"img/addbeer.png\" border=\"0\">\n");
      out.write("                    <br>Editar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"ingresarVentas.jsp\"><img src=\"img/saleadd.png\" border=\"0\">\n");
      out.write("                    <br>Eliminar</a>-->\n");
      out.write("        </tr>\n");
      out.write("            <!--    <tr>\n");
      out.write("            <td> <a href=\"buscarClienteNombre.jsp\"><img src=\"img/find.png\" border=\"0\">\n");
      out.write("                    <br>Adición</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"buscarCompraProveedor.jsp\"><img src=\"img/buyfind.png\"  border=\"0\">\n");
      out.write("                    <br>Buscar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"buscarProductoNombre.jsp\"><img src=\"img/findbeer.png\" border=\"0\">\n");
      out.write("                    <br>Editar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"buscarVentaFecha.jsp\"><img src=\"img/salefind.png\" border=\"0\">\n");
      out.write("                    <br>Eliminar</a>\n");
      out.write("        </tr>\n");
      out.write("                <tr>\n");
      out.write("            <td> <a href=\"eliminarCliente.jsp\"><img src=\"img/delete.png\" border=\"0\">\n");
      out.write("                    <br>Adición</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"eliminarProducto.jsp\"><img src=\"img/deletebeer.png\" border=\"0\">\n");
      out.write("                    <br>Buscar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"modificarCliente.jsp\"><img src=\"img/edit.png\" border=\"0\">\n");
      out.write("                    <br>Editar</a>\n");
      out.write("            </td>\n");
      out.write("            <td> <a href=\"modificarProducto.jsp\"><img src=\"img/editbeer.png\" border=\"0\">\n");
      out.write("                    <br>Eliminar</a>\n");
      out.write("        </tr>-->\n");
      out.write("    </table>\n");
      out.write("  \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
