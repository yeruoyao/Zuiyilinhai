package service;

import bean.Goods;
import dao.GoodsDao;

public class GoodsService {

	public Goods getGoodsAll() {
		
		GoodsDao goodsDao=new GoodsDao();
		Goods goods=goodsDao.getGoodsAll();
		return goods;
		
	}
	
}
