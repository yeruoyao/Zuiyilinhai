package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Match;
import com.tzxy.service.matchService;


@WebServlet("/delMatchServlet2")
public class delMatchServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public delMatchServlet2() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String mid1 = request.getParameter("mid");
		int mid = Integer.valueOf(mid1);
		int mid2 = mid;
		matchService matchService = new matchService();
		
		try {
			Match findMatch = matchService.findMatch(mid);
			boolean flag = matchService.delMatch(mid);
			boolean flag1=matchService.delMuser(findMatch.getName());
			if (flag&&flag1) {
					response.sendRedirect(request.getContextPath() + "/MMessageServlet");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
