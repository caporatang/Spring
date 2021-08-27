package com.mega.mvc07.test;

public class SingleUser {

	public static void main(String[] args) {
		// 프로토타입 방식 .......
		for (int i = 0; i < 1000; i++) {
			SingleObject single1 = new SingleObject();
		}
		System.out.println(SingleObject.count + "개");
		System.out.println(SingleObject.count * 8 + 4); // 변수 1000개 객체도 1000개 만들어져서 참조형 8 , 스태틱 인트 4 해서 8004바이트를 차지한다
	}

}
