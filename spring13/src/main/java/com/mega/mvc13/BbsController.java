package com.mega.mvc13;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // spring에 컨트롤러 등록 ,
			//싱글톤 객체 생성되서 컨트롤러로 인식
public class BbsController {
	// 하나의 요청당 메서드 하나
	
	@Autowired
	BbsDAO dao;
	
	
	@RequestMapping("bbs.mega")
	//메서드의 이름은 상관이없다.
	public void insert(BbsDTO bbsDTO) { // 프로토 타입으로 입력받은 값을 넣어줌
		System.out.println(bbsDTO); // 값이 잘 넘어왔는지 찍어보기
		dao.create(bbsDTO);
			
		
	}
	
	
	
	
}
