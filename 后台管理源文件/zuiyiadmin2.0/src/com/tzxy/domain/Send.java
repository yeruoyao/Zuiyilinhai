package com.tzxy.domain;

public class Send {
	private Integer tid;
	private String name;
	private String title;
	private String label;
	private String image;
	private String content;
	private String time;
	private String phone;
	private Integer focuse;
	private Integer sum;
	@Override
	public String toString() {
		return "Send2 [tid=" + tid + ", name=" + name + ", title=" + title + ", label=" + label + ", image=" + image
				+ ", content=" + content + ", time=" + time + ", phone=" + phone + ", focuse=" + focuse + ", sum=" + sum
				+ "]";
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getFocuse() {
		return focuse;
	}
	public void setFocuse(Integer focuse) {
		this.focuse = focuse;
	}
	public Integer getSum() {
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	
	
}
