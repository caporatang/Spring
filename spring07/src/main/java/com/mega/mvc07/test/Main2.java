package com.mega.mvc07.test;

public class Main2 {

	public static void main(String[] args) {
		//Controller에 있는 add()메서드를 호출하고 싶다.
		Controller controller2 = new Controller();
		// 필요할 때 클래스의 인스턴스인 객체를 만들어서 사용하는 방법.
		// 프로토타입 방법이고 , 지금까지 썼던 방식이 프로토타입 방법이다.
		
		// 컨트롤러의 입력값으로 넣은 변수는 프로토타입 변수이다.
		
		// 프로토타입 방법은 서버 프로그램시 계속 사용해도 될까 ?
		// 아니면 어떻게 해야할까??
		controller2.add();

	}

}
