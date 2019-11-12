package program.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PagesController {
	
	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public ModelAndView goToRegistro() {
		ModelAndView mv = new ModelAndView("registro");
		return mv;
	}
	
}
