package com.mega.mvc07;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller // @은 상속 역할을 한다
public class HomeController {
	
	@RequestMapping("in.mega")
	public void insert(MemberDTO dto) {
		System.out.println("컨트롤러 메서드 호출....");
		System.out.println("컨트롤러에서 받은 id : " + dto.getId());
		System.out.println("컨트롤러에서 받은 pw : " + dto.getPw());
		System.out.println("컨트롤러에서 받은 name : " + dto.getName());
		System.out.println("컨트롤러에서 받은 tel : " + dto.getTel());
		//dto에 넘어온 값들을 넣었고..그 값들로 dao처리한다.
		// 서버가 결과를 알려주기 위한 페이지가 필요하다.
	}
	
	@RequestMapping("check.mega")
	public void getList(MemberDTO dto) {
		System.out.println("컨트롤러에서 받은 id " + dto.getId());
		System.out.println("컨트롤러에서 받은 pw " + dto.getPw());
		//컨트롤러에서 처리를 한 후 , 클라이언트에게 결과를 알려주어야 한다.
		//결과를 출력할 페이지를 만들어줘야하고 views 아래에 check.jsp로 만든다.
		//
	}
	
	
}
