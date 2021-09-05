package com.fly.pro2;

public class QuestionDTO {

	int QNO;
	String QTITLE;
	String QCONTENT;
	String QKIND;
	public int getQNO() {
		return QNO;
	}
	public void setQNO(int qNO) {
		QNO = qNO;
	}
	public String getQTITLE() {
		return QTITLE;
	}
	public void setQTITLE(String qTITLE) {
		QTITLE = qTITLE;
	}
	public String getQCONTENT() {
		return QCONTENT;
	}
	public void setQCONTENT(String qCONTENT) {
		QCONTENT = qCONTENT;
	}
	public String getQKIND() {
		return QKIND;
	}
	public void setQKIND(String qKIND) {
		QKIND = qKIND;
	}
	@Override
	public String toString() {
		return "QuestionDTO [QNO=" + QNO + ", QTITLE=" + QTITLE + ", QCONTENT=" + QCONTENT + ", QKIND=" + QKIND + "]";
	}
	
	
	
}
