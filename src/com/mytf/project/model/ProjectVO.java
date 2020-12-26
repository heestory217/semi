package com.mytf.project.model;

import java.sql.Timestamp;

public class ProjectVO {
	private String projectNo; //PJ00
	private String projectName;
	private String projectDetail;	
	private String fileName;
	private long fileSize;
	private String originalFileName;
	private int ctNo;
	private int memberNo;
	private int goalAmount;
	private Timestamp opendate;
	private Timestamp duedate;
	private String projectPolicy;
	private String giftInfo;
	private String projectStory;
	private int readCount;
	
	public ProjectVO() {
		super();
	}
	
	public ProjectVO(String projectNo, String projectName, String projectDetail, String fileName, long fileSize,
			String originalFileName, int ctNo, int memberNo, int goalAmount, Timestamp opendate, Timestamp duedate,
			String projectPolicy, String giftInfo, String projectStory, int readCount) {
		super();
		this.projectNo = projectNo;
		this.projectName = projectName;
		this.projectDetail = projectDetail;
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.originalFileName = originalFileName;
		this.ctNo = ctNo;
		this.memberNo = memberNo;
		this.goalAmount = goalAmount;
		this.opendate = opendate;
		this.duedate = duedate;
		this.projectPolicy = projectPolicy;
		this.giftInfo = giftInfo;
		this.projectStory = projectStory;
		this.readCount = readCount;
	}

	public String getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectDetail() {
		return projectDetail;
	}

	public void setProjectDetail(String projectDetail) {
		this.projectDetail = projectDetail;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public int getCtNo() {
		return ctNo;
	}

	public void setCtNo(int ctNo) {
		this.ctNo = ctNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getGoalAmount() {
		return goalAmount;
	}

	public void setGoalAmount(int goalAmount) {
		this.goalAmount = goalAmount;
	}

	public Timestamp getOpendate() {
		return opendate;
	}

	public void setOpendate(Timestamp opendate) {
		this.opendate = opendate;
	}

	public Timestamp getDuedate() {
		return duedate;
	}

	public void setDuedate(Timestamp duedate) {
		this.duedate = duedate;
	}

	public String getProjectPolicy() {
		return projectPolicy;
	}

	public void setProjectPolicy(String projectPolicy) {
		this.projectPolicy = projectPolicy;
	}

	public String getGiftInfo() {
		return giftInfo;
	}

	public void setGiftInfo(String giftInfo) {
		this.giftInfo = giftInfo;
	}

	public String getProjectStory() {
		return projectStory;
	}

	public void setProjectStory(String projectStory) {
		this.projectStory = projectStory;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "ProjectVO [projectNo=" + projectNo + ", projectName=" + projectName + ", projectDetail=" + projectDetail
				+ ", fileName=" + fileName + ", fileSize=" + fileSize + ", originalFileName=" + originalFileName
				+ ", ctNo=" + ctNo + ", memberNo=" + memberNo + ", goalAmount=" + goalAmount + ", opendate=" + opendate
				+ ", duedate=" + duedate + ", projectPolicy=" + projectPolicy + ", giftInfo=" + giftInfo
				+ ", projectStory=" + projectStory + ", readCount=" + readCount + "]";
	}
	
	
}
