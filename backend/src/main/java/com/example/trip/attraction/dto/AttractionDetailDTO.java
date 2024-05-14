package com.example.trip.attraction.dto;

public class AttractionDetailDTO {
	private int contentId;
	private String cat1;
	private String cat2;
	private String cat3;
	private String createdTime;
	private String modifiedTime;
	private String booktour;
	public AttractionDetailDTO(int contentId, String cat1, String cat2, String cat3, String createdTime,
			String modifiedTime, String booktour) {
		
		this.contentId = contentId;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.cat3 = cat3;
		this.createdTime = createdTime;
		this.modifiedTime = modifiedTime;
		this.booktour = booktour;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getCat1() {
		return cat1;
	}
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getCat2() {
		return cat2;
	}
	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}
	public String getCat3() {
		return cat3;
	}
	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public String getModifiedTime() {
		return modifiedTime;
	}
	public void setModifiedTime(String modifiedTime) {
		this.modifiedTime = modifiedTime;
	}
	public String getBooktour() {
		return booktour;
	}
	public void setBooktour(String booktour) {
		this.booktour = booktour;
	}
	@Override
	public String toString() {
		return "AttractionDetailDTO [contentId=" + contentId + ", cat1=" + cat1 + ", cat2=" + cat2 + ", cat3=" + cat3
				+ ", createdTime=" + createdTime + ", modifiedTime=" + modifiedTime + ", booktour=" + booktour + "]";
	}
	
	
	
}
