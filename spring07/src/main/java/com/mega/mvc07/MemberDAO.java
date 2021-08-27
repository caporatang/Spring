package com.mega.mvc07;

import org.springframework.stereotype.Repository;

//특정한 방법을 가지고 처리하는 파일 : 방법 파일(Model,DAO) 이라고 한다.
//db처리... 어노테이션으로 상속받아서 사용한다.
//어노테이션이 붙어있는 클래스들은 다 싱글톤으로 스프링에서 처리한다.
@Repository 
public class MemberDAO {
	public void insert(MemberDTO dto) {
		System.out.println(dto.getId());
		System.out.println(dto.getPw());
		System.out.println(dto.getName());
		System.out.println(dto.getTel());
	}
}
