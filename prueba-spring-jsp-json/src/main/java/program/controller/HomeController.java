package program.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goToHomeBlank() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView goToHome() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
}
