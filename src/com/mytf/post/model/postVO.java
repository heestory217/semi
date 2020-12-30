package com.mytf.post.model;

import java.sql.Timestamp;

public class postVO {
	private int postNo;		     
	private String projectNo;		     
	private int memberNo;		     
	private String title;			
	private Timestamp postDate;	
	private String postContent;
	
	
	public postVO() {
		super();
	}
	

	public postVO(int postNo, String projectNo, int memberNo, String title, Timestamp postDate, String postContent) {
		super();
		this.postNo = postNo;
		this.projectNo = projectNo;
		this.memberNo = memberNo;
		this.title = title;
		this.postDate = postDate;
		this.postContent = postContent;
	}


	public int getPostNo() {
		return postNo;
	}


	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}


	public String getProjectNo() {
		return projectNo;
	}


	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public Timestamp getPostDate() {
		return postDate;
	}


	public void setPostDate(Timestamp postDate) {
		this.postDate = postDate;
	}


	public String getPostContent() {
		return postContent;
	}


	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}


	@Override
	public String toString() {
		return "postVO [postNo=" + postNo + ", projectNo=" + projectNo + ", memberNo=" + memberNo + ", title=" + title
				+ ", postDate=" + postDate + ", postContent=" + postContent + "]";
	}
	
	
}
