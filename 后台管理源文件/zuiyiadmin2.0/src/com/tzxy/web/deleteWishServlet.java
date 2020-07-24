package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.WishService;


@WebServlet("/deleteWishServlet")
public class deleteWishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public deleteWishServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String shanchu = request.getParameter("shanchu");
		WishService wishService = new WishService();
		try {
			boolean flag = wishService.deleteWishSevice(shanchu);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/findWishServlet");
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
