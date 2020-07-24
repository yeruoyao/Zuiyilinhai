package service;

import java.util.List;

import bean.Fycr;
import dao.FycrDao;

public class FycrService {

	public List<Fycr> isValid() {
		FycrDao fycrDao= new FycrDao();
		List<Fycr> list= fycrDao.isValid();
		return list;
	}
	
	public void deletefycr(int fycrid) {
		FycrDao fycrDao=new FycrDao();
		fycrDao.deleteFycr(fycrid);
	}
	
	public void addfycr(String fycrtitle,String fycrtext) {
		FycrDao fycrDao=new FycrDao();
		fycrDao.addFycr(fycrtitle, fycrtext);
	}
	
	public void updatefycr(String fycrtitle,String fycrtext,int fycrid) {
		FycrDao fycrDao=new FycrDao();
		fycrDao.updateFycr(fycrtitle, fycrtext,fycrid);
	}
}
