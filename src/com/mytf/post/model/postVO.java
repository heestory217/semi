package com.mytf.post.model;

import java.sql.Timestamp;

public class postVO {
	private int postNo;		     
	private String projectNo;		     
	private int memberNo;		     
	private String name;		
	private String pwd;			
	private String title;			
	private String email;		
	private Timestamp postDate;	
	private String postContent;
	
	
	public postVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public postVO(int postNo, String projectNo, int memberNo, String name, String pwd, String title, String email,  String postContent,
			Timestamp postDate) {
		super();
		this.postNo = postNo;
		this.projectNo = projectNo;
		this.memberNo = memberNo;
		this.name = name;
		this.pwd = pwd;
		this.title = title;
		this.email = email;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
		return "postVO [postNo=" + postNo + ", projectNo=" + projectNo + ", memberNo=" + memberNo + ", name=" + name
				+ ", pwd=" + pwd + ", title=" + title + ", email=" + email + ", postContent=" + postContent + ", postDate=" + postDate + "]";
	}
	

	
	
	
	
	
	
}
