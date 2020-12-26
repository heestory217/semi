package com.mytf.GoMember.model;

import java.sql.Timestamp;

public class GoMemberVO {

	private int memberNo;	// NUMBER NOT NULL, -- 회원번호,
	private String name; 	// VARCHAR2(255) NOT NULL, -- 이름,
	private String email;   //VARCHAR2(255) unique NOT NULL, -- 이메일주소,
	private String pwd;  	//VARCHAR2(255) NOT NULL, -- 비밀번호,
	private String hp;		//VARCHAR2(80) unique NULL, -- 휴대폰번호,
	private String memberIntro; //VARCHAR2(4000) NULL, -- 소개,
	//private String payMethod;   //VARCHAR2(255) check(payMethod in ('card','bank')) NULL, -- 결제수단,
	private String address; 	//VARCHAR2(300) NULL, -- 주소,
	private Timestamp joindate; //DATE DEFAULT SYSDATE, -- 가입일,
	private Timestamp outdate;  //DATE NULL, -- 탈퇴여부, (기본으로 비어있음 => 탈퇴 시 insert할때 sysdate로)
	private String sellerFlag;  // VARCHAR2(50) DEFAULT 'N' check(sellerFlag in ('N','S')), -- 구분플래그(창작자 S/회원 N),
	
	//--프로필 업로드 파일 (기본 로고로 설정하기)
	private String fileName;	//VARCHAR2(255) NULL, -- 업로드파일명 ,
	private long fileSize; 		//NUMBER DEFAULT 0, -- 파일크기,
	private String originalFileName; //VARCHAR2(255) 
	
	public GoMemberVO() {
	
	}

	public GoMemberVO(int memberNo, String name, String email, String pwd, String hp, String memberIntro,
			 String address, Timestamp joindate, Timestamp outdate, String sellerFlag, String fileName,
			long fileSize, String originalFileName) {
		super();
		this.memberNo = memberNo;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.hp = hp;
		this.memberIntro = memberIntro;
		this.address = address;
		this.joindate = joindate;
		this.outdate = outdate;
		this.sellerFlag = sellerFlag;
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.originalFileName = originalFileName;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getMemberIntro() {
		return memberIntro;
	}

	public void setMemberIntro(String memberIntro) {
		this.memberIntro = memberIntro;
	}

	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Timestamp getJoindate() {
		return joindate;
	}

	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}

	public Timestamp getOutdate() {
		return outdate;
	}

	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}

	public String getSellerFlag() {
		return sellerFlag;
	}

	public void setSellerFlag(String sellerFlag) {
		this.sellerFlag = sellerFlag;
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

	@Override
	public String toString() {
		return "GoMemberVO [memberNo=" + memberNo + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", hp="
				+ hp + ", memberIntro=" + memberIntro + ", address=" + address
				+ ", joindate=" + joindate + ", outdate=" + outdate + ", sellerFlag=" + sellerFlag + ", fileName="
				+ fileName + ", fileSize=" + fileSize + ", originalFileName=" + originalFileName + "]";
	}
	
	
	
}
