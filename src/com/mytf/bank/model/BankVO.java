package com.mytf.bank.model;

public class BankVO {
	
	 private int bankNo; 			//NUMBER NOT NULL, -- 번호,
	 private String businessFlag; 	//VARCHAR2(50) DEFAULT 'N' check(businessFlag in ('N','B')), -- 구분플래그(사업자 B/개인 N),
	 private String bankName; 		//VARCHAR2(80) NOT NULL, -- 은행명,
	 private String accountNum; 	//VARCHAR2(255) unique NOT NULL, -- 계좌번호,
	 private String ownerName; 		//VARCHAR2(255) NOT NULL, -- 예금주명,
	 private String ownerBirth; 	//VARCHAR2(255) NOT NULL, -- 예금주 생년월일 (계좌확인용),
	 private int memberNo; 			//NUMBER references GoMember(memberNo) on delete cascade not null
	
	 
	 public BankVO() {
	
	}


	public BankVO(int bankNo, String businessFlag, String bankName, String accountNum, String ownerName,
			String ownerBirth, int memberNo) {
		super();
		this.bankNo = bankNo;
		this.businessFlag = businessFlag;
		this.bankName = bankName;
		this.accountNum = accountNum;
		this.ownerName = ownerName;
		this.ownerBirth = ownerBirth;
		this.memberNo = memberNo;
	}


	public int getBankNo() {
		return bankNo;
	}


	public void setBankNo(int bankNo) {
		this.bankNo = bankNo;
	}


	public String getBusinessFlag() {
		return businessFlag;
	}


	public void setBusinessFlag(String businessFlag) {
		this.businessFlag = businessFlag;
	}


	public String getBankName() {
		return bankName;
	}


	public void setBankName(String bankName) {
		this.bankName = bankName;
	}


	public String getAccountNum() {
		return accountNum;
	}


	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}


	public String getOwnerName() {
		return ownerName;
	}


	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}


	public String getOwnerBirth() {
		return ownerBirth;
	}


	public void setOwnerBirth(String ownerBirth) {
		this.ownerBirth = ownerBirth;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	@Override
	public String toString() {
		return "BankVO [bankNo=" + bankNo + ", businessFlag=" + businessFlag + ", bankName=" + bankName
				+ ", accountNum=" + accountNum + ", ownerName=" + ownerName + ", ownerBirth=" + ownerBirth
				+ ", memberNo=" + memberNo + "]";
	}
	
	

}
