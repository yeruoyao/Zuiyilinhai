package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.TbUserService;

@WebServlet("/delTbUserServlet2")
public class delTbUserServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public delTbUserServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id1 = request.getParameter("id");
		int id=Integer.parseInt(id1);
		TbUserService tbUserService = new TbUserService();
		try {
			boolean flag = tbUserService.delTbUser(id);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/AllUserServlet2");
			}else {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
