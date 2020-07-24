package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Article;
import com.tzxy.service.ArticleService;

@WebServlet("/ArticleAllContentServlet")
public class ArticleAllContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArticleAllContentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		ArticleService articleService = new ArticleService();
		int state=0;
	
		try {
			List<Article> list = articleService.findAllArticle(state);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/backstage2/ht_wzsh.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
