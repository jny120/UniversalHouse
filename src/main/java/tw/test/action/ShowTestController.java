package tw.test.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Modifier;
import java.security.Principal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.test.model.survey;
import tw.test.model.surveyService;
import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.test.model.TestService;
// import tw.test.model.advertise;
import tw.test.model.galleryBean;
import tw.test.model.galleryDao;
import tw.test.model.testCenterBean;
import tw.test.model.totalScore;
import tw.test.model.totalScoreDao;

// @RequestMapping("/admin")
// @SessionAttributes({ "totalPages", "totalElements" })
@Controller
public class ShowTestController {

	@Autowired
	private surveyService surveyService;

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

	@RequestMapping("testcenterFront.controller")
	@ResponseBody
	public List<survey> processtestcenter() {
		List<survey> survey = surveyService.findAll();
		return survey;
	}

	@PostMapping("/testfindAllByPage/{pageNo}")
	@ResponseBody
	public List<survey> testfindAllByPage(@PathVariable("pageNo") int pageNo, Model m) {
		int pageSize = 6;// 每頁顯示比數
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<survey> page = surveyService.findAllByPage(pageable);
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		return surveyService.findAllByPage(pageable).getContent();

	}

	@PostMapping("findsurvey.controller")
	@ResponseBody
	public List<survey> findByIdsurvey(
			@RequestParam("field") String inputRadio,
			Model m) {
		List<survey> survey = surveyService.checksurveyTest(inputRadio);
		return survey;
	}

	@GetMapping("/ShowsurveyImgServlet.do/{surveyId}")
	@ResponseBody
	private byte[] showImg(@PathVariable("surveyId") Integer surveyId, HttpServletResponse response)
			throws IOException, ServletException, SerialException, SQLException {
		survey survey = surveyService.findByPk(surveyId);
		return survey.getTestImage();
	}

	// @PostMapping("/testgo.do")
	// public String testgo(
	// @RequestParam("survey") String survey,
	// Model m) {
	// System.out.println(survey + "++++++++++++++++");
	// List<testCenterBean> testCenterBean = tService.checkFieldTest(survey);
	// System.out.println(testCenterBean);
	// m.addAttribute("testCenterBean", testCenterBean);
	// return "test/show/testgo";
	// }
	@GetMapping("/testgo.do")
	public String testgo(
			@RequestParam("survey") String survey,
			Model m) {
		// System.out.println(survey + "++++++++++++++++");
		// List<testCenterBean> testCenterBean = tService.checkFieldTest(survey);
		// System.out.println(testCenterBean);
		m.addAttribute("testCenterBean", survey);
		return "test/show/testgo";
	}

	@PostMapping("/findTestByField")
	@ResponseBody
	public List<testCenterBean> findtest(
			@RequestParam("field") String field,
			Model m) {
		System.out.println(field + "++++++++++++++++");
		List<testCenterBean> testCenterBean = tService.checkFieldTest(field);
		System.out.println(testCenterBean);
		return testCenterBean;
	}

	@GetMapping("/ShowsurveyImgServlets.do/{surveyId}")
	@ResponseBody
	private byte[] showImgs(@PathVariable("surveyId") String surveyId, HttpServletResponse response)
			throws IOException, ServletException, SerialException, SQLException {
		System.out.println(surveyId);
		survey survey = surveyService.checksurveyTests(surveyId);
		return survey.getTestImage();
	}

	@RequestMapping("/ShowTestServletfront.controller")
	@ResponseBody
	public List<testCenterBean> processRequest2(
			@RequestParam("field") String field,
			Model m) {

		System.out.println(field.replaceAll("\"", ""));
		String fields = field.replaceAll("\"", "");
		List<testCenterBean> testCenterBean = tService.checkFieldTest(fields);
		return testCenterBean;
	}

	// @GetMapping("/testgo.do/{survey}")
	// public String testgo(
	// @PathVariable("survey") String survey,
	// Model m,
	// HttpServletRequest request,
	// HttpServletResponse response) throws IOException {
	// System.out.println(survey + "+++++++++++++++++++++++++++++++++++++++++++");
	// List<testCenterBean> testCenterBean = tService.checkFieldTest(survey);
	// System.out.println(testCenterBean);
	// m.addAttribute("testCenterBean", testCenterBean);
	// return "test/show/testgo";

	// }
	@Autowired
	private MemberService memberService;
	
	@GetMapping("testeralltest")
	public String testalltest(Principal memberid, Model m) {
		// List<totalScore> memberids = sService.showallMembertest(memberid);
		Member member = memberService.findByMemberId(memberid.getName());
		m.addAttribute("memberids", member.getName());
		return "/test/show/testeralltest";
	}

	@GetMapping("findmembertest.controller")
	@ResponseBody
	public List<totalScore> findbymemberId(@RequestParam("memberId") String memberid) {
		List<totalScore> testers = sService.showallMembertest(memberid);

		return testers;
	}

}
