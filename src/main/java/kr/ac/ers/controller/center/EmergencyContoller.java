package kr.ac.ers.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/emergency")
public class EmergencyContoller {

	@RequestMapping("/chart")
	public String Chart() {
		return  "ers/center/emergency/chart";
	}
}
