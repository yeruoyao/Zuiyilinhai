package com.tzxy.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class Essay {
private Integer essayid;
private Integer userid;
private String username;
private String essaytitle;
private String essayauthor;
private String essaytype;
private String essaycontext;
private String time;
private Integer state;
public Integer getEssayid() {
	return essayid;
}
public void setEssayid(Integer essayid) {
	this.essayid = essayid;
}
public Integer getUserid() {
	return userid;
}
public void setUserid(Integer userid) {
	this.userid = userid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEssaytitle() {
	return essaytitle;
}
public void setEssaytitle(String essaytitle) {
	this.essaytitle = essaytitle;
}
public String getEssayauthor() {
	return essayauthor;
}
public void setEssayauthor(String essayauthor) {
	this.essayauthor = essayauthor;
}
public String getEssaytype() {
	return essaytype;
}
public void setEssaytype(String essaytype) {
	this.essaytype = essaytype;
}
public String getEssaycontext() {
	return essaycontext;
}
public void setEssaycontext(String essaycontext) {
	this.essaycontext = essaycontext;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public Integer getState() {
	return state;
}
public void setState(Integer state) {
	this.state = state;
}

}
