package com.tzxy.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.tzxy.domain.TbUser;
import com.tzxy.service.TbUserService;

@WebServlet("/UpdateTbUserServlet2")
public class UpdateTbUserServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateTbUserServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		request.setCharacterEncoding("utf-8");
		Map<String, String[]> parameterMap = request.getParameterMap();
		TbUser tbUser = new TbUser();
		try {
			BeanUtils.populate(tbUser, parameterMap);
			if("ª·‘±".equals(tbUser.getState())) {
				long l=System.currentTimeMillis();
				Date date=new Date(l);
				SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				tbUser.setMembertime(dateformat.format(date));
			}
			TbUserService tbUserService = new TbUserService();
			boolean flag = tbUserService.updateTbUser2(tbUser);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/AllUserServlet2");
			}else {
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
