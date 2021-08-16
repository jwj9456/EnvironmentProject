package jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
	// 다른 클래스들도 쉽게 db에 접근할 수 있도록 만들었음.
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:apache:commons:dbcp:environment");
	}
}
