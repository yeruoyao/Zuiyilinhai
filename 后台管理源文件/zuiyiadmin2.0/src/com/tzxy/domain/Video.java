package com.tzxy.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class Video {
private Integer videoid;
private Integer userid;
private String username;
private String videotitle;
private String videotime;
private String videocontent;
private String videoaddress;
private String videolong;
private String videotype;
private String videopath;
private Integer state;
public Integer getVideoid() {
	return videoid;
}
public void setVideoid(Integer videoid) {
	this.videoid = videoid;
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
public String getVideotitle() {
	return videotitle;
}
public void setVideotitle(String videotitle) {
	this.videotitle = videotitle;
}
public String getVideotime() {
	return videotime;
}
public void setVideotime(String videotime) {
	this.videotime = videotime;
}
public String getVideocontent() {
	return videocontent;
}
public void setVideocontent(String videocontent) {
	this.videocontent = videocontent;
}
public String getVideoaddress() {
	return videoaddress;
}
public void setVideoaddress(String videoaddress) {
	this.videoaddress = videoaddress;
}
public String getVideolong() {
	return videolong;
}
public void setVideolong(String videolong) {
	this.videolong = videolong;
}
public String getVideotype() {
	return videotype;
}
public void setVideotype(String videotype) {
	this.videotype = videotype;
}
public String getVideopath() {
	return videopath;
}
public void setVideopath(String videopath) {
	this.videopath = videopath;
}
public Integer getState() {
	return state;
}
public void setState(Integer state) {
	this.state = state;
}

}
