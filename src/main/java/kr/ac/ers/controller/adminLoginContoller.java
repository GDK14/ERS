package kr.ac.ers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminLoginContoller {
	
	@RequestMapping("/adminLogin/LoginForm")
	public String adminLogin() {
		return "adminLogin/LoginForm";
	}

}
