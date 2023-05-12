package kr.ac.ers.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainCenterController {
	
	
	@GetMapping("/ers/center")
	public String root(Model model) {
		return "ers/center/main";
	}
	
}
