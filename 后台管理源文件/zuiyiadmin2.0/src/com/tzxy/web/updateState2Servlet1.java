package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.TbUserService;

@WebServlet("/updateState2Servlet1")
public class updateState2Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updateState2Servlet1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		String state22 = request.getParameter("state2");
		int state2=Integer.parseInt(state22);
		if(1==state2) {
			state2=0;
			TbUserService tbUserService = new TbUserService();
			try {
				boolean flag = tbUserService.updateState2(id,state2);
				if(flag) {
					response.sendRedirect(request.getContextPath()+"/AllUserServlet1");
				}else {
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			state2=1;
			TbUserService tbUserService = new TbUserService();
			try {
				boolean flag = tbUserService.updateState2(id,state2);
				if(flag) {
					response.sendRedirect(request.getContextPath()+"/AllUserServlet1");
				}else {
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
