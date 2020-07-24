package com.tzxy.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.tzxy.dao.sendDao;
import com.tzxy.domain.PageBean;
import com.tzxy.domain.Send;

public class forumService {

	public PageBean getPageBean(int currentPage) throws SQLException{
		PageBean pageBean = new PageBean();
		//设置当前页
		pageBean.setCurrentPage(currentPage);
		//获取有多少条记录
		//从数据库当中查询
		sendDao sendDao = new sendDao();
		Long count=sendDao.getCount();
		pageBean.setTotalCount(count.intValue());
		//一页展示多少条数据
		Integer pageCount=5; //15/5=3   16/5=3  1 向上取整
		//总页数
		 double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);//3.1=4
		pageBean.setTotalPage((int )totalPage);
		//当前页查询的角标pageBean.getTotalCount()
		Integer index=(pageBean.getCurrentPage()-1)*pageCount;
		 List<Send> list = sendDao.getPageData(index,pageCount);
		
		pageBean.setSendsList(list);
		return pageBean;
	}

}
