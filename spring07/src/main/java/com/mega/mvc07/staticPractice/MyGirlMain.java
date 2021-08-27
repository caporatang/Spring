package com.mega.mvc07.staticPractice;

public class MyGirlMain {

	public static void main(String[] args) {
		Girl girl1 = new Girl("길순", 13);
		Girl girl2 = new Girl("길숙", 10);

		System.out.println(girl1);
		System.out.println(girl2);
		
		System.out.println("girl의 수는 : " + Girl.count);
		System.out.println("girl의 평균 나이는 : " + Girl.ages / Girl.count);
	}

}
