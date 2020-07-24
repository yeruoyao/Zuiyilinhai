package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import bean.Wish;
import util.DBUtils;

public class WishDao {
	public List<Wish> getWishInfo() {
		
		List<Wish> wishs=new ArrayList<Wish>();
		
		Connection conn=DBUtils.getConnection();
		String sql="select * from wish";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			
			ResultSet resultSet=stat.executeQuery();
			
			while(resultSet.next()) {
				Wish wish=new Wish();
				wish.setWid(resultSet.getInt("wid"));
				wish.setWishtext(resultSet.getString("wishtext"));
				wishs.add(wish);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return wishs;
	}
	
	public void  deleteWishInfo(int wid) {
		
		Connection conn=DBUtils.getConnection();
		
		String sql="delete from wish where wid=?";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			stat.setInt(1, wid);
			
			stat.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
}
