package appointment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

	//declaring variables and initializing them 
		private static String url="jdbc:mysql://localhost:3306/appointmentdb";
		private static String user="root";
		private static String password="sanjitha";
		
		private static Connection con;//variable that returns the connection
		
		//method to create the database connection
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
