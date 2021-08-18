package members.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import members.model.Members;

public class MembersDao {
	public Members selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			pstmt = conn.prepareStatement(
					"select * from members where memberid = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Members member = null;
			if(rs.next()) {
				member = new Members(
						rs.getString("memberid"),
						rs.getString("password"),
						rs.getString("email"),
						toDate(rs.getTimestamp("regdate")));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}
	
	public void insert(Connection conn, Members member) throws SQLException {
		try(PreparedStatement pstmt = conn.prepareStatement("insert into members values(?,?,?,?)")) {
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getEmail());
			pstmt.setTimestamp(4, new Timestamp(member.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}
}
