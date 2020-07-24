package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Fycr;
import service.FycrService;

@WebServlet("/FycrController")
public class FycrController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FycrController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		FycrService fycrService= new FycrService();
		List<Fycr> list=fycrService.isValid();
		request.setAttribute("list", list);
		request.getRequestDispatcher("ht_fycr.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		FycrService fycrService=new FycrService();
	    String action=request.getParameter("action");
	    if("delete".equals(action)) {
	    	String idString=request.getParameter("fycrid");
	    	int fycrid=Integer.parseInt(idString);
	    	fycrService.deletefycr(fycrid);
	    	response.sendRedirect(request.getContextPath()+"/FycrController");
	    }
	}

}
