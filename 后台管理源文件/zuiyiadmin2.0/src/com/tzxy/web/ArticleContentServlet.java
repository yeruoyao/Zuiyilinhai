package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.ArticleService;


@WebServlet("/ArticleContentServlet")
public class ArticleContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ArticleContentServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id1 = request.getParameter("id");
		String state1 = request.getParameter("a");
		int id=Integer.valueOf(id1);
		int state=Integer.valueOf(state1);
		ArticleService articleService = new ArticleService();
		try {
			boolean flag = articleService.updateArticle(id,state);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/ArticleAllContentServlet");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
