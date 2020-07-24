package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Fycr;

@WebServlet("/FycrUpdateController1")
public class FycrUpdateController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FycrUpdateController1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		request.getRequestDispatcher("ht_fycr_update.jsp").forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		String idString=request.getParameter("fycrid");
		int fycrid=Integer.parseInt(idString);
		String fycrtitle=request.getParameter("fycrtitle");
		String fycrtext=request.getParameter("fycrtext");
		
		Fycr fycr=new Fycr();
		fycr.setFycrid(fycrid);
		fycr.setFycrtitle(fycrtitle);
		fycr.setFycrtext(fycrtext);

		request.setAttribute("fycr",fycr);
		
		doGet(request, response);
	}

}
