
<%-- 
    Document   : login
    Created on : 29-jun-2015, 0:22:26
    Author     : JeanCarlo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.*,java.io.*,java.net.*,java.sql.*,java.util.*"%>
<%
// Leemos la variable de sessión 'validado'
    Boolean validado = (Boolean) session.getAttribute("validado");
// Si la variable de session 'valiadado' ya
// ha sido creada o el valor es 'true'
    if (validado != null && validado.booleanValue()) // Redireccionamos a la página principal.jsp
    {
        response.sendRedirect("principal.jsp");
    }
%>


<!DOCTYPE html >
<html lang="en" class="no-js">
   <center>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <meta name="description" content="Simple ideas for enhancing text input interactions" />
        <meta name="keywords" content="input, text, effect, focus, transition, interaction, inspiration, web design" />
        <meta name="author" content="Codrops" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/set1.css" />
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/example.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script  type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/jquery.slides.min.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <!--<link rel="stylesheet" href="css/style.css" type="text/css" />-->
        <!--<link rel="stylesheet" href="../font-awesome.min.css" type="text/css" />-->
        <!--<link rel="stylesheet" href="example.css" type="text/css" />-->

       <script>
    $(function() {
      $('#slides').slidesjs({
        width: 700,
        height: 300,
        play: {
          active: true,
          auto: true,
          interval: 4000,
          swap: true
        }
      });
    });
  </script>
    
            <style>
            
            table{border-collapse: separate;
  border-spacing: 30px;
  
  }
  +td{
  padding-left: 10px;
  }
             #td2{
             border-left: black 3px solid;
             padding-left:90px;
             }
                h1,h2,h3{
                    color: black;
                }
                .imagen{
                    border-radius: 10px;
                } 
            body {
                -webkit-font-smoothing: antialiased;
                font: normal 15px/1.5 "Helvetica Neue", Helvetica, Arial, sans-serif;
                color: #232525;
                padding-top:70px;
                margin-left: 150px;
                 background : whitesmoke;
            }

            #slides {
                display: none;
                border-radius: 6px;
            }

            #slides .slidesjs-navigation {
                margin-top:5px;
            }

            a.slidesjs-next,
            a.slidesjs-previous,
            a.slidesjs-play,
            a.slidesjs-stop {
                background-image: url(img/btns-next-prev.png);
                background-repeat: no-repeat;
                display:block;
                width:12px;
                height:18px;
                overflow: hidden;
                text-indent: -9999px;
                float: left;
                margin-right:5px;
            }

            a.slidesjs-next {
                margin-right:10px;
                background-position: -12px 0;
            }

            a:hover.slidesjs-next {
                background-position: -12px -18px;
            }

            a.slidesjs-previous {
                background-position: 0 0;
            }

            a:hover.slidesjs-previous {
                background-position: 0 -18px;
            }

            a.slidesjs-play {
                width:15px;
                background-position: -25px 0;
            }

            a:hover.slidesjs-play {
                background-position: -25px -18px;
            }

            a.slidesjs-stop {
                width:18px;
                background-position: -41px 0;
            }

            a:hover.slidesjs-stop {
                background-position: -41px -18px;
            }

            .slidesjs-pagination {
                margin: 7px 0 0;
                float: right;
                list-style: none;
            }

            .slidesjs-pagination li {
                float: left;
                margin: 0 1px;
            }

            .slidesjs-pagination li a {
                display: block;
                width: 13px;
                height: 0;
                padding-top: 13px;
                background-image: url(img/pagination.png);
                background-position: 0 0;
                float: left;
                overflow: hidden;
            }

            .slidesjs-pagination li a.active,
            .slidesjs-pagination li a:hover.active {
                background-position: 0 -13px
            }

            .slidesjs-pagination li a:hover {
                background-position: 0 -26px
            }

            #slides a:link,
            #slides a:visited {
                color: #333
            }

            #slides a:hover,
            #slides a:active {
                color: #9e2020
            }

            .navbar {
                overflow: hidden
            }
        </style>
    
   
