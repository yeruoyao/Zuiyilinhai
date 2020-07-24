package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Tsxz;


@WebServlet("/TsxzUpdateController1")
public class TsxzUpdateController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TsxzUpdateController1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		request.getRequestDispatcher("ht_tsxz_update.jsp").forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		String idString=request.getParameter("tsxzid");
		int tsxzid=Integer.parseInt(idString);
		String tsxztitle=request.getParameter("tsxztitle");
		String tsxztext=request.getParameter("tsxztext");
		
		Tsxz tsxz=new Tsxz();
		tsxz.setTsxzid(tsxzid);
		tsxz.setTsxztitle(tsxztitle);
		tsxz.setTsxztext(tsxztext);

		request.setAttribute("tsxz",tsxz);
		
		doGet(request, response);
	}

}
