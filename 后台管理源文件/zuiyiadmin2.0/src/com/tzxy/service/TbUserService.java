package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.TbDao;
import com.tzxy.domain.TbUser;

public class TbUserService {
private TbDao tbDao = new TbDao();
	public List<TbUser> findAllTbUser() throws SQLException {
		
		return tbDao.findAllTbUser();
		
	}

	public boolean updateTbUser(TbUser tbUser) throws SQLException {
		int updateTBUser = tbDao.updateTBUser(tbUser);
		return updateTBUser>0?true:false;
	}

	public boolean updateState2(String id, int state2) throws SQLException {
		int updateState2 = tbDao.updateState2(id,state2);
		return updateState2>0?true:false;
		
	}

	public boolean delTbUser(int id) throws SQLException {
		int delTbUser = tbDao.delTbUser(id);
		return delTbUser>0?true:false;
	}

	public List<TbUser> findAllTbUser2(String state) throws SQLException {
		return tbDao.findAllTbUser2(state);
	}

	public boolean updateTbUser1(TbUser tbUser) throws SQLException {
		int updateTBUser1 = tbDao.updateTBUser1(tbUser);
		return updateTBUser1>0?true:false;
	}

	public List<TbUser> findAllTbUser3(int state2) throws SQLException {
		return tbDao.findAllTbUser2(state2);
	}

	public boolean updateTbUser2(TbUser tbUser) throws SQLException {
		int updateTBUser = tbDao.updateTBUser2(tbUser);
		return updateTBUser>0?true:false;
	}

}
