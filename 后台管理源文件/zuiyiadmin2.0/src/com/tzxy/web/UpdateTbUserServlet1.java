package com.tzxy.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.tzxy.domain.TbUser;
import com.tzxy.service.TbUserService;


@WebServlet("/UpdateTbUserServlet1")
public class UpdateTbUserServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateTbUserServlet1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Map<String, String[]> parameterMap = request.getParameterMap();
		TbUser tbUser = new TbUser();
		try {
			BeanUtils.populate(tbUser, parameterMap);
			
			TbUserService tbUserService = new TbUserService();
			boolean flag = tbUserService.updateTbUser1(tbUser);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/AllUserServlet1");
			}else {
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
