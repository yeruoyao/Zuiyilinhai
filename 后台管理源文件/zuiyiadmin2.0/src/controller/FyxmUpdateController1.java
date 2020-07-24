package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fyxm;

@WebServlet("/FyxmUpdateController1")
public class FyxmUpdateController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public FyxmUpdateController1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		request.getRequestDispatcher("ht_fyxm_update.jsp").forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		String idString=request.getParameter("fyxmid");
		int fyxmid=Integer.parseInt(idString);
		String fyxmtitle=request.getParameter("fyxmtitle");
		String fyxmtext=request.getParameter("fyxmtext");
		
		Fyxm fyxm=new Fyxm();
		fyxm.setFyxmid(fyxmid);
		fyxm.setFyxmtitle(fyxmtitle);
		fyxm.setFyxmtext(fyxmtext);

		request.setAttribute("fyxm",fyxm);
		
		doGet(request, response);
	}

}
