package com.f.s5.board;

import java.sql.Date;

public class BoardDTO {
	
	private Long num;
	private String title;
	private String cord;
	private String contents;
	private Date regDate;
	private Long hits;
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCord() {
		return cord;
	}
	public void setCord(String cord) {
		this.cord = cord;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getHits() {
		return hits;
	}
	public void setHits(Long hits) {
		this.hits = hits;
	}
	
	

}
