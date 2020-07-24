package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Xxmr;
import util.DBUtils;

public class XxmrDao {
	public List<Xxmr> isValid() {
		List<Xxmr> list= new ArrayList<Xxmr>();
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select * from xxmr");
			ResultSet resultSet=stat.executeQuery();
			while (resultSet.next()) {
				Xxmr xxmr= new Xxmr();
				xxmr.setXxmrid(resultSet.getInt("xxmrid"));
				xxmr.setXxmrtitle(resultSet.getString("xxmrtitle"));
				xxmr.setXxmrtext(resultSet.getString("xxmrtext"));
				xxmr.setXxmrtime(resultSet.getDate("xxmrtime"));
				xxmr.setXxmrimg(resultSet.getString("xxmrimg"));
				list.add(xxmr);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return list;
	}
	
	public void deleteXxmr(int xxmrid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("delete from xxmr where xxmrid=?");
			stat.setInt(1, xxmrid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
				
	}
	
	public void addXxmr(String xxmrtitle,String xxmrtext) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("insert into xxmr(xxmrtitle,xxmrtext,xxmrtime) values(?,?,now())");
			
			stat.setString(1, xxmrtitle);
			stat.setString(2, xxmrtext);
		
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
	
	public void updateXxmr(String xxmrtitle,String xxmrtext,int xxmrid) {
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("update xxmr set xxmrtitle=?,xxmrtext=?,xxmrtime=now() where xxmrid=?");
			stat.setString(1, xxmrtitle);
			stat.setString(2, xxmrtext);
			stat.setInt(3, xxmrid);
			stat.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
	}
}
