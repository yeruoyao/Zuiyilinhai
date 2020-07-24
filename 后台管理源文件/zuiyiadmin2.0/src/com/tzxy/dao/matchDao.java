package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mysql.jdbc.PreparedStatement;
import com.tzxy.domain.Match;
import com.tzxy.domain.Muser;
import com.tzxy.utils.JdbcUtil;

public class matchDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public int insertMatch(Match match) throws SQLException {
		String sql="insert into race(name,starttime,uptime,photo) values(?,?,?,?)";
		int update = qr.update(sql,match.getName(),match.getStarttime(),match.getUptime(),match.getPhoto());
		return update;
	}
	public List<Match> getAddMatch() throws SQLException {
		String sql="select * from race";
		List<Match> query = qr.query(sql, new BeanListHandler<Match>(Match.class));
		return query;
		
	}
	public int updateMatch(Match match) throws SQLException {
		String sql="update race set name=?,starttime=?,uptime=? where mid=?";
		int update = qr.update(sql, match.getName(),match.getStarttime(),match.getUptime(),match.getMid());
		return update;
		
	}
	public int updateState(int mid,int state) throws SQLException {
		String sql="update race set state=? where mid=?";
		int update = qr.update(sql,state,mid);
		return update;
	}
	public int delMatch(int mid) throws SQLException {
		String sql="delete from race where mid=?";
		int update = qr.update(sql,mid);
		return update;
		
	}
	public List<Muser> finMuser(String name) throws SQLException {
		String sql="select * from muser where mname=?";
		List<Muser> query = qr.query(sql, new BeanListHandler<Muser>(Muser.class),name);
		return query;
		
	}
	public Match findMatch(int mid) throws SQLException {
		String sql="select * from race where mid=?";
		Match query = qr.query(sql, new BeanHandler<Match>(Match.class),mid);
		return query;
	}
	public int delMuser(String name) throws SQLException {
		String sql="delete from muser where mname=?";
		int update = qr.update(sql, name);
		return update;
		
	}
	public int updateMuser(Integer id, String name) throws SQLException {
		String sql="update muser set mname=? where id=?";
		int update = qr.update(sql, name,id);
		return update;
		
	}
	public int delMouser(int id) throws SQLException {
		String sql="delete from muser where id=?";
		int update = qr.update(sql, id);
		return update;
		
	}
	
	



}
