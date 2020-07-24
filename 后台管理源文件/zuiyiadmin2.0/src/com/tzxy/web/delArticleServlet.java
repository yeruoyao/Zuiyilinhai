package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.ArticleService;

@WebServlet("/delArticleServlet")
public class delArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public delArticleServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id1 = request.getParameter("id");
		Integer id = Integer.valueOf(id1);
		ArticleService articleService = new ArticleService();
		try {
			boolean flag = articleService.delArticle(id);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/CheckArticleServlet");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 		doGet(request, response);
	}

}
