package com.tzxy.domain;

import java.util.ArrayList;
import java.util.List;

public class PageBean {
	  //当前是那一页
    private Integer currentPage;
    //共多少页
    private Integer totalPage;
    //多少条记录
    private  Integer totalCount;
    //当前页商品
    private List<Send> sendsList=new ArrayList<Send>();
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public List<Send> getSendsList() {
		return sendsList;
	}
	public void setSendsList(List<Send> sendsList) {
		this.sendsList = sendsList;
	}
	
}
