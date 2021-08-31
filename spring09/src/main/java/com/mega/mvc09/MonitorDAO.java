package com.mega.mvc09;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public class MonitorDAO {
	
	public void monitorPay() {
		System.out.println("모니터 페이 메서드예요");
	}

}
