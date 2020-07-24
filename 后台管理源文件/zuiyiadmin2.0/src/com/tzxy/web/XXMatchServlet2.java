package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.matchService;

@WebServlet("/XXMatchServlet2")
public class XXMatchServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public XXMatchServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String mid1 = request.getParameter("mid");
		int state=2;
		int mid=Integer.valueOf(mid1);
		matchService matchService = new matchService();
		try {
			boolean flag = matchService.updateState(mid,2);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/MMessageServlet");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
