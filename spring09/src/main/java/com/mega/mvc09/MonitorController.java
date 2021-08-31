package com.mega.mvc09;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MonitorController {

	@Autowired
	MonitorDAO dao;

	@RequestMapping("monitor")
	public String monitor(String monitor, int price) {
		System.out.println(monitor);
		System.out.println(price);
		if (price >= 10000) {
			return "monitorPay";
		} else {
			return "redirect:review.jsp";
		}

	}
	
	@RequestMapping("monitorPay.do")
	public void monitorPay() {
		dao.monitorPay();
	}
	
	
}
