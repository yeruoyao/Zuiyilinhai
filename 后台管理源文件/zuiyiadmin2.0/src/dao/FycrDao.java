package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Fycr;
import util.DBUtils;

public class FycrDao {
	public List<Fycr> isValid() {
		List<Fycr> list= new ArrayList<Fycr>();
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from fycr");
			ResultSet resultSet=stat.executeQuery();
			while (resultSet.next()) {
				Fycr fycr= new Fycr();
				fycr.setFycrid(resultSet.getInt("fycrid"));
				fycr.setFycrtitle(resultSet.getString("fycrtitle"));
				fycr.setFycrtext(resultSet.getString("fycrtext"));
				fycr.setFycrtime(resultSet.getDate("fycrtime"));
				fycr.setFycrimg(resultSet.getString("fycrimg"));
				list.add(fycr);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return list;
	}
	
	public void deleteFycr(int fycrid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("delete from fycr where fycrid=?");
			stat.setInt(1, fycrid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
				
	}
	
	public void addFycr(String fycrtitle,String fycrtext) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("insert into fycr(fycrtitle,fycrtext,fycrtime) values(?,?,now())");
			
			stat.setString(1, fycrtitle);
			stat.setString(2, fycrtext);
		
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
	
	public void updateFycr(String fycrtitle,String fycrtext,int fycrid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("update fycr set fycrtitle=?,fycrtext=?,fycrtime=now() where fycrid=?");
			stat.setString(1, fycrtitle);
			stat.setString(2, fycrtext);
			stat.setInt(3, fycrid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
	}
}
