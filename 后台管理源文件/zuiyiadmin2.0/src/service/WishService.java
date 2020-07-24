package service;

import java.util.List;

import bean.Wish;
import dao.WishDao;

public class WishService {
	
	public List<Wish> getWishInfo() {
		
		WishDao wishDao=new WishDao();
		List<Wish> wishs=wishDao.getWishInfo();
		return wishs;
	}
	public void  deleteWishInfo(int wid) {
		WishDao wishDao=new WishDao();
		wishDao.deleteWishInfo(wid);
	}
}
