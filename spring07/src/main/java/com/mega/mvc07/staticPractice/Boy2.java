package com.mega.mvc07.staticPractice;

public class Boy2 {
	static Boy2 object;
	static int count;
	private Boy2() {
		System.out.println("객체가 생성됨");
		count++;
	}

	public static Boy2 getInstance() {
		if (object == null) {
			object = new Boy2();
		} else {

		}
		return object;
	}
}
