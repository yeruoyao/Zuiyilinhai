package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tzxy.domain.PingLun;
import com.tzxy.domain.TbUser;
import com.tzxy.service.sendService;

@WebServlet("/SpinglunServlet")
public class SpinglunServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SpinglunServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String tid1 = request.getParameter("tid");
		String context = request.getParameter("context");
		int tid=Integer.valueOf(tid1);
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		long l=System.currentTimeMillis();
		Date date=new Date(l);
		SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		PingLun pl = new PingLun();
		pl.setTid(tid);
		pl.setUsername(user.getUsername());
		pl.setImage(user.getPicpath());
		pl.setContext(context);
		pl.setTime(dateformat.format(date));
		
		sendService sendService = new sendService();
		try {
			boolean flag = sendService.insertPinglun(pl);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/forumServlet?action=PlText&tid="+tid);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
 
}
