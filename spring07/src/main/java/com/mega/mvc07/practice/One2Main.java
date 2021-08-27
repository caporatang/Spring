package com.mega.mvc07.practice;

public class One2Main {

	public static void main(String[] args) {
		//싱글톤 방식
		// 객체를 하나만 생성하고 주소값을 가지고 사용한다.
		// 같은 주소가 찍힌다.
		One2 o1 = One2.getInstance();
		One2 o2 = One2.getInstance();
		System.out.println(o1);
		System.out.println(o2);
		

	}

}
