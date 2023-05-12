package kr.ac.ers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {

	@GetMapping("/ers/index")
	public ModelAndView index(String url, ModelAndView mnv) throws Exception {
	String view = "/common/indexPage";
	
	if(url == null) url = "/ers/center";
	
	mnv.addObject("url", url);
	mnv.setViewName(view);
	return mnv;
	}
}
