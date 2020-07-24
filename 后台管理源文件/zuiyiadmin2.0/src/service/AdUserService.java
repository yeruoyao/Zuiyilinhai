package service;

import bean.AdUser;
import dao.AdUserDao;

public class AdUserService {
	public AdUser getUser(String username,String password) {
		AdUserDao userDao=new AdUserDao();
		AdUser adUser=userDao.isValid(username, password);
		return adUser;
		
	}
	
	public void creatUser(String username,String password,String email) {
		AdUserDao userDao=new AdUserDao();
		userDao.iscreat(username, password, email);
	}
	
	public boolean getUser2(String username) {
		boolean valid=false;
		AdUserDao userDao= new AdUserDao();
		valid=userDao.isValid2(username);
		return valid;
	}
}
