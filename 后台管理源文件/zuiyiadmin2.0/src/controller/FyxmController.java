package controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Fyxm;
import service.FyxmService;

@WebServlet("/FyxmController")
public class FyxmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FyxmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		FyxmService fyxmService= new FyxmService();
		List<Fyxm> list=fyxmService.isValid();
		request.setAttribute("list", list);
		request.getRequestDispatcher("ht_fyxm.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		FyxmService fyxmService=new FyxmService();
	    String action=request.getParameter("action");
	    if("delete".equals(action)) {
	    	String idString=request.getParameter("fyxmid");
	    	int fyxmid=Integer.parseInt(idString);
	    	fyxmService.deletefyxm(fyxmid);
	    	response.sendRedirect(request.getContextPath()+"/FyxmController");
	    }
	}

}
