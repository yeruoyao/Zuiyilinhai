package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.FyxmService;


@WebServlet("/FyxmAddController")
public class FyxmAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public FyxmAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		request.getRequestDispatcher("ht_fyxm_add.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
    	String fyxmtitle=request.getParameter("fyxmtitle");
    	String fyxmtext=request.getParameter("fyxmtext");
    	String flag=request.getParameter("flag");
    	if(flag.equals("submit")) {
    		FyxmService fyxmService=new FyxmService();
    		fyxmService.addfyxm(fyxmtitle, fyxmtext);
    		response.sendRedirect(request.getContextPath()+"/FyxmController");
    	}else if (flag.equals("clear")) {
			doGet(request, response);
		}
	}

}
