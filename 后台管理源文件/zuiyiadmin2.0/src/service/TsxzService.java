package service;

import java.util.List;

import bean.Tsxz;
import dao.TsxzDao;

public class TsxzService {
	public List<Tsxz> isValid() {
		TsxzDao tsxzDao= new TsxzDao();
		List<Tsxz> list= tsxzDao.isValid();
		return list;
	}
	
	public void deletetsxz(int tsxzid) {
		TsxzDao tsxzDao=new TsxzDao();
		tsxzDao.deleteTsxz(tsxzid);
	}
	
	public void addtsxz(String tsxztitle,String tsxztext) {
		TsxzDao tsxzDao=new TsxzDao();
		tsxzDao.addTsxz(tsxztitle, tsxztext);
	}
	
	public void updatetsxz(String tsxztitle,String tsxztext,int tsxzid) {
		TsxzDao tsxzDao=new TsxzDao();
		tsxzDao.updateTsxz(tsxztitle, tsxztext, tsxzid);
	}
}
