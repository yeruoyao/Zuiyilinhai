package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.wishDao;
import com.tzxy.domain.Wish;

public class WishService {

	public boolean insertWish(String wishtext) throws SQLException {
		wishDao wishDao = new wishDao();
		int insertWish = wishDao.insertWish(wishtext);
		return insertWish>0?true:false;
		
	}

	public List<Wish> findWishServlet() throws SQLException {
		wishDao wishDao = new wishDao();
		List<Wish> findAllWish = wishDao.findAllWish();
		return findAllWish;
	}

	public boolean deleteWishSevice(String shanchu) throws SQLException {
		wishDao wishDao = new wishDao();
		int deleteWish = wishDao.deleteWish(shanchu);
		return deleteWish>0?true:false;
	}

}
