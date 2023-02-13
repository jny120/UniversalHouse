package tw.test.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.test.model.TestService;
import tw.test.model.galleryBean;
import tw.test.model.galleryDao;
import tw.test.model.testCenterBean;
import tw.test.model.totalScore;
import tw.test.model.totalScoreDao;

// @RequestMapping("/admin")
@Controller
public class ShowTestController {

	@Autowired
	private galleryDao gService;

	@Autowired
	private TestService tService;

	@Autowired
	private totalScoreDao sService;

	@GetMapping("/backStage")
	public String processMainAction() {
		return "/test/testStage/backStage";
	}

	@GetMapping("/showTest")
	public String processMainAction2() {
		return "/test/show/showTest";
	}

	@GetMapping("/showTest2")
	public String processMainAction3() {
		return "/test/show/showTest2";
	}

	@PostMapping("/ShowTestServlet")
	public String processRequest(
			@RequestParam("field") String field,
			Model m) {
		List<testCenterBean> testCenterBean = tService.checkFieldTest(field);
		m.addAttribute("testCenterBean", testCenterBean);
		return "/test/show/showTestPage";
	}

	@RequestMapping("/admin/ShowTestServlet.controller")
	@ResponseBody
	public List<testCenterBean> processRequest2(
			@RequestParam("field") String field,
			Model m) {
		System.out.println(field);
		List<testCenterBean> testCenterBean = tService.checkFieldTest(field);
		// m.addAttribute("testCenterBean", testCenterBean);
		System.out.println(testCenterBean);
		return testCenterBean;
	}

	@PostMapping("/ShowTester")
	@ResponseBody
	public List<totalScore> ShowTester() {
		List<totalScore> totals = sService.showallTotalScore();
		// System.out.println(totals + "------------------------");
		// System.out.println(totals.get(0).getMemberId());
		return totals;
	}

	@RequestMapping("/ShowImgJoin/{id}")
	@ResponseBody
	public byte[] showImgJoin(
			@PathVariable("id") Integer id,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		System.out.println(id);
		byte[] bImg = sService.imgGallery(id);
		// galleryBean gBean = gService.findByPk(id);
		// byte[] bImg = gBean.getTestImage();
		InputStream is = new ByteArrayInputStream(bImg);
		return IOUtils.toByteArray(is);
	}
}
