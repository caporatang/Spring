package DTO;

import java.sql.Array;
import java.util.Arrays;

public class ADFoodDTO {

	
	private String ad_Img;	
	private String ad_Writer;	
	private String ad_Title;
	private String ad_Info;
	private String ad_IAddress;
	private String ad_ITime;
	private String ad_Num;
	private String ad_Name;
	private int ad_Recommend;
	private float ad_Map_1;
	private float ad_Map_2;
	
	
	@Override
	public String toString() {
		return "ADFoodDTO [ad_Img=" + ad_Img + ", ad_Writer=" + ad_Writer + ", ad_Title=" + ad_Title + ", ad_Info="
				+ ad_Info + ", ad_IAddress=" + ad_IAddress + ", ad_ITime=" + ad_ITime + ", ad_Num=" + ad_Num
				+ ", ad_Name=" + ad_Name + ", ad_Recommend=" + ad_Recommend + ", ad_Map_1=" + ad_Map_1 + ", ad_Map_2="
				+ ad_Map_2 + "]";
	}
	public float getAd_Map_1() {
		return ad_Map_1;
	}
	public void setAd_Map_1(float ad_Map_1) {
		this.ad_Map_1 = ad_Map_1;
	}
	public float getAd_Map_2() {
		return ad_Map_2;
	}
	public void setAd_Map_2(float ad_Map_2) {
		this.ad_Map_2 = ad_Map_2;
	}
	public String getAd_Name() {
		return ad_Name;
	}
	public void setAd_Name(String ad_Name) {
		this.ad_Name = ad_Name;
	}
	public int getAd_Recommend() {
		return ad_Recommend;
	}
	public void setAd_Recommend(int ad_Recommend) {
		this.ad_Recommend = ad_Recommend;
	}
	public String getAd_Num() {
		return ad_Num;
	}
	public void setAd_Num(String ad_Num) {
		this.ad_Num = ad_Num;
	}
	public String getAd_Img() {
		return ad_Img;
	}
	public void setAd_Img(String ad_Img) {
		this.ad_Img = ad_Img;
	}
	public String getAd_Writer() {
		return ad_Writer;
	}
	public void setAd_Writer(String ad_Writer) {
		this.ad_Writer = ad_Writer;
	}
	public String getAd_Title() {
		return ad_Title;
	}
	public void setAd_Title(String ad_Title) {
		this.ad_Title = ad_Title;
	}
	public String getAd_Info() {
		return ad_Info;
	}
	public void setAd_Info(String ad_Info) {
		this.ad_Info = ad_Info;
	}
	public String getAd_IAddress() {
		return ad_IAddress;
	}
	public void setAd_IAddress(String ad_IAddress) {
		this.ad_IAddress = ad_IAddress;
	}
	public String getAd_ITime() {
		return ad_ITime;
	}
	public void setAd_ITime(String ad_ITime) {
		this.ad_ITime = ad_ITime;
	}
	
	
	
	
	
	
	
	
	
	
	
	// 매개변수 받는 생성자. 
//	public ADFoodDTO(String ad_Writer, String ad_Title, String ad_Info, String ad_ITime) {
//		super();
//		this.ad_Writer = ad_Writer;
//		this.ad_Title = ad_Title;
//		this.ad_Info = ad_Info;
//		this.ad_ITime = ad_ITime;
//	}

	
	
	
	
	
	
	
	
}
