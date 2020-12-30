package com.mytf.GoComment.model;

import java.sql.Timestamp;

public class GoCommentVO {

	private int commentNo;
	private int memberNo;
	private String commentContent;
	private Timestamp commentDate;
	private String delFlag;
	private int postNo;

	public GoCommentVO() {
		super();
	}
	public GoCommentVO(int commentNo, int memberNo, String commentContent, Timestamp commentDate, String delFlag,
			int postNo) {
		super();
		this.commentNo = commentNo;
		this.memberNo = memberNo;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.delFlag = delFlag;
		this.postNo = postNo;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Timestamp getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Timestamp commentDate) {
		this.commentDate = commentDate;
	}
	public String getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	@Override
	public String toString() {
		return "CommentVO [commentNo=" + commentNo + ", memberNo=" + memberNo + ", commentContent=" + commentContent
				+ ", commentDate=" + commentDate + ", delFlag=" + delFlag + ", postNo=" + postNo + "]";
	}



}
