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

	// @GetMapping("/showAllEntrusBacktage/{pageNo}")
	// public String showAllEntrusProject(@PathVariable("pageNo") int pageNo, Model
	// model) {
	// int pageSize = 10;
	// Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
	// Page<Project> page = projectService.findByPjClass("委託", pageable);

	// model.addAttribute("nowPage", pageNo);
	// model.addAttribute("totalPages", page.getTotalPages());
	// model.addAttribute("project", page.getContent());

	// return "/project/project/backstage/showAllEntrusBackstage";
	// }

	@Autowired
	private TestService tService;

	@PostMapping("/TestStartServlet.do")
	public String TestStart(@RequestParam("field") String field, Model m) {
		System.out.println(field);
		List<testCenterBean> selectTest = tService.checkFieldTest(field);

		m.addAttribute("testCenterBean", selectTest);
		return "/test/testStage/TestStart";
	}

}
