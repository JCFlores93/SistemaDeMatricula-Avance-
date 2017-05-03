<%@page import="conexionDB.*"%>
<%@page import="java.sql.ResultSet"%>
<% 
	String s_año=request.getParameter("año");
    String s_Ciclo = request.getParameter("cbo_Ciclo");
    String s_opc = request.getParameter("i_opc");
 if(s_opc.equals("1")){
	
%>
<select class="selectpicker" data-style="btn-primary" name="cbo_Curso" id="i_Curso" onchange="combo_seccion()" >
	<option value="">--seleccione--</option>
<%              ResultSet tabla = null;
                BaseDeDatos.conectar();
                
                String instruccion1="select m.materia from detalle d"+ 
                		" inner join periodos p on d.id_periodo=p.id_periodo "+
                		" inner join materias m on d.id_materia=m.id_materia "+
                		" where m.año like '"+s_año+"%' and p.ciclo="+s_Ciclo+" ";
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
