package conexionDB;
import java.sql.*;

public class BaseDeDatos {
	  static Connection conexion = null;
	    
	   
	    
	    //CONECTAR A LA BASE DE DATOS DE LUZ VERDE
	    public static void conectar() {
	    	try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				String connectionUrl="jdbc:sqlserver://localhost:1433;databaseName=matricula;user=flores;password=flores123;";
				conexion=DriverManager.getConnection(connectionUrl);
			} catch (SQLException ex) {
				// TODO: handle exception
				System.out.println("SQL Exception :"+ex.toString());
			}catch(ClassNotFoundException cE){
				System.out.println("Class Not Found Exception :"+cE.toString());
			}
			if(conexion!=null){System.out.println("conexion exitossa");}else{System.out.println("falló la conexión");}
	    }

	    //DESCONECTAR LA BASE DE DATOS DE LUZ VERDE
	    public static void desconectar() {
	        try {
	            conexion.close();
	        } catch (Exception e) {
	        }
	    }

	    //PARA ELIMINAR E INSERTAR
	    public static void ejectuarInstruccion(String instruccion) {
	        try {
	            Statement sentencia = conexion.createStatement();
	            sentencia.executeUpdate(instruccion);
	        } catch (Exception ex) {
	            System.out.println("Error al ejecutar la instruccion SQL");
	        }
	    }

	    //PARA LA INSTRUCCION SELECT
	    public static ResultSet consultar(String instruccion) {
	        ResultSet resultado;
	        try {
	            Statement sentencia = conexion.createStatement();
	            resultado = sentencia.executeQuery(instruccion);
	        } catch (Exception ex) {
	            System.out.println("Error al ejecutar la instruccion SQL");
	            return null;
	        }

	        return resultado;
	    }
}