</head>
<body>
<center>

    <div class='title'>
            <H2>UNIVERSIDAD NACIONAL FEDERICO VILLARREAL</H2>
            <H3>FCULTAD DE INGENIERIA INDUSTRIAL Y DE SISTEMAS</H3>
            <h1>2017</h1>
        </div>
    <%
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
    %>

    <div  class="container">
        <div id="slides">
            <img class="imagen"src="img/sist1.jpg">
            <img class="imagen"src="img/sist2.jpg">
            <img class="imagen"src="img/sist3.jpg">
            <img class="imagen"src="img/sist4.jpg">
        </div>
        
    </div>



    
    <img src="img/sist5.png">
    
    <table cellspacing='10'>
    <tr>
    <td id="td1">
    <div id='fform'>
    <form id="myform" method="post" action="principal.jsp" name="formLogin">
        <section class="content">
            <h2>DATOS DEL ALUMNO</h2>
            <span class="input input--hoshi">
                <input class="input__field input__field--hoshi" type="text" id="input-1" name="usuario" value="<%=usuario%>" />
                <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-1">
                    <span class="input__label-content input__label-content--hoshi">CODIGO</span>
                </label>
            </span>
            <br>      
            <span class="input input--hoshi">
                <input class="input__field input__field--hoshi" type="password" id="input-1" name="contrasena"/>
                <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-1">
                    <span class="input__label-content input__label-content--hoshi">CONTRASEÑA</span>
                </label>
            </span><br>

            <!-- <button type="button" class="btn btn-primary btn-lg">Large button</button>-->
            <center><input class="btn btn-primary btn-lg" id="boton" type="submit" name="enviar" value="enviar"/></center>
        </section>
    </form>
    </div>
    </td>
    <td id="td2">
    <div id='form1'>
    <form id="myform" method="post" action="principalUsuario.jsp" name="formLogin">
        <section class="content">
           <center><h2>DATOS DEL USUARIO</h2></center> 
            <span class="input input--hoshi">
                <input class="input__field input__field--hoshi" type="text" id="input-1" name="usuario" value="<%=usuario%>" />
                <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-1">
                    <span class="input__label-content input__label-content--hoshi">USUARIO</span>
                </label>
            </span>
            <br>      
            <span class="input input--hoshi">
                <input class="input__field input__field--hoshi" type="password" id="input-1" name="contrasena"/>
                <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-1">
                    <span class="input__label-content input__label-content--hoshi">CONTRASEÑA</span>
                </label>
            </span><br>

            <!-- <button type="button" class="btn btn-primary btn-lg">Large button</button>-->
            <center><input class="btn btn-primary btn-lg" id="boton" type="submit" name="enviar" value="enviar"/></center>
        </section>
    </form>
</div>
    </td>
    
    </tr>
    
    </table>
    

    <script src="js/classie.js"></script>

    <script>
       (function () {
           // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
           if (!String.prototype.trim) {
               (function () {
                   // Make sure we trim BOM and NBSP
                   var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
                   String.prototype.trim = function () {
                       return this.replace(rtrim, '');
                   };
               })();
           }
           [].slice.call(document.querySelectorAll('input.input__field')).forEach(function (inputEl) {
               // in case the input is already filled..
               //var elValorEs = inputEl.value.trim();
               //alert(elValorEs);
               if (inputEl.value.trim() !== '') {
                   classie.add(inputEl.parentNode, 'input--filled');
               }
               // events:
               inputEl.addEventListener('focus', onInputFocus);
               inputEl.addEventListener('blur', onInputBlur);
           });
           function onInputFocus(ev) {
               classie.add(ev.target.parentNode, 'input--filled');
           }
           function onInputBlur(ev) {
               if (ev.target.value.trim() === '') {
                   classie.remove(ev.target.parentNode, 'input--filled');
               }
           }
       })();
    </script>

</center>
</body>
 </center>
</html>