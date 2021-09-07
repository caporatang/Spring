package com.mega.mvc14;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository // db용 부품을 싱글톤으로 생성 해줌
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	
	// 기능별로 메서드 !!!로 정의한다.
	public void create(BbsDTO bbsDTO) { // db처리 해줄 값들을 파라메터로 가져온다 
		int result	= my.insert("bbs.add", bbsDTO); // bbs.add(namespace.id)  
			System.out.println(result); // 리턴값을 인트로 받은다음 콘솔에 찍어보자.
	}

	//전체검색 select
	public List<MemberDTO> list() {
		List<MemberDTO> list = my.selectList("bbs.all");
		return list;
		
	}
	
	
	
	public void read() {

	}

	public void update() {

	}

	public void delete() {

	}

}
