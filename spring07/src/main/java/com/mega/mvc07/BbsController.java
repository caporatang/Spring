package com.mega.mvc07;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


// 어노테이션 달아놓은 클래스들은 스프링 프로젝트에서 모두 다 싱글톤이다.
//
@Controller // 어노테이션 Annotation--> 상속의 의미이다.
public class BbsController {
	
	//요청되는 가상 주소는 중복되면 절대 안된다.
	//컨트롤러가 가상 주소를 가지고 있다.
	
	// dto에 없는 값을 가지고 올때는 파라메터 입력값을 넘어오는 이름과 동일하게 써준다
	@RequestMapping("bbs")
	public void bbs(BbsDTO bbsDTO , String date) { // 컨트롤러의 입력값으로 넣은 변수는 프로토타입 변수이다.
		//컨트롤러에서 받은거 확인 출력
		//views 아래에 결과화면 넣기
		System.out.println("받아온 bNo값은 " + bbsDTO.bNo);
		System.out.println("받아온 title값은 " + bbsDTO.title);
		System.out.println("받아온 content값은 " + bbsDTO.content);
		System.out.println("받아온 writer값은 " + bbsDTO.writer);
		System.out.println("따로 받아온 date값은 : " + date);
	}
} // bbs controller
