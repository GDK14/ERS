package kr.ac.ers.controller.local;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ers/local/emergency")
public class LocalEmergencyController {
	
	@GetMapping("/occurrence")
	public String Occurrence() {
		return  "ers/local/emergency/occurrence";
	}

}
