package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.TbUser;
import com.tzxy.service.TbUserService;

@WebServlet("/AllUserServlet2")
public class AllUserServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AllUserServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		TbUserService tbUserService = new TbUserService();
		String state="∆’Õ®";
		try {
			List<TbUser> findAllTbUser = tbUserService.findAllTbUser2(state);
			request.setAttribute("findAllTbUser2", findAllTbUser);
			request.getRequestDispatcher("/backstage2/ht_ptyh.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
