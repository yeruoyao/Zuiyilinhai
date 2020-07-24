package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.tzxy.domain.Essay;
import com.tzxy.domain.Shoot;
import com.tzxy.domain.Video;
import com.tzxy.utils.JdbcUtil;

public class WorksDao {
private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public List<Essay> findAllEssay() throws SQLException {
		String sql="select * from tb_essay";
		List<Essay> query = qr.query(sql, new BeanListHandler<Essay>(Essay.class));
		return query;
	}
	public int updateState(int essayid, int state) throws SQLException {
		String sql="update tb_essay set state=? where essayid=?";
		int update = qr.update(sql, state,essayid);
		return update;
		
	}
	public int DelSw(int essayid) throws SQLException {
		String sql="delete from tb_essay where essayid=?";
		int update = qr.update(sql,essayid);
		return update;
		
	}
	public List<Shoot> findAllSy(int i) throws SQLException {
		String sql="select * from tb_shoot where state=?";
		List<Shoot> query = qr.query(sql, new BeanListHandler<Shoot>(Shoot.class),i);
		return query;
	}
	public int updateSstate(int shootid, int state) throws SQLException {
		String sql="update tb_shoot set state=? where shootid=?";
		int update = qr.update(sql,state,shootid);
		return update;
	}
	public List<Video> findAllVideo(int i) throws SQLException {
		String sql="select * from tb_video where state=?";
		List<Video> query = qr.query(sql, new BeanListHandler<Video>(Video.class),i);
		return query;
	}
	public int updateVstate(int videoid, int state) throws SQLException {
		String sql="update tb_video set state =? where videoid=?";
		int update = qr.update(sql,state,videoid);
		return update;
	}
	public int AddScore(int userid) throws SQLException {
		String sql="update tbuser set score=score+30 where id=?";
		int update = qr.update(sql,userid);
		return update;
	}
	public int CutScore(int userid) throws SQLException {
		String sql="update tbuser set score=score-30 where id=?";
		int update = qr.update(sql,userid);
		return update;
	}


}
