package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.sendDao;
import com.tzxy.domain.Send;

public class AllSendService {

	public List<Send> finallSend() throws SQLException {
		sendDao sendDao = new sendDao();
		List<Send> finallSend = sendDao.finallSend();
		return finallSend;
	}

}
