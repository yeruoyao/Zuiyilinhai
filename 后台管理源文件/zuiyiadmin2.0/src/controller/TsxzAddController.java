package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TsxzService;


@WebServlet("/TsxzAddController")
public class TsxzAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public TsxzAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		request.getRequestDispatcher("ht_tsxz_add.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
    	String tsxztitle=request.getParameter("tsxztitle");
    	String tsxztext=request.getParameter("tsxztext");
    	String flag=request.getParameter("flag");
    	if(flag.equals("submit")) {
    		TsxzService tsxzService=new TsxzService();
    		tsxzService.addtsxz(tsxztitle, tsxztext);
    		response.sendRedirect(request.getContextPath()+"/TsxzController");
    	}else if (flag.equals("clear")) {
			doGet(request, response);
		}
	}

}
