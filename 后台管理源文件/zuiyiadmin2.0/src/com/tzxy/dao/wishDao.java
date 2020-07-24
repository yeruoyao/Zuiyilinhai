package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mysql.jdbc.JDBC4PreparedStatement;
import com.tzxy.domain.Wish;
import com.tzxy.utils.JdbcUtil;

public class wishDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public int insertWish(String wishtext) throws SQLException {
		String sql="insert into wish(wishtext) values(?)";
		int update = qr.update(sql, wishtext);
		return update;
		
	}

	public List<Wish> findAllWish() throws SQLException {
		String sql="select * from wish";
		List<Wish> query = qr.query(sql, new BeanListHandler<Wish>(Wish.class));
		return query;
		
	}

	public int deleteWish(String shanchu) throws SQLException {
		String sql="delete from wish where wishtext=?";
		int update = qr.update(sql,shanchu);
		System.out.println(shanchu);
		return update;
		
	}

}
