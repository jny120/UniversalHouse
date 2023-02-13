package tw.test.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.test.model.TestService;
import tw.test.model.testCenterBean;


@Controller
public class TestStartController {

	@GetMapping("/test")
	public String processMainAction() {
		return "/test/testIndex";
	}
	@GetMapping("/frontDesk")
	public String processMainAction2() {
		return "/test/testStage/frontDesk";
	}
	
	@Autowired
	private TestService tService;
	
	
	
	@PostMapping("/TestStartServlet.do")
	public String TestStart(@RequestParam("field") String field, Model m) 
	{
		List<testCenterBean> selectTest = tService.checkFieldTest(field);
	
		m.addAttribute("testCenterBean",selectTest);
		return "/test/testStage/TestStart";
	}

}
