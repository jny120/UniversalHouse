package tw.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes(names = "LoginOK")
public class LogoutController {
	
	@PostMapping("/logout.do")
	protected String logout( Model m, SessionStatus status ) {
		if( m.getAttribute("LoginOK")!=null ) {
			status.setComplete();
		}
		return "redirect:/";
	}
	
}
