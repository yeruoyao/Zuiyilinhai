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

import com.tzxy.domain.Match;
import com.tzxy.service.matchService;


@WebServlet("/AllMatchServlet")
public class AllMatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AllMatchServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			matchService matchService = new matchService();
			List<Match> allMatch = matchService.getAllMatch();
			long l=System.currentTimeMillis();
			Date date=new Date(l);
			SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd");
			String time1=dateformat.format(date);
			Date time = dateformat.parse(time1);
			
			for (Match match : allMatch) {
				if(match.getState()!=2) {
					Date starttime = dateformat.parse(match.getStarttime());
					Date uptime = dateformat.parse(match.getUptime());
					if(time.getTime()<starttime.getTime()) {
						match.setState(0);
						matchService.updateState(match.getMid(),0);
						
					}else if(time.getTime()>=starttime.getTime()&&time.getTime()<=uptime.getTime()) {
						match.setState(1);
						matchService.updateState(match.getMid(),1);
					}else if(time.getTime()>uptime.getTime()) {
						match.setState(2);
						matchService.updateState(match.getMid(),2);
					}
				}
				
				
			}
			
			request.setAttribute("allMatch", allMatch);
			request.getRequestDispatcher("backstage2/ht_lsbsxx.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
