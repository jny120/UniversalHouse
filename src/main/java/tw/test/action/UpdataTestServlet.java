package tw.test.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.test.model.TestService;
import tw.test.model.galleryBean;
import tw.test.model.galleryDao;
import tw.test.model.testCenterBean;

@Controller
public class UpdataTestServlet {

	@Autowired
	private TestService tService;

	@Autowired
	private galleryDao gService;
	// @PostMapping("/UpdataTest")
	// public void processRequest(
	// @RequestParam("testPk") @Nullable String testPk,
	// @RequestParam("testId") @Nullable String testId,
	// @RequestParam("examinationQuestion") @Nullable String examinationQuestion,
	// @RequestParam("field") @Nullable String field,
	// @RequestParam("options") @Nullable String options,
	// @RequestParam("options2") @Nullable String options2,
	// @RequestParam("options3") @Nullable String options3,
	// @RequestParam("options4") @Nullable String options4,
	// Model m) {
	// System.out.println("sad");
	// testCenterBean tBean = new testCenterBean(Integer.parseInt(testPk), testId,
	// examinationQuestion, field, options,
	// options2, options3, options4);
	// tService.updataTest(tBean);

	// }

	@PostMapping("/UpdataTestPage")
	public String UpdataTestPage(@RequestParam("testPk") String testPk,
			Model m) {
		System.out.println(testPk);
		m.addAttribute("test", testPk);
		return "/test/show/showUpdatePage";
	}

	@PostMapping("/UpdataImgNumber")
	public void UpdataImgNumber(
			galleryBean gBean,
			Model m) {
		gService.updataTest(gBean);
	}
}