package com.mega.mvc07.test;

public class SingleUser22 {

	public static void main(String[] args) {
		// 프로토타입 방식 .......
		for (int i = 0; i < 1000; i++) {
			//SingleObject2 single2 = new SingleObject2(); 싱글톤은 이전에 했던 new와 다른 문법으로 사용한다. 이렇게 사용 x 
			SingleObject2 single2 = SingleObject2.getInstance();
			System.out.println("주소:" + single2 );
		}
		System.out.println(SingleObject2.count + "개");
		System.out.println(SingleObject2.count * 8 + 4); // 변수 1000개 객체도 1000개 만들어져서 참조형 8 , 스태틱 인트 4 해서 8004바이트를 차지한다
	}

}
