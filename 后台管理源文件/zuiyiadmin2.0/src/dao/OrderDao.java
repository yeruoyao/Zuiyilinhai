package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import bean.Order;
import util.DBUtils;

public class OrderDao {
	
	public List<Order> getOrderInfo() {
		
		List<Order> orders=new ArrayList<Order>();
		
		Connection conn=DBUtils.getConnection();
		String sql="select * from tb_order";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			
			ResultSet resultSet=stat.executeQuery();
			while(resultSet.next()) {
				Order order =new Order();
				order.setOrderid(resultSet.getInt("orderid"));
				order.setGoodsid(resultSet.getInt("goodsid"));
				order.setId(resultSet.getInt("id"));
				order.setGoodsname(resultSet.getString("goodsname"));
				order.setOrderaddress(resultSet.getString("orderaddress"));
				order.setOrderamount(resultSet.getInt("orderamount"));
				order.setOrdermoney(resultSet.getInt("ordermoney"));
				order.setOrderphone(resultSet.getString("orderphone"));
				order.setUsername(resultSet.getString("username"));
				order.setOrderstate(resultSet.getString("orderstate"));
				orders.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return orders;
		
	}
	public void deleteOrder(int orderid) {
		
		Connection conn=DBUtils.getConnection();
		String sql="delete from tb_order where orderid=?";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			
			stat.setInt(1, orderid);
			
			stat.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
	}
	public void updateOrderState(int orderid) {
		
		Connection conn=DBUtils.getConnection();
		String sql="update tb_order set orderstate=? where orderid=?";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			stat.setString(1, "ÒÑ·¢»õ");
			stat.setInt(2, orderid);
			stat.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
}
