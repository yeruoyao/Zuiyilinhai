package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.tzxy.domain.Article;
import com.tzxy.utils.JdbcUtil;

public class ArticleDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public List<Article> findAllArticle() throws SQLException {
		String sql="select * from article";
		List<Article> query = qr.query(sql, new BeanListHandler<Article>(Article.class));
		return query;
		
	}
	public Article findArticle(String author, String title) throws SQLException {
		String sql="select * from article where author=? and title=?";
		Article query = qr.query(sql, new BeanHandler<Article>(Article.class),author,title);
		return query;
		
	}
	public int delArticle(Integer id) throws SQLException {
		String sql="delete from article where id=?";
		int update = qr.update(sql,id);
		return update;
		
	}
	public List<Article> getAllContent(int state) throws SQLException {
		String sql="select * from article where state=?";
		List<Article> query = qr.query(sql, new BeanListHandler<Article>(Article.class),state);
		return query;
		
	}
	public int updateArticle(int id, int state) throws SQLException {
		String sql="update article set state=? where id=?";
		int update = qr.update(sql,state,id);
		return update;
	}

}
