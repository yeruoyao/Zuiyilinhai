package com.tzxy.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.TbUser;
import com.tzxy.service.TbUserService;

@WebServlet("/AllUserServlet1")
public class AllUserServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AllUserServlet1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		TbUserService tbUserService = new TbUserService();
		String state="ª·‘±";
		try {
			List<TbUser> findAllTbUser = tbUserService.findAllTbUser2(state);
			for (TbUser tbUser : findAllTbUser) {
					String membertime = tbUser.getMembertime();
				 	long l=System.currentTimeMillis();
					Date date=new Date(l);
					SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					String time=dateformat.format(date);
					Date oldtime = dateformat.parse(membertime);
					Date newtime = dateformat.parse(time);
					long betweenDate = (newtime.getTime() - oldtime.getTime())/(60*60*24*1000);
					tbUser.setMembertime(Long.toString(30-betweenDate));
			}
			request.setAttribute("findAllTbUser1", findAllTbUser);
			request.getRequestDispatcher("/backstage2/ht_hyyh.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
