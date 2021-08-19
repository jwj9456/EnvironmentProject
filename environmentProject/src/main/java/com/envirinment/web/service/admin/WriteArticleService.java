package com.envirinment.web.service.admin;

import java.sql.Connection;
import java.sql.SQLException;

import com.envirinment.web.entity.admin.NewsArticle;
import com.envirinment.web.entity.admin.NewsArticleDao;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteArticleService {
	private NewsArticleDao articleDao = new NewsArticleDao();
	
	public Integer write(WriteRequest req) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			NewsArticle article = new NewsArticle(null, req.getTitle(), req.getContent());
			NewsArticle savedArticle = articleDao.insert(conn, article);
			if(savedArticle == null) {
				throw new RuntimeException("fail to insert article");
			}
			
			conn.commit();
			
			return savedArticle.getNumber();
		}catch (SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(ex);
		}catch (RuntimeException ex) {
			JdbcUtil.rollback(conn);
			throw ex;
		}finally {
			JdbcUtil.close(conn);
		}
	}

}
