package com.tzxy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tzxy.domain.Essay;
import com.tzxy.domain.PageBean;
import com.tzxy.domain.Shoot;
import com.tzxy.domain.Video;
import com.tzxy.service.WorksService;
import com.tzxy.service.forumService;

/**
 * Servlet implementation class WorksServlet
 */
@WebServlet("/WorksServlet")
public class WorksServlet extends BaseServlet {
	public String Shiwen(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		WorksService worksService = new WorksService();
		try {
			List<Essay> findAllEssay = worksService.findAllEssay();
			request.setAttribute("findAllEssay", findAllEssay);
			return "backstage2/ht_wzsh_1.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return null;
    }
	public String ShiWenState(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		
		String essayid1 = request.getParameter("essayid");
		String userid1 = request.getParameter("userid");
		int essayid=Integer.valueOf(essayid1);
		String state1 = request.getParameter("state");
		int state=Integer.valueOf(state1);
		int userid=Integer.valueOf(userid1);
		
		WorksService worksService = new WorksService();
		boolean addScore=false;
		boolean cutScore =false;
		try {
			if(state==1) {
				 addScore = worksService.AddScore(userid);
			}
			if(state==2) {
				 cutScore = worksService.CutScore(userid);
			}
			boolean flag = worksService.updateState(essayid,state);
			if((addScore&&flag)||(cutScore&&flag)) {
				response.sendRedirect(request.getContextPath()+"/WorksServlet?action=Shiwen");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return null;
    }

	public String DelSw(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
	
		String essayid1 = request.getParameter("essayid");
		int essayid=Integer.valueOf(essayid1);
		WorksService worksService = new WorksService();
		try {
			boolean flag = worksService.DelSw(essayid);
			if(flag) {
				response.sendRedirect(request.getContextPath()+"/WorksServlet?action=Shiwen");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return null;
    }
	public String SheYing(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		
		WorksService worksService = new WorksService();
		
		try {
			List<Shoot> findAllSy = worksService.findAllSy(0);
			
			request.setAttribute("findAllSy", findAllSy);
			return "backstage2/ht_wzsh_2.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return null;
    }
	public String Shenhe(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		
		String shootid1 = request.getParameter("shootid");
		String state1 = request.getParameter("state");
		String userid1 = request.getParameter("userid");
		int userid=Integer.valueOf(userid1);
		int shootid=Integer.valueOf(shootid1);
		int state=Integer.valueOf(state1);
		
		WorksService worksService = new WorksService();
		boolean addScore=false;
		try {
			if(state==1) {
				 addScore = worksService.AddScore(userid);
			}
			boolean updateSstate = worksService.updateSstate(shootid,state);
			if(addScore&&updateSstate) {
				response.sendRedirect(request.getContextPath()+"/WorksServlet?action=SheYing");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
       return null;
    }
	public String HangPai(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{

		WorksService worksService = new WorksService();
		try {
			List<Video> findAllVideo = worksService.findAllVideo(0);
			
			request.setAttribute("findAllVideo", findAllVideo);
			return "backstage2/ht_wzsh_3.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return null;
    }
	public String Vshenhe(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		
		String videoid1 = request.getParameter("videoid");
		String state1 = request.getParameter("state");
		String userid1 = request.getParameter("userid");
		int userid=Integer.valueOf(userid1);
		int videoid=Integer.valueOf(videoid1);
		int state=Integer.valueOf(state1);
		
		WorksService worksService = new WorksService();
		boolean addScore =false;
		try {
			if(state==1) {
				 addScore = worksService.AddScore(userid);
			}
			boolean updateVstate = worksService.updateVstate(videoid,state);
			if(addScore&&updateVstate) {
				response.sendRedirect(request.getContextPath()+"/WorksServlet?action=HangPai");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
       return null;
    }
}
