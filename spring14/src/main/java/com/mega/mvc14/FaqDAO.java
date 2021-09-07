package com.mega.mvc14;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	public void create(FaqDTO faqDTO) {
		 int result = mybatis.insert("faq.faqAdmin", faqDTO); // insert는 int로 자 리
		System.out.println(result);
	}
	
	public FaqDTO read(FaqDTO faqDTO) {
	FaqDTO dto = mybatis.selectOne("faq.faqTwo", faqDTO);
	System.out.println(dto);
	return dto;
	
	}
}
