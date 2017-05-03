

<%@page import="conexionDB.BaseDeDatos"%>
<%@page import="java.sql.ResultSet"%>
<%
	String s_Curso = request.getParameter("cbo_Curso");
	String s_Seccion = request.getParameter("cbo_Seccion");
	String s_opc = request.getParameter("i_opc");
	if (s_opc.equals("1")) {
		ResultSet tabla = null;
		BaseDeDatos.conectar();

		String instruccion1 = "select p.nombre,p.apellido,t.turno,h.horario_lunes,h.horario_martes"+
				",h.horario_miercoles,h.horario_jueves,h.horario_viernes,h.horario_sabado,m.id_materia,m.creditos from profesores p inner join detalle d"
				+ " on p.id_profesor=d.id_profesor inner join seccion s"
				+ " on d.id_seccion=s.id_seccion  inner join materias m"
				+" on d.id_materia=m.id_materia inner join turnos t"
				+" on d.id_turno=t.id_turno  inner join horarios h"
				+" on d.id_horario=h.id_horario where s.descripcion=\'" + s_Seccion + "\' and m.materia=\'"+s_Curso+"\'";

		tabla = BaseDeDatos.consultar(instruccion1);
		while (tabla.next()) {
			String nombreProfesor =tabla.getString(1)+""+ tabla.getString(2);
			String turno=tabla.getString(3);
			String horario ="Lunes :"+tabla.getString(4)+" / Martes : "+tabla.getString(5)+" / Miércoles : "+tabla.getString(6)+" / Jueves : "+tabla.getString(7)+" / Viernes :"+tabla.getString(8)+" / Sábado :"+tabla.getString(9);
			String codigo=tabla.getString(10);
			String creditos=tabla.getString(11);
		%>
<p>Código del Curso :<label  id='i_CodigoDelCurso1' name='<%=codigo%>' value="<%=codigo%>" ><%=codigo%></label></p><br>
<p>Profesor :<label id='i_Profesor1' value="<%=nombreProfesor%>"><%=nombreProfesor%></label></p><br>
<p>Turno :<label id='i_Turno1' value="<%=turno%>" name='<%=turno%>'><%=turno%></label></p><br>
<p>Horario :<label id='i_Horario1' value="<%=horario%>" name='<%=horario%>'><%=horario%></label></p><br>
<p>Créditos : <label id='i_Creditos1'  value="<%=nombreProfesor%>" name='<%=creditos%>'><%=creditos%></label></p>

<%
	}
		;
		BaseDeDatos.desconectar();
	}
%>