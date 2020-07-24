package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Wish;
import com.tzxy.service.WishService;


@WebServlet("/findWishServlet")
public class findWishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public findWishServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		WishService wishService = new WishService();
		try {
			List<Wish> list=wishService.findWishServlet();
			request.setAttribute("list",list);
			request.getRequestDispatcher("/wish/wish.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
