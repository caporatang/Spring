package com.fly.pro2;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QusetionDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public void create(QuestionDTO questionDTO) {
		int result = mybatis.insert("question.questionWrite", questionDTO);
		System.out.println(result);
	}
	
	
}
