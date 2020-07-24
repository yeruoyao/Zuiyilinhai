package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Wish;
import service.WishService;

@WebServlet("/WishController")
public class WishController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    public WishController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		WishService wishService =new WishService();
		List<Wish> wishs=wishService.getWishInfo();
		request.setAttribute("wishs", wishs);
		request.getRequestDispatcher("backstage2/ht_qzxy.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		int wid=Integer.parseInt(request.getParameter("wid"));
		WishService wishService=new WishService();
		wishService.deleteWishInfo(wid);
		doGet(request, response);
	}

}
