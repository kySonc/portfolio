package com.kysonc.dto;

import java.sql.Timestamp;

//게시판 데이터 저장 클래스
public class BbsDto {
	private int bbsId = 1, bbsHit = 0;
	private String bbsTitle, bbsContent, bbsName, bbsEmail, bbsPhone, id;
	private Timestamp bbsDate;
		
	//구분 번호 (프라이머리 키)
	public int getBbsId() {
		return bbsId;
	}
	public void setBbsId(int bbsId) {
		this.bbsId = bbsId;
	}
	//조회수
	public int getBbsHit() {
		return bbsHit;
	}
	public void setBbsHit(int bbsHit) {
		this.bbsHit = bbsHit;
	}
	//글 제목
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	//글 내용
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	//작성 시간
	public Timestamp getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(Timestamp bbsDate) {
		this.bbsDate = bbsDate;
	}
	//작성자 이름
	public String getBbsName() {
		return bbsName;
	}
	public void setBbsName(String bbsName) {
		this.bbsName = bbsName;
	}
	//작성자 메일
	public String getBbsEmail() {
		return bbsEmail;
	}
	public void setBbsEmail(String bbsEmail) {
		this.bbsEmail = bbsEmail;
	}
	//작성자 전화번호
	public String getBbsPhone() {
		return bbsPhone;
	}
	public void setBbsPhone(String bbsPhone) {
		this.bbsPhone = bbsPhone;
	}
	//작성자 id
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BbsDto [bbsId=").append(bbsId).append(", bbsHit=").append(bbsHit).append(", bbsTitle=")
				.append(bbsTitle).append(", bbsContent=").append(bbsContent)
				.append(", bbsDate=").append(bbsDate).append(", bbsName=").append(bbsName).append(", bbsEmail=").append(bbsEmail).append(", bbsPhone=").append(bbsPhone).append(", id=").append(id).append("]");
		return builder.toString();
	}
	
	
}