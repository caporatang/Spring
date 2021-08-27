package com.mega.mvc07.test;

public class SingleObject2 {
	// 누적시킬 목적으로 생성한 변수 스태틱
	static int count;
	static SingleObject2 object; // 전역변수 null로 초기화 , 아래에서 null 체크를 하기 위한 변수

	private SingleObject2() {
		System.out.println("SingleObject객체 생성됨.");
		count++;
	}

	// 싱글톤은 객체를 하나만 만들고, 더이상 만들지 않는 방법을 말한다.
	// getinstance라는 static메서드를 만들어서
	// 객체가 이미 만들어졌는지 체크를 하게 된다.

	// private 으로 하나만 생성할 메서드를 private로 막아주고
	// static으로 null체크 해줄 메서드를 생성한다.
	public static SingleObject2 getInstance() {
		if (object == null) {
			// object이 null이라는 것은 객체가 하나도 안만들어졌다라는 의미이다.
			// 객체가 만들어지면 주소가 들어야하는데 null이 들어가있기 때문이다.
			object = new SingleObject2();
		} else {
			// object이 null이 아니라면, 객체가 만들어져서 주소가 들어갔다라는 의미이다.
		}
		return object;
	}
}
