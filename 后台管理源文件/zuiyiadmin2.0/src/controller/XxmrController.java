package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Xxmr;
import service.XxmrService;


@WebServlet("/XxmrController")
public class XxmrController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XxmrController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		XxmrService xxmrService= new XxmrService();
		List<Xxmr> list=xxmrService.isValid();
		request.setAttribute("list", list);
		request.getRequestDispatcher("ht_xxmr.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		XxmrService xxmrService=new XxmrService();
	    String action=request.getParameter("action");
	    if("delete".equals(action)) {
	    	String idString=request.getParameter("xxmrid");
	    	int xxmrid=Integer.parseInt(idString);
	    	xxmrService.deletexxmr(xxmrid);
	    	response.sendRedirect(request.getContextPath()+"/XxmrController");
	    }
	}

}
