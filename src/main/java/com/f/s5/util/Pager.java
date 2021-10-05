package com.f.s5.util;

public class Pager {

	//검색
	private String keyword;
	private String search;
	
	//코드 구분
	private String cord;
	
	//페이지 번호
	private Long pn;
	//한 페이지 당 출력할 리스트 개수 - 20개
	private Long perPage;
	//한 블록 당 출력할 페이지번호 개수 - 10개
	private Long perBlock;
	
	private Long totalPage; 
	
	private Long startRow;
	private Long endRow;
	private Long startNum;
	private Long endNum;
	
	public void row() {
		this.startRow = (this.getPn()-1)*this.getPerPage()+1;
		this.endRow = this.getPn()*this.getPerPage();
	}
	
	public void num(Long totalCount) {
		this.totalPage = totalCount/this.getPerPage();
		
		if(totalCount%this.getPerPage() !=0) {
			this.totalPage = this.totalPage +1L;
		}
		
		Long totalBlock = this.totalPage/this.getPerBlock();
		
		if(this.totalPage%this.getPerBlock() !=0) {
			totalBlock = totalBlock+1L;
		}
		
		if(totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		
		Long curBlock = this.getPn()/this.getPerBlock();
		if(this.getPn()%this.getPerBlock() !=0) {
			curBlock++;
		}
		
		this.startNum = (curBlock-1)*this.getPerBlock()+1;
		this.endNum = curBlock*this.getPerBlock();
		
		if(curBlock == totalBlock) {
			this.endNum = totalPage;
		}
	}
	
	
	//-------------- Setter, Getter -------------
	
	public String getCord() {
		if(this.cord==null) {
			this.cord="";
		}
		return cord;
	}

	public void setCord(String cord) {
		this.cord = cord;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public Long getPn() {
		if(this.pn==null || this.pn<=0) {
			this.pn=1L;
		}
		return pn;
	}
	public void setPn(Long pn) {
		this.pn = pn;
	}
	public Long getPerPage() {
		if(this.perPage==null || this.perPage<=0) {
			this.perPage=20L;
		}
		return perPage;
	}
	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getPerBlock() {
		if(this.perBlock==null || this.perBlock<=0) {
			this.perBlock=10L;
		}
		return perBlock;
	}
	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}
	public Long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getEndRow() {
		return endRow;
	}
	public void setEndRow(Long endRow) {
		this.endRow = endRow;
	}
	public Long getStartNum() {
		return startNum;
	}
	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}
	public Long getEndNum() {
		return endNum;
	}
	public void setEndNum(Long endNum) {
		this.endNum = endNum;
	}
	
	
}
