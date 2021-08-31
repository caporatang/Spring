package com.mega.mvc09;

import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {
	
	public void pay() {
		System.out.println("결제 처리를 db에 저장함");
	}
	
}
