package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.XxmrService;

@WebServlet("/XxmrUpdateController")
public class XxmrUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public XxmrUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.getRequestDispatcher("ht_xxmr_update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		String idString=request.getParameter("xxmrid");
		int xxmrid=Integer.parseInt(idString);
		String xxmrtitle=request.getParameter("xxmrtitle");
		String xxmrtext=request.getParameter("xxmrtext");
	
		String flag=request.getParameter("flag");
		if(flag.equals("submit")) {
			XxmrService xxmrService=new XxmrService();
			xxmrService.updatexxmr(xxmrtitle, xxmrtext, xxmrid);
			response.sendRedirect(request.getContextPath()+"/XxmrController");
		}else if (flag.equals("clear")) {
			response.sendRedirect(request.getContextPath()+"/XxmrController");
		}
	}

}
