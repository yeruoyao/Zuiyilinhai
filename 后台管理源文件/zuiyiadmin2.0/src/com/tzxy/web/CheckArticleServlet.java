package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Article;
import com.tzxy.service.ArticleService;

@WebServlet("/CheckArticleServlet")
public class CheckArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckArticleServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		ArticleService articleService = new ArticleService();
		try {
			Article article = articleService.findArticle(author,title);
			request.setAttribute("article", article);
			request.setAttribute("BZ", 1);
			request.getRequestDispatcher("/backstage2/ht_wzcx.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
