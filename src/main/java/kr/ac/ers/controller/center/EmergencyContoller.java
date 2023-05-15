package kr.ac.ers.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ers/center/emergency")
public class EmergencyContoller {

	@GetMapping("/chart")
	public String Chart() {
		return  "ers/center/emergency/chart";
	}

	@GetMapping("/list")
	public String List() {
		return  "ers/center/emergency/list";
	}
	
	@GetMapping("/detail")
	public String Detail() {
		return  "ers/center/emergency/detail";
	}
}
