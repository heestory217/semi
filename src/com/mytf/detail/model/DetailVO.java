package com.mytf.detail.model;

import java.sql.Timestamp;

public class DetailVO {
	private int postNo;		     
	private String projectNo;		     
	private int memberNo;		     
	private String name;		
	private String pwd;			
	private String title;			
	private String email;		
	private Timestamp postDate;	
	private String postContent;
	
	
	public DetailVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailVO(int postNo, String projectNo, int memberNo, String title,  String postContent,
			Timestamp postDate) {
		super();
		this.postNo = postNo;
		this.projectNo = projectNo;
		this.memberNo = memberNo;
		this.title = title;
		this.postContent = postContent;
		this.postDate = postDate;
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
	
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public Timestamp getPostDate() {
		return postDate;
	}
	public void setPostDate(Timestamp postDate) {
		this.postDate = postDate;
	}
	@Override
	public String toString() {
		return "postVO [postNo=" + postNo + ", projectNo=" + projectNo + ", memberNo=" + memberNo + ", title=" + title +  ", postContent=" + postContent + ", postDate=" + postDate + "]";
	}
	

	
	
	
	
	
	
}
