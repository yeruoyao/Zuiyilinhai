package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AdUserService;

@WebServlet("/Register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.getRequestDispatcher("Register.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("username");
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		
		if(!password1.equals(password2)) {
			request.setAttribute("error", "两次密码不一致");
			doGet(request, response);
		}else {
			String email=request.getParameter("email");
			
			AdUserService userService=new AdUserService();
			boolean valid=userService.getUser2(username);
			if(valid) {
				request.setAttribute("error", "该用户已存在");
				doGet(request, response);
			}else {
				userService.creatUser(username, password1, email);
				response.sendRedirect("Login");
				return;
			}
		}
	}

}
