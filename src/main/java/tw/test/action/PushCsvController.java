package tw.test.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tw.test.model.TestService;
import tw.test.model.testCenterBean;

//@MultipartConfig
//@WebServlet("/PushCsv.do")
@Controller
public class PushCsvController {

	// @GetMapping("/PushCsv")
	// public String processMainAction() {
	// return "/test/push/PushCsv";
	// }

	// @GetMapping("/insertTest")
	// public String processMainAction2() {
	// return "/test/push/insertTest";
	// }

	// @Autowired
	// private TestService tService;

	// @PostMapping("/PushCsv.do")
	// private String processRequest(
	// @RequestParam("file") MultipartFile file,
	// Model m) {

	// List<testCenterBean> testCenterBean = tService.pushCsv(file);
	// m.addAttribute("testCenterBean", testCenterBean);
	// return "/test/push/pushCsvOK";
	// }
}
