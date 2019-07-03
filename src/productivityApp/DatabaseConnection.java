package productivityApp;

import java.sql.*;

public class DatabaseConnection {
	
	public static  Connection connectToDB() throws SQLException, ClassNotFoundException  {
		  String db = "jdbc:mysql://localhost:3306/productivity";
		  String user = "root"; 
		  String password = "roya";
		  Connection con = null;

		  try {
		    Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection(db, user, password);
		/*     out.println ("database successfully opened."); */
		  }
		  catch(SQLException e) {
		/*     out.println("SQLException caught: " +e.getMessage()); */
		  }
		  
		  return con;
	}

}
