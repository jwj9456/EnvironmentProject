// 모든 데이터베이스 close

package jdbc;


import java.sql.*;
import java.sql.SQLException;

public class JdbcUtil {
	public static void close (ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch(SQLException ex) { }
		}
	}
	
	public static void close (Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			} catch(SQLException ex) { }
		}
	}
	
	/*
	 * public static void close (PreparedStatement pstmt) throws SQLException {
	 * if(pstmt != null) { pstmt.close(); } }
	 */
	
	public static void close (Connection conn) {
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException ex) { }
		}
	}
	
	public static void rollback (Connection conn) {
		if(conn != null) {
			try {
				conn.rollback();
			} catch(SQLException ex) { }
		}
	}
	
}
