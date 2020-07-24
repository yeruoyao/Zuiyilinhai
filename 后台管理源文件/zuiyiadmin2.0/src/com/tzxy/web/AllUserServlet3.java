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


@WebServlet("/AllUserServlet3")
public class AllUserServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AllUserServlet3() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		TbUserService tbUserService = new TbUserService();
		int state2=0;
		try {
			List<TbUser> findAllTbUser = tbUserService.findAllTbUser3(state2);
			request.setAttribute("findAllTbUser3", findAllTbUser);
			request.getRequestDispatcher("/backstage2/ht_hmdyh.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
