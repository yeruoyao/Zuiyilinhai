package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Send;
import com.tzxy.service.sendService;


@WebServlet("/CheckAllSend")
public class CheckAllSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CheckAllSend() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		sendService sendService = new sendService();
		try {
			List<Send> findAllSend = sendService.findAllSend();
			request.setAttribute("findAllSend", findAllSend);
			request.setAttribute("BZ", 1);
			request.getRequestDispatcher("/backstage2/ht_ltcz.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
