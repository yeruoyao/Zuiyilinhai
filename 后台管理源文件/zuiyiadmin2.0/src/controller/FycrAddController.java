package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.FycrService;

@WebServlet("/FycrAddController")
public class FycrAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FycrAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		request.getRequestDispatcher("ht_fycr_add.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
    	String fycrtitle=request.getParameter("fycrtitle");
    	String fycrtext=request.getParameter("fycrtext");
    	String flag=request.getParameter("flag");
    	if(flag.equals("submit")) {
    		FycrService fycrService=new FycrService();
    		fycrService.addfycr(fycrtitle, fycrtext);
    		response.sendRedirect(request.getContextPath()+"/FycrController");
    	}else if (flag.equals("clear")) {
			doGet(request, response);
		}
	}

}
