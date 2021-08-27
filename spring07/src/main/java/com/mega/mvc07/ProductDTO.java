package com.mega.mvc07;

public class ProductDTO {
	
	String pNo;
	String pName;
	String pContent;
	String pDate;
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	@Override
	public String toString() {
		return "ProductDTO [pNo=" + pNo + ", pName=" + pName + ", pContent=" + pContent + ", pDate=" + pDate + "]";
	}
	
}
