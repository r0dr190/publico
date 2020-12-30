package cl.awakelab.negocio.conexion;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

class Conexion {

	public static void main 
	(String args []) throws SQLException
	{
		DriverManager.registerDriver
		(new oracle.jdbc.driver.OracleDriver());

		Connection conn = DriverManager.getConnection
				("jdbc:oracle:thin:@localhost:1521:xe", 
						"capacitacion", 
						"1234");

		Statement stmt = conn.createStatement();
		ResultSet rset =  stmt.executeQuery
		("select BANNER from SYS.V_$VERSION");
		
		while (rset.next())
			System.out.println 
			(rset.getString(1));   

		stmt.close();
	}
}
