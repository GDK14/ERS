package kr.ac.ers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class adminLoginContoller {
	
	@GetMapping("adminLogin/LoginForm")
	public String adminLogin() {
		return "/adminLogin/LoginForm";
	}

}
