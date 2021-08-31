package com.mega.mvc09;

import org.springframework.stereotype.Repository;


//dao는 무조건 싱글톤으로 만들어주어야 한다.
//@Repository << dao를 싱글톤으로 만들어준다.
// 싱글톤으로 만들어줄 객체가 아니라면 어노테이션을 달지 않는다.
// 싱글톤은 객체가 생성되었다는것이고 , 주소를 자기가 생성한다.
@Repository
public class MemberDAO {
	//기능당 하나씩 메서드를 만들어준다.
	public boolean login(MemberDTO dto) {
		String dbId = "root";
		String dbPw = "1234";
		Boolean result = false;
		if (dto.getId().equals(dbId) && dto.getPw().equals(dbPw)) {
			System.out.println("로그인 성공");
			result = true;
		}
		return result;
	}
	
	public void create() {

	}

	public void read() {

	}

	public void update() {

	}

	public void delete() {

	}

}
