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

@WebServlet("/CheckAllArticleServlet")
public class CheckAllArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CheckAllArticleServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArticleService articleService = new ArticleService();
		try {
			List<Article> list = articleService.findAllArticle();
			request.setAttribute("list",list);
			request.setAttribute("BZ", 0);
			request.getRequestDispatcher("/backstage2/ht_wzcx.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
