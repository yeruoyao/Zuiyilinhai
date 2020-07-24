package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Tsxz;
import util.DBUtils;

public class TsxzDao {
	public List<Tsxz> isValid() {
		List<Tsxz> list= new ArrayList<Tsxz>();
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from tsxz");
			ResultSet resultSet=stat.executeQuery();
			while (resultSet.next()) {
				Tsxz tsxz= new Tsxz();
				tsxz.setTsxzid(resultSet.getInt("tsxzid"));
				tsxz.setTsxztitle(resultSet.getString("tsxztitle"));
				tsxz.setTsxztext(resultSet.getString("tsxztext"));
				tsxz.setTsxztime(resultSet.getDate("tsxztime"));
				tsxz.setTsxzimg(resultSet.getString("tsxzimg"));
				list.add(tsxz);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return list;
	}
	
	public void deleteTsxz(int tsxzid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("delete from tsxz where tsxzid=?");
			stat.setInt(1, tsxzid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
				
	}
	
	public void addTsxz(String tsxztitle,String tsxztext) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("insert into tsxz(tsxztitle,tsxztext,tsxztime) values(?,?,now())");
			
			stat.setString(1, tsxztitle);
			stat.setString(2, tsxztext);
		
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
	
	public void updateTsxz(String tsxztitle,String tsxztext,int tsxzid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("update tsxz set tsxztitle=?,tsxztext=?,tsxztime=now() where tsxzid=?");
			stat.setString(1, tsxztitle);
			stat.setString(2, tsxztext);
			stat.setInt(3, tsxzid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
	}
}
