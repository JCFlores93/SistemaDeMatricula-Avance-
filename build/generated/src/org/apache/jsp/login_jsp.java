package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.*;
import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("/* global slow */\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

// Leemos la variable de sessión 'validado'
    Boolean validado = (Boolean) session.getAttribute("validado");
// Si la variable de session 'valiadado' ya
// ha sido creada o el valor es 'true'
    if (validado != null && validado.booleanValue()) // Redireccionamos a la página principal.jsp
    {
        response.sendRedirect("principal.jsp");
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html >\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!--<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">-->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <meta name=\"description\" content=\"Simple ideas for enhancing text input interactions\" />\n");
      out.write("        <meta name=\"keywords\" content=\"input, text, effect, focus, transition, interaction, inspiration, web design\" />\n");
      out.write("        <meta name=\"author\" content=\"Codrops\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/normalize.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.2.0/css/font-awesome.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/demo.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/set1.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estilos.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.1.1.min.js\" integrity=\"sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script  type=\"text/javascript\" src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\n");
      out.write("        <script src=\"jquery.slides.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/slider.js\"></script>\n");
      out.write("        <script src=\"js/tether.min.js\" integrity=\"sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" integrity=\"sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" integrity=\"sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ\" crossorigin=\"anonymous\"/>\n");
      out.write("       <!--<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" />-->\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"../font-awesome.min.css\" type=\"text/css\" />-->\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"example.css\" type=\"text/css\" />-->\n");
      out.write("        \n");
      out.write("      \n");
      out.write("       <!-- <script src=\"js/jquery.backstretch.js\"></script>-->\n");
      out.write("        \n");
      out.write("       <style>\n");
      out.write("            /* Prevents slides from flashing */\n");
      out.write("            #slides {\n");
      out.write("                display:none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("       <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#slides').slidesjs({\n");
      out.write("                    width: 400,\n");
      out.write("                    height: 400,\n");
      out.write("                    navigation: false,\n");
      out.write("                    start: 1,\n");
      out.write("                    play: {\n");
      out.write("                        auto: true,\n");
      out.write("                        active: true,\n");
      out.write("                        interval: 2000,\n");
      out.write("                        swap: true\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("       <!-- <style>\n");
      out.write("            #myform{\n");
      out.write("                width:300px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                label{\n");
      out.write("                    display:block;\n");
      out.write("                }\n");
      out.write("                input,textarea{\n");
      out.write("                    width:100%;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        ");

            // Leemos la variable de sesión 'usuario'
            String usuario = (String) session.getAttribute("usuario");
            // Si las variable de sesión 'validado'
            // y 'usuario' ya habia sido creadadas
            if (validado != null && usuario != null) // Mostramos mensaje de advertencia
            {
                out.println("<p>Usuario o contraseña incorrectos</p>");
            }
            // Si la variable de sesión usuario
            // no ha sido creada
            if (usuario == null) // Instanciamos la variable local 'usuario'
            {
                usuario = "";
            }
            // Borramos la variable de sesión 'usuario'
            session.setAttribute("usuario", null);
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"contenedor-slider\" class=\"contenedor-slider\">\n");
      out.write("<div id=\"slider\" class=\"slider\">\n");
      out.write("    <section class=\"slider__section\"><img src=\"http://welltechnically.com/wp-content/uploads/2013/08/android-wallpapers-700x300.jpg\" class=\"slider__img\"></section>\n");
      out.write("    <section class=\"slider__section\"><img src=\"http://pgembeddedsystems.org/images/vlsifront.png\" class=\"slider__img\"></section>\n");
      out.write("    <section class=\"slider__section\"><img src=\"http://welltechnically.com/wp-content/uploads/2013/09/android-widescreen-wallpaper-14165-hd-wallpapers-700x300.jpg\" class=\"slider__img\"></section>\n");
      out.write("    <section class=\"slider__section\"><img src=\"http://youghaltennisclub.ie/wp-content/uploads/2014/06/Tennis-Wallpaper-High-Definition-700x300.jpg\" class=\"slider__img\"></section>\n");
      out.write("  </div>\n");
      out.write("  <div id=\"btn-prev\" class=\"btn-prev\">&#60;</div>\n");
      out.write("  <div id=\"btn-next\" class=\"btn-next\">&#62;</div>\n");
      out.write(" </div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("        <h1>UNFV - FIIS</h1>\n");
      out.write("        <img src=\"img/luzverde.jpg\">\n");
      out.write("        <form id=\"myform\" method=\"post\" action=\"principal.jsp\" name=\"formLogin\">\n");
      out.write("            <section class=\"content\">\n");
      out.write("                <h1>DATOS DEL USUARIO</h1>\n");
      out.write("                <span class=\"input input--hoshi\">\n");
      out.write("                    <input class=\"input__field input__field--hoshi\" type=\"text\" id=\"input-1\" name=\"usuario\" value=\"");
      out.print(usuario);
      out.write("\" />\n");
      out.write("                    <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-1\">\n");
      out.write("                        <span class=\"input__label-content input__label-content--hoshi\">CODIGO</span>\n");
      out.write("                    </label>\n");
      out.write("                </span>\n");
      out.write("                <br>      \n");
      out.write("                <span class=\"input input--hoshi\">\n");
      out.write("                    <input class=\"input__field input__field--hoshi\" type=\"password\" id=\"input-2\" name=\"contrasena\"/>\n");
      out.write("                    <label class=\"input__label input__label--hoshi input__label--hoshi-color-2\" for=\"input-2\">\n");
      out.write("                        <span class=\"input__label-content input__label-content--hoshi\">CONTRASEÑA</span>\n");
      out.write("                    </label>\n");
      out.write("                </span><br>\n");
      out.write("               \n");
      out.write("               <!-- <button type=\"button\" class=\"btn btn-primary btn-lg\">Large button</button>-->\n");
      out.write("                <input class=\"btn btn-primary btn-lg\" id=\"boton\" type=\"submit\" name=\"enviar\" value=\"enviar\"/>\n");
      out.write("            </section>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"js/classie.js\"></script>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            (function () {\n");
      out.write("                // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim\n");
      out.write("                if (!String.prototype.trim) {\n");
      out.write("                    (function () {\n");
      out.write("                        // Make sure we trim BOM and NBSP\n");
      out.write("                        var rtrim = /^[\\s\\uFEFF\\xA0]+|[\\s\\uFEFF\\xA0]+$/g;\n");
      out.write("                        String.prototype.trim = function () {\n");
      out.write("                            return this.replace(rtrim, '');\n");
      out.write("                        };\n");
      out.write("                    })();\n");
      out.write("                }\n");
      out.write("                [].slice.call(document.querySelectorAll('input.input__field')).forEach(function (inputEl) {\n");
      out.write("                    // in case the input is already filled..\n");
      out.write("                    var elValorEs = inputEl.value.trim();\n");
      out.write("                    alert(elValorEs);\n");
      out.write("                    if (inputEl.value.trim() !== '') {\n");
      out.write("                        classie.add(inputEl.parentNode, 'input--filled');\n");
      out.write("                    }\n");
      out.write("                    // events:\n");
      out.write("                    inputEl.addEventListener('focus', onInputFocus);\n");
      out.write("                    inputEl.addEventListener('blur', onInputBlur);\n");
      out.write("                });\n");
      out.write("                function onInputFocus(ev) {\n");
      out.write("                    classie.add(ev.target.parentNode, 'input--filled');\n");
      out.write("                }\n");
      out.write("                function onInputBlur(ev) {\n");
      out.write("                    if (ev.target.value.trim() === '') {\n");
      out.write("                        classie.remove(ev.target.parentNode, 'input--filled');\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            })();\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("</body>\n");
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
