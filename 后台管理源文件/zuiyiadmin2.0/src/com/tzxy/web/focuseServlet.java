package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.sendService;

@WebServlet("/focuseServlet")
public class focuseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public focuseServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String tid1 = request.getParameter("tid");
		
		int tid = Integer.valueOf(tid1);
		String focuse1 = request.getParameter("focuse");
		int focuse= Integer.valueOf(focuse1);
		sendService sendService = new sendService();
		try {
			boolean flag = sendService.updateFocuse(tid,focuse);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/forumServlet?action=PlText&tid="+tid);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
