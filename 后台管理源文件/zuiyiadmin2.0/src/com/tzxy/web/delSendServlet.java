package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.service.sendService;

@WebServlet("/delSendServlet")
public class delSendServlet extends BaseServlet {
	public String delSend1(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		String tid1 = request.getParameter("tid");
		int tid=Integer.valueOf(tid1);
		sendService sendService = new sendService();
		try {
			boolean delSend = sendService.delSend(tid);
			boolean delPinglun = sendService.delPinglun(tid);
			if(delPinglun&&delSend) {
				response.sendRedirect(request.getContextPath()+"/CheckAllSend");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
       return null;
    }
	public String delSend2(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		String tid1 = request.getParameter("tid");
		int tid=Integer.valueOf(tid1);
		sendService sendService = new sendService();
		try {
			boolean delSend = sendService.delSend(tid);
			boolean delPinglun = sendService.delPinglun(tid);
			if(delPinglun&&delSend) {
				response.sendRedirect(request.getContextPath()+"/CheckSendServlet");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	       return null;
	    }

}
