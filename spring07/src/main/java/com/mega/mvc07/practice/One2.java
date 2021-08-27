package com.mega.mvc07.practice;

public class One2 {

	static One2 object; // 전역변수 자동초기화 null 체크해줄 변수

	private One2() { // 다른곳에서 접근하지 못하게 private로 생성
		// 기본생성자
		System.out.println("객체가 생성됨");
	}

	public static One2 getInstance() {
		if (object == null) {
			// null이면 주소가 안들어가있기 때문에 객체가 만들어지지 않았음.
			object = new One2();
		} else {
			// null이 아니면 객체가 생성이 되어있음.
		}
		return object;
	}

}
