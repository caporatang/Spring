package com.mega.mvc13;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {

	@Autowired
	FaqDAO dao;

	@RequestMapping("faq")
	public void insert(FaqDTO faqDTO) {
		System.out.println(faqDTO);
		dao.create(faqDTO);
	}
	@RequestMapping("faq1")
	public void faqRead(FaqDTO faqDTO, Model model) {
		System.out.println(faqDTO.getqNo());
		FaqDTO dto = dao.read(faqDTO);
		System.out.println(dto);
		model.addAttribute("faqNum", dto);
	}
	
}
