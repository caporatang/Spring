package com.mega.mvc13;

public class FaqDTO {
	//private는 전역변수로 선언한 변수들ㅇ을 다른 곳에서 호출하지 못하게 하려고 붙인다
	private String qNo;
	private int qKind;
	private String qTitle;
	private String qContent;
	
	public String getqNo() {
		return qNo;
	}
	public void setqNo(String qNo) {
		this.qNo = qNo;
	}
	public int getqKind() {
		return qKind;
	}
	public void setqKind(int qKind) {
		this.qKind = qKind;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	@Override
	public String toString() {
		return "FaqDTO [qNo=" + qNo + ", qKind=" + qKind + ", qTitle=" + qTitle + ", qContent=" + qContent + "]";
	}
	
	
	
}
