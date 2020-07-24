package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.tzxy.domain.Match;
import com.tzxy.domain.Muser;
import com.tzxy.domain.TbUser;
import com.tzxy.service.TbUserService;
import com.tzxy.service.matchService;

@WebServlet("/updateMatchServlet2")
public class updateMatchServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public updateMatchServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		try {
			Map<String, String[]> map = request.getParameterMap();
			Match match = new Match();
			BeanUtils.populate(match, map);
			matchService matchService = new matchService();
			Match findMatch = matchService.findMatch(match.getMid());	
			List<Muser> allMuser = matchService.findMuser(findMatch.getName());
			boolean flag = matchService.updateMatch(match);
			for (Muser muser : allMuser) {
				matchService.updateMuser(muser.getId(),match.getName());
			}
			
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/MMessageServlet");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
