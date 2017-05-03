<%-- 
    Document   : Guardar
    Created on : 21-feb-2017, 1:23:42
    Author     : JeanCarlo
--%>

<%@page import="conexionDB.BaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%
	if (request.getParameter("REGISTRAR").compareTo("REGISTRAR") == 0) {
		int matricula=0;
		int codigoF=0 ;
		int numMatricula=0;
		HttpSession sesion = request.getSession();
		String codigo = (String) sesion.getAttribute("usuario");
		Calendar fecha = Calendar.getInstance();
        int año = fecha.get(Calendar.YEAR);
        int mes = fecha.get(Calendar.MONTH) + 1;
        int dia = fecha.get(Calendar.DAY_OF_MONTH);
		ArrayList<Integer> listaID = new ArrayList<Integer>();
		int cantidadDeFilas = Integer.parseInt(request.getParameter("CONTADOR"));
		int s = 1;
		String seccion = "seccion" + s;
		int a = 1;
		String asignatura = "asignatura" + a;
		int v = 3;

		ResultSet tabla1 = null;
		BaseDeDatos.conectar();
		String instruccion1 = "SELECT id_alumno from datos_alumnos  where codigo_alumno=\'"+codigo+"\'";
		System.out.println(instruccion1);
		tabla1 = BaseDeDatos.consultar(instruccion1);
		if(tabla1.next()) {
			codigoF =Integer.parseInt(tabla1.getString(1));
		}
		
		ResultSet tabla2 = null;
		String instruccion2 = "SELECT TOP 1 n_matricula from detalle_mat_alumn order by n_matricula desc";
		
		System.out.println(instruccion2);
		tabla2 = BaseDeDatos.consultar(instruccion2);
		if(tabla2.next()) {
			matricula=tabla2.getInt(1);
			if(matricula>=1){
				numMatricula =matricula+1;
				System.out.println(numMatricula);
			}else{
				numMatricula=1;
			}			
		}else{
			numMatricula=1;
		}

		
		for (int i = 1; i <= cantidadDeFilas; i++) {
			String asig = request.getParameter(asignatura);
			String secc = request.getParameter(seccion);
			ResultSet tabla3 = null;
			BaseDeDatos.conectar();
			String instruccion3 = "SELECT id_detalle from detalle d inner join materias m"
					+ " on d.id_materia=m.id_materia inner join seccion s"
					+ " on d.id_seccion=s.id_seccion where m.materia=\'" + asig + "\' and  s.descripcion=\'"
					+ secc + "\'";
			System.out.println(instruccion3);
			tabla3 = BaseDeDatos.consultar(instruccion3);
			if(tabla3.next()) {
				listaID.add(Integer.parseInt(tabla3.getString(1)));
			}

			v++;
			s++;
			a++;
			seccion = "seccion" + s;
			asignatura = "asignatura" + a;
			for(int z:listaID){
				out.println(""+z);
			}
		}
		for(int i = 0; i <cantidadDeFilas; i++){
			System.out.println(""+listaID.get(i));
		}

		for (int i = 0; i < cantidadDeFilas; i++) {
			String asig = request.getParameter(asignatura);
			String secc = request.getParameter(seccion);
			String instruccion4 = "INSERT INTO detalle_mat_alumn(id_alumno,tipo_matricula,fech_matricula,id_detalle,notas,n_matricula) values("+codigoF+",'REGULAR','"+año+"/"+mes+"/"+dia+"',"+listaID.get(i)+",0,"+numMatricula+")";
			System.out.println(instruccion4);
			BaseDeDatos.ejectuarInstruccion(instruccion4);
			v++;
			s++;
			a++;
			seccion = "seccion" + s;
			asignatura = "asignatura" + a;
		}
		
		%>
	
		<div class='container'>
			<table id='tabla' class="table">
				<thead class="thead-inverse">
					<tr>

						<th class='col-xs-1'>Tipo de Matricula</th>
						<th class='col-xs-2'>Fecha</th>
						<th class='col-xs-1'>Periodo</th>
						<th class='col-xs-1'>Asignatura</th>
						<th class='col-xs-4'>Seccion</th>
						<th class='col-xs-1'>Turno</th>
						<th class='col-xs-1'>creditos</th>
						<th class='col-xs-1'>Profesor</th>
					</tr>
				</thead>
				<tbody>		
		<%
		ResultSet tabla5 = null;
		BaseDeDatos.conectar();
		String instruccion5 = "select dma.tipo_matricula,dma.fech_matricula,m.materia,s.descripcion,pe.periodo,t.turno,m.creditos,p.nombre,p.apellido from datos_alumnos da "+
				"inner join detalle_mat_alumn dma on da.id_alumno=dma.id_alumno "+
				"inner join detalle d on dma.id_detalle=d.id_detalle "+
				"inner join materias m on d.id_materia=m.id_materia "+
				"inner join profesores p on d.id_profesor=p.id_profesor "+
				"inner join turnos t on d.id_turno=t.id_turno " +
				"inner join periodos pe on d.id_periodo=pe.id_periodo "+
				"inner join seccion s on d.id_seccion=s.id_seccion "+
				"where da.codigo_alumno=\'"+codigo+"\' and dma.n_matricula=\'"+numMatricula+"\'";
		System.out.println(instruccion5);
		tabla5 = BaseDeDatos.consultar(instruccion5);
		while(tabla5.next()) {
			%>
		<tr>
		<td class='col-xs-1'><input type="TEXT" name="periodo1"
			value="<%=tabla5.getString(1)%>" id='p1' readonly/></td>
		<td class='col-xs-2'><input type="TEXT" name="codigo1"
			value="<%=tabla5.getString(2)%>" id='c1' readonly/></td>
		<td class='col-xs-1'><input type="TEXT" name="turno1"
			value="<%=tabla5.getString(5)%>" id='t1'readonly /></td>
		<td class='col-xs-1'><input type="TEXT" name="seccion1"
			value="<%=tabla5.getString(3)%>" id='s1' readonly/></td>
		<td class='col-xs-4'><input type="TEXT" name="asignatura1"
			value="<%=tabla5.getString(5)%>" id='a1' readonly/></td>
		<td class='col-xs-1'><input type="TEXT" name="credito1"
			value="<%=tabla5.getString(6)%>" id='cr1' readonly /></td>
		<td class='col-xs-1'><input readonly type="TEXT" name="vez1" value="<%=tabla5.getString(7)%>"
			 /></td>
			 <td class='col-xs-1'><input type="TEXT" name="credito1"
			value="<%=tabla5.getString(8)%><%=tabla5.getString(9)%>" id='cr1' /></td>
				
	</tr>
			<% 
	
		}

		
		

	}
%>
<form action='principal.jsp' method='post'>
<div class='form-group'>
<input id='ibutton' class='btn btn-primary btn-lg' type='submit' value='regresar' name='Ok'/>
</div>
</form>

<!DOCTYPE html>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>MATRICULA</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/tether.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/i18n/defaults-*.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css" href="css/fondo.css" />

</head>
<body>
	<center><h1>Reporte de Matricula</h1></center>
</body>
</html>