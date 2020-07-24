package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Fyxm;
import service.FyxmService;

@WebServlet("/FyxmUpdateController")
public class FyxmUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FyxmUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.getRequestDispatcher("ht_fyxm_update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		String idString=request.getParameter("fyxmid");
		int fyxmid=Integer.parseInt(idString);
		String fyxmtitle=request.getParameter("fyxmtitle");
		String fyxmtext=request.getParameter("fyxmtext");
	
		String flag=request.getParameter("flag");
		if(flag.equals("submit")) {
			FyxmService fyxmService=new FyxmService();
			fyxmService.updatefyxm(fyxmtitle, fyxmtext, fyxmid);
			response.sendRedirect(request.getContextPath()+"/FyxmController");
		}else if (flag.equals("clear")) {
			response.sendRedirect(request.getContextPath()+"/FyxmController");
		}
	}

}
