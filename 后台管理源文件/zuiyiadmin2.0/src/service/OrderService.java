package service;

import java.util.List;

import bean.Order;
import dao.OrderDao;

public class OrderService {

	public List<Order> getOrderInfo() {
		OrderDao orderDao=new OrderDao();
		List<Order> orders=orderDao.getOrderInfo();
		return orders;
	}
	public void deleteOrder(int orderid) {
		OrderDao orderDao=new OrderDao();
		orderDao.deleteOrder(orderid);
	}
	public void updateOrderState(int orderid) {
		OrderDao orderDao=new OrderDao();
		orderDao.updateOrderState(orderid);
	}
}
