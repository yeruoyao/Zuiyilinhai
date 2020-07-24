package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.WorksDao;
import com.tzxy.domain.Essay;
import com.tzxy.domain.Shoot;
import com.tzxy.domain.Video;

public class WorksService {
private WorksDao dao = new WorksDao();
	public List<Essay> findAllEssay() throws SQLException {
		List<Essay> findAllEssay = dao.findAllEssay();
		return findAllEssay;
		
	}

	public boolean updateState(int essayid, int state) throws SQLException {
		int updateState = dao.updateState(essayid,state);
		return updateState>0?true:false;
	}

	public boolean DelSw(int essayid) throws SQLException {
		int delSw = dao.DelSw(essayid);
		return delSw>0?true:false;
		
	}

	public List<Shoot> findAllSy(int i) throws SQLException {
		List<Shoot> findAllSy = dao.findAllSy(i);
		return findAllSy;
	}

	public boolean updateSstate(int shootid, int state) throws SQLException {
		int updateSstate = dao.updateSstate(shootid,state);
		return updateSstate>0?true:false;
	}

	public List<Video> findAllVideo(int i) throws SQLException {
		List<Video> findAllVideo = dao.findAllVideo(i);
		return findAllVideo;
		
	}

	public boolean updateVstate(int videoid, int state) throws SQLException {
		int updateVstate = dao.updateVstate(videoid,state);
		return updateVstate>0?true:false;
	}

	public boolean AddScore(int userid) throws SQLException {
		int addScore = dao.AddScore(userid);
		return addScore>0?true:false;
		
	}

	public boolean CutScore(int userid) throws SQLException {
		int cutScore = dao.CutScore(userid);
		return cutScore>0?true:false;
	}

	

}
