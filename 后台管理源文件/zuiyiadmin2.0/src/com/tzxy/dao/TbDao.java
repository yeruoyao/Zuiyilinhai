package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.tzxy.domain.TbUser;
import com.tzxy.utils.JdbcUtil;

public class TbDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public List<TbUser> findAllTbUser() throws SQLException {
		String sql="select * from tbuser";
		List<TbUser> query = qr.query(sql, new BeanListHandler<TbUser>(TbUser.class));
		return query;
		
	}

	public int updateTBUser(TbUser tbUser) throws SQLException {
		String sql="update tbuser set username=?,password=?,email=?,score=?,state=? where id=?";
		int update = qr.update(sql,tbUser.getUsername(),tbUser.getPassword(),tbUser.getEmail(),tbUser.getScore(),
				tbUser.getState(),tbUser.getId());
		return update;
	}

	public int  updateState2(String id, int state2) throws SQLException {
		String sql="update tbuser set state2=? where id=?";
		int update = qr.update(sql, state2,id);
		return update;
	}

	public int delTbUser(int id) throws SQLException {
		String sql="delete from tbuser where id=?";
		int update = qr.update(sql,id);
		return update;
	}

	public List<TbUser> findAllTbUser2(String state) throws SQLException {
		String sql="select * from tbuser where state=?";
		List<TbUser> query = qr.query(sql, new BeanListHandler<TbUser>(TbUser.class),state);
		return query;
	}

	public int updateTBUser1(TbUser tbUser) throws SQLException {
		String sql="update tbuser set username=?,password=?,email=?,score=? where id=?";
		int update = qr.update(sql,tbUser.getUsername(),tbUser.getPassword(),tbUser.getEmail(),tbUser.getScore(),
				tbUser.getId());
		return update;
	}

	public List<TbUser> findAllTbUser2(int state2) throws SQLException {
		String sql="select * from tbuser where state2=?";
		List<TbUser> query = qr.query(sql, new BeanListHandler<TbUser>(TbUser.class),state2);
		return query;
	}

	public int updateTBUser2(TbUser tbUser) throws SQLException {
		String sql="update tbuser set username=?,password=?,membertime=?,email=?,score=?,state=? where id=?";
		int update = qr.update(sql,tbUser.getUsername(),tbUser.getPassword(),tbUser.getMembertime(),tbUser.getEmail(),tbUser.getScore(),
				tbUser.getState(),tbUser.getId());
		return update;
	}

}
