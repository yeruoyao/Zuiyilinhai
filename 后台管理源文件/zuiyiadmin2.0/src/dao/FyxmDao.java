package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Fyxm;
import util.DBUtils;

public class FyxmDao {
	public List<Fyxm> isValid() {
		List<Fyxm> list= new ArrayList<Fyxm>();
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from fyxm");
			ResultSet resultSet=stat.executeQuery();
			while (resultSet.next()) {
				Fyxm fycr= new Fyxm();
				fycr.setFyxmid(resultSet.getInt("fyxmid"));
				fycr.setFyxmtitle(resultSet.getString("fyxmtitle"));
				fycr.setFyxmtext(resultSet.getString("fyxmtext"));
				fycr.setFyxmtime(resultSet.getDate("fyxmtime"));
				fycr.setFyxmimg(resultSet.getString("fyxmimg"));
				list.add(fycr);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return list;
	}
	
	public void deleteFyxm(int fyxmid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("delete from fyxm where fyxmid=?");
			stat.setInt(1, fyxmid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
				
	}
	
	public void addFyxm(String fyxmtitle,String fyxmtext) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("insert into fyxm(fyxmtitle,fyxmtext,fyxmtime) values(?,?,now())");
			
			stat.setString(1, fyxmtitle);
			stat.setString(2, fyxmtext);
		
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
	
	public void updateFyxm(String fyxmtitle,String fyxmtext,int fyxmid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("update fyxm set fyxmtitle=?,fyxmtext=?,fyxmtime=now() where fyxmid=?");
			stat.setString(1, fyxmtitle);
			stat.setString(2, fyxmtext);
			stat.setInt(3, fyxmid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
	}
}
