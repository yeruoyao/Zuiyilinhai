package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.AdUser;
import util.DBUtils;

public class AdUserDao {
	public AdUser isValid(String username,String password) {
		AdUser adUser=new AdUser();
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from ad_user where username=? and password=?");
			stat.setString(1, username);
			stat.setString(2, password);
			ResultSet rs=stat.executeQuery();
			while(rs.next()) {
				
				adUser.setAid(rs.getInt("userid"));
				adUser.setAusername(rs.getString("username"));
				adUser.setApassword(rs.getString("password"));
				adUser.setAemail(rs.getString("email"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return adUser;
	}
	
	public boolean isValid2(String username) {
		boolean valid=false;
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from ad_user where username=?");
			stat.setString(1, username);
			ResultSet rs=stat.executeQuery();
			if (rs.next()) {
				valid=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return valid;
	}
	
	public void iscreat(String username,String password,String email) {
		Connection conn=DBUtils.getConnection();            
		try {
			PreparedStatement stat=conn.prepareStatement("insert into ad_user(username,password,email) values(?,?,?)");
			stat.setString(1, username);
			stat.setString(2, password);
			stat.setString(3, email);
			stat.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
}
