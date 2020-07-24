package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import service.OrderService;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OrderController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		OrderService orderService=new OrderService();
		List<Order> orders=orderService.getOrderInfo();
		request.setAttribute("orders", orders);
		
		request.getRequestDispatcher("backstage2/ht_spdd.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		int orderid=Integer.parseInt(request.getParameter("orderid"));
		String action=request.getParameter("action");
		
		OrderService orderService=new OrderService();
		
		if(action.equals("delete")) {
			orderService.deleteOrder(orderid);
			response.sendRedirect("OrderController");
			return;
		}else {
			orderService.updateOrderState(orderid);
			response.sendRedirect("OrderController");
			return;
		}
	}

}
