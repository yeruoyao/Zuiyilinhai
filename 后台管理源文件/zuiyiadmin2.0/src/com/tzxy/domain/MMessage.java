package com.tzxy.domain;

import java.util.ArrayList;
import java.util.List;

public class MMessage {
	private Match match;
	private List<Muser> list=new ArrayList<Muser>();
	public Match getMatch() {
		return match;
	}
	public void setMatch(Match match) {
		this.match = match;
	}
	public List<Muser> getList() {
		return list;
	}
	public void setList(List<Muser> list) {
		this.list = list;
	}
	
	
}
