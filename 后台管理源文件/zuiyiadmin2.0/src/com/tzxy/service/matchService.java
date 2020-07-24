package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.matchDao;
import com.tzxy.domain.Match;
import com.tzxy.domain.Muser;

public class matchService {
private matchDao matchDao = new matchDao();
	public boolean insertMatch(Match match) throws SQLException {
		int flag = matchDao.insertMatch(match);
		return flag>0?true:false;
	}

	public List<Match> getAllMatch() throws SQLException {
		List<Match> allMatch = matchDao.getAddMatch();
		return allMatch;
	}

	public boolean updateMatch(Match match) throws SQLException {
		int updateMatch = matchDao.updateMatch(match);
		return updateMatch>0?true:false;
	}

	public boolean updateState(int mid,int state) throws SQLException {
		int flag = matchDao.updateState(mid,state);
		return flag>0?true:false;
		
	}

	public boolean delMatch(int mid) throws SQLException {
		int flag = matchDao.delMatch(mid);
		return flag>0?true:false;
	}

	public List<Muser> findMuser(String name) throws SQLException {
		List<Muser> finMuser = matchDao.finMuser(name);
		return finMuser;
		
	}

	public boolean delMuser(String mname) throws SQLException {
	
	System.out.println(mname);
	int flag = matchDao.delMuser(mname);
	return flag>0?true:false;
	}

	public Match findMatch(int mid) throws SQLException {
		Match match = matchDao.findMatch(mid);
		return match;
		
	}

	public boolean updateMuser(Integer id, String name) throws SQLException {
		int flag = matchDao.updateMuser(id,name);
		return flag>0?true:false;
	}

	public boolean delMuser(int id) throws SQLException {
		int delMouser = matchDao.delMouser(id);
		return delMouser>0?true:false;
	}






}
