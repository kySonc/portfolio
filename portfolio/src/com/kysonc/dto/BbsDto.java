package com.kysonc.dto;

import java.sql.Timestamp;

//게시판 데이터 저장 클래스
public class BbsDto {
	private int bbsId = 1, bbsHit = 0;
	private String bbsTitle, bbsContent, bbsCategory, id;
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
	//게시판 카테고리
	public String getBbsCategory() {
		return bbsCategory;
	}
	public void setBbsCategory(String bbsCategory) {
		this.bbsCategory = bbsCategory;
	}
	//작성 시간
	public Timestamp getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(Timestamp bbsDate) {
		this.bbsDate = bbsDate;
	}
	//작성자
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
				.append(bbsTitle).append(", bbsContent=").append(bbsContent).append(", bbsCategory=")
				.append(bbsCategory).append(", bbsDate=").append(bbsDate).append(", id=").append(id).append("]");
		return builder.toString();
	}
	
}