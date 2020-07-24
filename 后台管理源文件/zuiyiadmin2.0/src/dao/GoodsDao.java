package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.jsp.jstl.sql.Result;

import bean.Goods;
import util.DBUtils;


public class GoodsDao {

	public Goods getGoodsAll() {
		
		Goods goods=new Goods();
		Connection conn=DBUtils.getConnection();
		String sql="select * from tb_goods";
		
		try {
			PreparedStatement stat=conn.prepareStatement(sql);
			
			ResultSet resultSet=stat.executeQuery();
			while(resultSet.next()) {
				goods.setGoodsid(resultSet.getInt("goodsid"));
				goods.setGoodsname(resultSet.getString("goodsname"));
				goods.setGoodsprice(resultSet.getInt("goodsprice"));
				goods.setGoodsintroduce(resultSet.getString("goodsintroduce"));
				goods.setGoodsamount(resultSet.getInt("goodsamount"));
				goods.setGoodstype(resultSet.getString("goodstype"));
				goods.setGoodspic1(resultSet.getString("goodspic1"));
				goods.setGoodspic2(resultSet.getString("goodspic2"));
				goods.setGoodspic3(resultSet.getString("goodspic3"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		
		return goods;
	}
	
	
}
