package com.mega.mvc09;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//어노테이션의 역할 2가지
/// 싱글톤 객체, 스프링에 컨트롤러로 등록
@Controller
public class MemberController {
	// 기능 하나당 메서드 하나
	// 주소 하나당 메서드 하나.

	// 스프링이 만들어놓은 싱글톤 객체의 주소를 넣어준다.
	// 기능을 정의해둔 메서드에는 파라메터로 넣으면 프로토타입으로 들어가기 때문에
	// 싱글톤으로 사용하기 위해서는 autowired를 써줘야한다.
	@Autowired
	MemberDAO dao;

	@RequestMapping("login.mega")
	public String login(MemberDTO memberDTO) {
		// 아래 리턴이 스트링으로 리턴 되므로 return으로 메서드 타입 변
		// 컨트롤러의 메서드내에 선언된 파라메터는 무조건 프로토타입으로 만들어진다.
		System.out.println(memberDTO);
		System.out.println("싱글톤으로 만들어진 주소 : " + dao);
		// 싱글톤으로 만들어놨지만 autowired로 주소를 사용하게 스프링에서 해줘서 사용한다
		boolean result = dao.login(memberDTO);
		if (result) {
			return "ok"; // views밑에 있는 ok.jsp로 가라
		} else {
			return "no"; // views밑에 있는 no.jsp로 가라
		}
	}

	@RequestMapping("check.mega")
	public String check(String nick) {
		System.out.println(nick);
		String nickName = nick;
		if (nickName.equals("superman")) {
			return "super";
		} else {
			return "common";
		}
	}
	@RequestMapping("password.mega")
	public String pass(String pass) {
		System.out.println(pass);
		if (pass.equals("1234")) {
			return "pass"; // views/pass.jsp
		} else {
			return "redirect:index.jsp";
			// 성공하지 못했을 경우에 특정 페이지로이동
			//response.sendRedirect("index.jsp")
			
		}
	}
}
