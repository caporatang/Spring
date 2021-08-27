package com.mega.mvc07.staticPractice;

public class Girl {

	String name;
	int age;
	
	static int count; // 인원 카운트
	static int ages; // 나이
	
	public Girl(String name, int age) {
		this.name = name;
		this.age = age;
		count++;
		ages += age;
	}

	@Override
	public String toString() {
		return "Girl [name=" + name + ", age=" + age + "]";
	}
	
	
	
	
	
}
