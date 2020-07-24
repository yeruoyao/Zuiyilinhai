package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdUser;
import service.AdUserService;


@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		request.getRequestDispatcher("Login.jsp").forward(request, response);  //请求转发
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");

		AdUserService userService=new AdUserService();
		AdUser adUser=userService.getUser(username, password);
		if(adUser.getAusername()!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("admin", adUser);
			response.sendRedirect(request.getContextPath()+"/backstage2/index.jsp");
			return;
		}else {
			request.setAttribute("error", "用户名或密码错误");
			doGet(request, response);
		}
	}

}
