package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Tsxz;
import service.TsxzService;


@WebServlet("/TsxzController")
public class TsxzController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TsxzController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		TsxzService tsxzService= new TsxzService();
		List<Tsxz> list=tsxzService.isValid();
		request.setAttribute("list", list);
		request.getRequestDispatcher("ht_tsxz.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		TsxzService tsxzService=new TsxzService();
	    String action=request.getParameter("action");
	    if("delete".equals(action)) {
	    	String idString=request.getParameter("tsxzid");
	    	int tsxzid=Integer.parseInt(idString);
	    	tsxzService.deletetsxz(tsxzid);
	    	response.sendRedirect(request.getContextPath()+"/TsxzController");
	    }
	}

}
