package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.sendDao;
import com.tzxy.domain.PingLun;
import com.tzxy.domain.Send;
import com.tzxy.domain.TbUser;


public class sendService {
	private sendDao dao = new sendDao();
	public boolean insertSend(Send send) throws SQLException {
		
		int flag= dao.insertSend(send);
		return flag>0?true:false;
		
	}

	public Send findSend(int tid) throws SQLException {
		Send findSend = dao.findSend(tid);
		return findSend;
		
	}

	public List<PingLun> findALLP(int tid) throws SQLException {
		List<PingLun> findAllP = dao.findAllP(tid);
		return findAllP;
		
	}

	public boolean insertPinglun(PingLun pl) throws SQLException {
		int insertPinglun = dao.insertPinglun(pl);
		return insertPinglun>0?true:false;
	}

	public int getSum(int tid) throws SQLException {
		Long sum1 = dao.getSum(tid);
		int sum=sum1.intValue();
		return sum;
		
	}

	public boolean updateSum(int tid, int sum) throws SQLException {
		int updateSum = dao.updateSum(tid,sum);
		return updateSum>0?true:false;
		
	}

	public boolean updateFocuse(int tid, int focuse) throws SQLException {
		int updateFocuse = dao.updateFocuse(tid,focuse);
		return updateFocuse>0?true:false;
	}

	public List<Send> findAllSend() throws SQLException {
		List<Send> findAllSend = dao.findAllSend();
		return findAllSend;
	}

	public Send findSend(String name, String title) throws SQLException {
		Send findSend = dao.findSend(name,title);
		return findSend;
		
	}

	public boolean delSend(int tid) throws SQLException {
		int delSend = dao.delSend(tid);
		return delSend>0?true:false;
	}

	public boolean delPinglun(int tid) throws SQLException {
		int delPinglun = dao.delPinglun(tid);
		return delPinglun>0?true:false;
		
	}


}
