package service;

import java.util.List;

import bean.Fyxm;
import dao.FyxmDao;

public class FyxmService {

	public List<Fyxm> isValid() {
		FyxmDao fyxmDao= new FyxmDao();
		List<Fyxm> list= fyxmDao.isValid();
		return list;
	}
	
	public void deletefyxm(int fyxmid) {
		FyxmDao fyxmDao=new FyxmDao();
		fyxmDao.deleteFyxm(fyxmid);
	}
	
	public void addfyxm(String fyxmtitle,String fyxmtext) {
		FyxmDao fyxmDao=new FyxmDao();
		fyxmDao.addFyxm(fyxmtitle, fyxmtext);
	}
	
	public void updatefyxm(String fyxmtitle,String fyxmtext,int fyxmid) {
		FyxmDao fyxmDao=new FyxmDao();
		fyxmDao.updateFyxm(fyxmtitle, fyxmtext,fyxmid);
	}
}
