package com.mega.mvc09;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	MovieDAO dao;
	
	@RequestMapping("movie.ticket")
	public String movies(String title, int price) {
		System.out.println("영화제목은 : " + title);
		System.out.println("결제 금액은" + price);
		if (price >= 10000) {
			return "pay";
		} else {
			return "redirect:movie.jsp";
		}
	}
	@RequestMapping("pay.do")
	public void moviePay() {
	dao.pay();
	}
}
