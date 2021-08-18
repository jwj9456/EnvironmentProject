package com.envirinment.web.entity.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;

public class NewsArticleDao {
	
	public NewsArticle insert(Connection conn, NewsArticle NewsArticle) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into NewsArticle values(num_seq.nextval,?,?)");
			pstmt.setString(1, NewsArticle.getTitle()); 
			pstmt.setString(2, NewsArticle.getContent());
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount > 0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select max(number) from NewsArticle"); 
				if(rs.next()) {
					Integer newNum = rs.getInt(1);
					return new NewsArticle(newNum,
							NewsArticle.getTitle(),
							NewsArticle.getContent());
				}
			}
			return null;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException{
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from NewsArticle");
			if(rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
	
	public List<NewsArticle> select(Connection conn, int startRow, int size) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from "
					+ "(select ROWNUM rnum,number,title from "
					+ "(SELECT * from ARTICLE ORDER by number desc) "
					+ "where rownum<=?) where rnum>=?");
			pstmt.setInt(1, startRow + size);
			pstmt.setInt(2, startRow + 1);
			rs = pstmt.executeQuery();
			List<NewsArticle> result = new ArrayList<>();
			while(rs.next()) {
				result.add(convertArticle(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private NewsArticle convertArticle(ResultSet rs) throws SQLException {
		return new NewsArticle(rs.getInt("number"),
								rs.getString("title"),
								rs.getString("content"));
	}
	
	public NewsArticle selectById(Connection conn, int no) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from NewsArticle where number = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			NewsArticle article = null;
			if(rs.next()) {
				article = convertArticle(rs);
			}
			return article;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}


