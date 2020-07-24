package com.tzxy.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class Shoot {
private Integer shootid;
private Integer userid;
private String username;
private String shoottitle;
private String shootpicpath;
private String shootintroduce;
private String shootcontent;
private String shootdate;
private Integer shootreview;
private String shootstate;
private String shoottype;
private Integer state;
public Integer getShootid() {
	return shootid;
}
public void setShootid(Integer shootid) {
	this.shootid = shootid;
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
public String getShoottitle() {
	return shoottitle;
}
public void setShoottitle(String shoottitle) {
	this.shoottitle = shoottitle;
}
public String getShootpicpath() {
	return shootpicpath;
}
public void setShootpicpath(String shootpicpath) {
	this.shootpicpath = shootpicpath;
}
public String getShootintroduce() {
	return shootintroduce;
}
public void setShootintroduce(String shootintroduce) {
	this.shootintroduce = shootintroduce;
}
public String getShootcontent() {
	return shootcontent;
}
public void setShootcontent(String shootcontent) {
	this.shootcontent = shootcontent;
}
public String getShootdate() {
	return shootdate;
}
public void setShootdate(String shootdate) {
	this.shootdate = shootdate;
}
public Integer getShootreview() {
	return shootreview;
}
public void setShootreview(Integer shootreview) {
	this.shootreview = shootreview;
}
public String getShootstate() {
	return shootstate;
}
public void setShootstate(String shootstate) {
	this.shootstate = shootstate;
}
public String getShoottype() {
	return shoottype;
}
public void setShoottype(String shoottype) {
	this.shoottype = shoottype;
}
public Integer getState() {
	return state;
}
public void setState(Integer state) {
	this.state = state;
}

}
