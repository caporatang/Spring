package DTO;

public class CommentDTO {
	int ad_CoNum;
	String ad_Content;
	int ad_FoodNum;
	String ad_Writer;
	String ad_Time;
	public CommentDTO() {
		super();
	}
	public String getAd_Time() {
		return ad_Time;
	}
	public void setAd_Time(String ad_Time) {
		this.ad_Time = ad_Time;
	}
	public int getAd_CoNum() {
		return ad_CoNum;
	}
	public void setAd_CoNum(int ad_CoNum) {
		this.ad_CoNum = ad_CoNum;
	}
	public String getAd_Content() {
		return ad_Content;
	}
	public void setAd_Content(String ad_Content) {
		this.ad_Content = ad_Content;
	}
	public int getAd_FoodNum() {
		return ad_FoodNum;
	}
	public void setAd_FoodNum(int ad_FoodNum) {
		this.ad_FoodNum = ad_FoodNum;
	}
	public String getAd_Writer() {
		return ad_Writer;
	}
	public void setAd_Writer(String ad_Writer) {
		this.ad_Writer = ad_Writer;
	}
	@Override
	public String toString() {
		return "CommentDTO [ad_CoNum=" + ad_CoNum + ", ad_Content=" + ad_Content + ", ad_FoodNum=" + ad_FoodNum
				+ ", ad_Writer=" + ad_Writer + ", ad_Time=" + ad_Time + "]";
	}
	
	
	
	
	
	
} // class end 
