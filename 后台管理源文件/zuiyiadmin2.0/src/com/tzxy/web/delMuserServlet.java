package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.matchService;

@WebServlet("/delMuserServlet")
public class delMuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public delMuserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id1 = request.getParameter("id");
		int id=Integer.valueOf(id1);
		matchService matchService = new matchService();
		try {
			boolean flag = matchService.delMuser(id);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/MMessageServlet");
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
