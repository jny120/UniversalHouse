package tw.space.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JspMainController {
	
	
	
	@GetMapping("/admin/insertspacemain.controller")
	public String processShowInsertJsp() {
		return "space/admin/insertSpace";
	}
	
	@GetMapping("/user/space")
	public String processShowSpaceJsp() {
		return "space/user/space";
	}
	
}
