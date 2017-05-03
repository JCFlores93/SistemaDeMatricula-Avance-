<%@page import="conexionDB.*"%>
<%@page import="java.sql.ResultSet"%>
<% 
    String s_Curso = request.getParameter("cbo_Curso");
    String s_opc = request.getParameter("i_opc");
 if(s_opc.equals("1")){
%>
<select class="selectpicker" data-style="btn-primary" name="cbo_Seccion" id="i_Seccion" onchange="mostrarProfesor()" >
	<option value="">--seleccione--</option>
<%              ResultSet tabla = null;
                BaseDeDatos.conectar();
                
                String instruccion1="select s.descripcion from seccion s inner join detalle d"
                		+" on s.id_seccion=d.id_seccion inner join materias m"+
                		" on d.id_materia=m.id_materia where m.materia=\'"+s_Curso+"\'";
                System.out.println(instruccion1);
                tabla = BaseDeDatos.consultar(instruccion1);
                while (tabla.next()){
                System.out.println(tabla.getString(1));%>
                <option value="<%=tabla.getString(1)%>"><%=tabla.getString(1)%></option>
                <%};
                BaseDeDatos.desconectar();
            %>
</select>
<%};%>