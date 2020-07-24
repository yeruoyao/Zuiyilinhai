package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Send;
import com.tzxy.service.sendService;

@WebServlet("/CheckSendServlet")
public class CheckSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckSendServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		sendService sendService = new sendService();
		try {
			Send findSend = sendService.findSend(name,title);
			request.setAttribute("findSend", findSend);
			request.setAttribute("BZ", 0);
			request.getRequestDispatcher("/backstage2/ht_ltcz.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
