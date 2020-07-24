package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.ArticleDao;
import com.tzxy.domain.Article;

public class ArticleService {
private ArticleDao dao = new ArticleDao();



	public List<Article> findAllArticle() throws SQLException {
		
		List<Article> findAllArticle = dao.findAllArticle();
		return findAllArticle;
		
	}

	public Article findArticle(String author, String title) throws SQLException {
		Article findArticle = dao.findArticle(author,title);
		return findArticle;
		
	}

	public boolean delArticle(Integer id) throws SQLException {
		int flag = dao.delArticle(id);
		return flag>0?true:false;
		
	}

	public List<Article> findAllArticle(int state) throws SQLException {
		List<Article> allContent = dao.getAllContent(state);
		return allContent;
	}

	public boolean updateArticle(int id, int state) throws SQLException {
		int updateArticle = dao.updateArticle(id,state);
		return updateArticle>0?true:false;
	}

}
