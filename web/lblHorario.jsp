

<%@page import="conexionDB.BaseDeDatos"%>
<%@page import="java.sql.ResultSet"%>
<% 
    String s_Seccion = request.getParameter("profesor");
    String s_opc = request.getParameter("i_opc");
 if(s_opc.equals("1")){
                ResultSet tabla = null;
                BaseDeDatos.conectar();
               
                String instruccion1="select p.nombre,p.apellido from profesores p inner join detalle d"
                		+"on p.id_profesor=d.id_profesor inner join seccion s"+
                		"on d.id_profesor=s.id_seccion where s.descripcion=\'"+s_Seccion+"\'";
                tabla = BaseDeDatos.consultar(instruccion1);
                while (tabla.next()){
                     String n=tabla.getString(2);
%>
<label id='i_Horario' value="<%=n%>"><%=n%></label> <br>
                <%};
                BaseDeDatos.desconectar();
}   %>