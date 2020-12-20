package com.mymvc.common;

public class PagingVO { 
	private int currentPage; //현재페이지
	private int totalRecord; //총 레코드수 17
	private int pageSize; //페이지당 보여질 레코드수 5
	private int totalPage; //총 페이지수 4
	private int blockSize; //블럭당 보여질 페이지 수 10
	private int firstPage; //블럭당 시작페이지 1,11,21,31...
	private int lastPage; //블럭당 마지막 페이지 10,20,30,40....
	private int curPos; //페이지당 시작 인덱스(list 내에서)
		//=>0, 5, 10, 15...
	private int num; // 페이지당 시작 글 번호
		//=>17, 12, 7...

	public PagingVO(int currentPage, int totalRecord, int pageSize, 
			int blockSize){  
		this.currentPage=currentPage;	  
		this.totalRecord=totalRecord;

		this.pageSize=pageSize;
		this.blockSize = blockSize;

		totalPage=(int)Math.ceil((float)totalRecord/pageSize);
		firstPage= currentPage-((currentPage-1)%blockSize);
		lastPage = firstPage+(blockSize-1);
		curPos=(currentPage-1)*pageSize;
		num=totalRecord-curPos;
	}

	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	} 

	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getFirstPage() {
		return firstPage;
	}
	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getCurPos() {
		return curPos;
	}
	public void setCurPos(int curPos) {
		this.curPos = curPos;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	} 
}
