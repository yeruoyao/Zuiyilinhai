package service;

import java.util.List;

import bean.Xxmr;
import dao.XxmrDao;

public class XxmrService {
	public List<Xxmr> isValid() {
		XxmrDao xxmrDao= new XxmrDao();
		List<Xxmr> list= xxmrDao.isValid();
		return list;
	}
	
	public void deletexxmr(int xxmrid) {
		XxmrDao xxmrDao=new XxmrDao();
		xxmrDao.deleteXxmr(xxmrid);
	}
	
	public void addxxmr(String xxmrtitle,String xxmrtext) {
		XxmrDao xxmrDao=new XxmrDao();
		xxmrDao.addXxmr(xxmrtitle, xxmrtext);
	}
	
	public void updatexxmr(String xxmrtitle,String xxmrtext,int xxmrid) {
		XxmrDao xxmrDao=new XxmrDao();
		xxmrDao.updateXxmr(xxmrtitle, xxmrtext, xxmrid);
	}
}
