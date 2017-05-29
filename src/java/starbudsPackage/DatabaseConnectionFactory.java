/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package starbudsPackage;

/**
 *
 * @author Mikaël
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionFactory {
	
	private static String dbURL="jdbc:mysql://localhost/starbuds";
	private static String dbUser="root";
	private static String dbPassword="root";
	
	public static Connection createConnection()
	{
		 Connection con=null;
		try{
			try {
				   Class.forName("com.mysql.jdbc.Driver");
				}
				catch(ClassNotFoundException ex) {
				   System.out.println("Error: unable to load driver class!");
				   System.exit(1);
				}			
		     con = DriverManager.getConnection(dbURL,dbUser,dbPassword);
		   }
		  catch(SQLException sqe){ System.out.println("Error: While Creating connection to database");sqe.printStackTrace();}
		return con;
	}

}