package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tzxy.domain.Send;
import com.tzxy.domain.TbUser;
import com.tzxy.service.AllSendService;

@WebServlet("/LtIndexServlet1")
public class LtIndexServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LtIndexServlet1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		TbUser tbUser = new TbUser();
		tbUser.setId(1);
		tbUser.setUsername("Ò²²»´ý¼û");
		tbUser.setPassword("1234");
		tbUser.setEmail("2321566@qq.com");
		tbUser.setPicpath("/forum/img/pl1.jpg");
		HttpSession session = request.getSession();
		session.setAttribute("user", tbUser);
		TbUser user2 = (TbUser)session.getAttribute("user");
		 AllSendService allSendService = new AllSendService();
		try {
			List<Send> allSend= allSendService.finallSend();
			request.setAttribute("allSend", allSend);
			response.sendRedirect(request.getContextPath()+"/forumServlet?action=getPageData&currentPage=1");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
