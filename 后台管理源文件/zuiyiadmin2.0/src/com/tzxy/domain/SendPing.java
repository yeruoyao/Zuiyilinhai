package com.tzxy.domain;

import java.util.ArrayList;
import java.util.List;

public class SendPing {
	private Send send;
	private List<PingLun> list=new ArrayList<PingLun>();
	public Send getSend() {
		return send;
	}
	public void setSend(Send send) {
		this.send = send;
	}
	public List<PingLun> getList() {
		return list;
	}
	public void setList(List<PingLun> list) {
		this.list = list;
	}
	
}
