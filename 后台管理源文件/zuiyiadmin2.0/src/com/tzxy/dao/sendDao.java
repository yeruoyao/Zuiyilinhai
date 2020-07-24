package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.tzxy.domain.PingLun;
import com.tzxy.domain.Send;
import com.tzxy.domain.TbUser;

import com.tzxy.domain.Send;
import com.tzxy.utils.JdbcUtil;

public class sendDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public int insertSend(Send send) throws SQLException {
		
		String sql = "insert into send(name,title,label,image,content,time,phone) values(?,?,?,?,?,?,?)";
		int update = 0;
		update = qr.update(sql, send.getName(), send.getTitle(), send.getLabel(), send.getImage(), send.getContent(),
				send.getTime(),send.getPhone());
		return update;
	}

	public List<Send> finallSend() throws SQLException {
		String sql="select * from send";
		List<Send> query = qr.query(sql, new BeanListHandler<Send>(Send.class));
		return query;
		
	}

	public Long getCount() throws SQLException {
		String sql="select count(*) from send";
		Long count = (Long) qr.query(sql, new ScalarHandler());
		return count;
	}

	public List<Send> getPageData(Integer index, Integer pageCount) throws SQLException {
		String sql="select * from send order by time desc limit ?,?";
		List<Send> pageGoods = qr.query(sql, new BeanListHandler<Send>(Send.class), index, pageCount);
		return pageGoods;
	}

	public Send findSend(int tid) throws SQLException {
		String sql="select * from send where tid=?";
		Send query = qr.query(sql, new BeanHandler<Send>(Send.class),tid);
		return query;
		
	}

	public List<PingLun> findAllP(int tid) throws SQLException {
		String sql="select * from pinglun where tid=?";
		List<PingLun> query = qr.query(sql, new BeanListHandler<PingLun>(PingLun.class),tid);
		return query;
	}


	public int insertPinglun(PingLun pl) throws SQLException {
		String sql="insert into pinglun(tid,username,image,context,time) values(?,?,?,?,?)";
		int update = qr.update(sql,pl.getTid(),pl.getUsername(),pl.getImage(),pl.getContext(),pl.getTime());
		return update;
	}

	public Long getSum(int tid) throws SQLException {
		String sql="select count(*) from pinglun where tid=?";
		Long query = (Long) qr.query(sql, new ScalarHandler(),tid);
		return query;
		
	}

	public int updateSum(int tid, int sum) throws SQLException {
		String sql="update send set sum=? where tid=?";
		int update = qr.update(sql, sum,tid);
		return update;
		
	}

	public int updateFocuse(int tid, int focuse) throws SQLException {
		String sql="update send set focuse=? where tid=?";
		int update = qr.update(sql, focuse,tid);
		return update;
	}

	public List<Send> findAllSend() throws SQLException {
		String sql="select * from send";
		List<Send> query = qr.query(sql, new BeanListHandler<Send>(Send.class));
		return query;
	}

	public Send findSend(String name, String title) throws SQLException {
		String sql="select * from send where name=? and title=?";
		Send query = qr.query(sql, new BeanHandler<Send>(Send.class),name,title);
		return query;
		
	}

	public int delSend(int tid) throws SQLException {
		String sql="delete from send where tid=?";
		int update = qr.update(sql, tid);
		return update;
		
	}

	public int delPinglun(int tid) throws SQLException {
		String sql="delete from pinglun where tid=?";
		int update = qr.update(sql,tid);
		return update;
	}

}
