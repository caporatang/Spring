package com.mega.mvc07.test;

public class SingleObject {	
	//누적시킬 목적으로 생성한 변수 스태틱
	static int count;
	
	
	
	
	public SingleObject() {
		System.out.println("SingleObject객체 생성됨.");
		count++;
	}
}
