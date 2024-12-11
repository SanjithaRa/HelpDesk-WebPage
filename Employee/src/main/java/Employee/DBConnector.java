package Employee;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

	
	private static String url="jdbc:mysql://localhost:3306/emloyeedb";
	private static String user="root";
	private static String password="sanjitha";
	
	private static Connection con;//variable that returns the connection
	
	
	public static Connection getConnection() {
		try {
			//load the jdbc driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//open a connection
			con= DriverManager.getConnection(url, user, password);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Database connection failed");
		}
		return con;
	}
}
