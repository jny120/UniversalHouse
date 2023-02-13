package tw.test.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.test.model.TestService;
import tw.test.model.galleryDao;

@Controller
public class DeleteTestController {

	@Autowired
	private TestService tService;

	@Autowired
	private galleryDao gService;

	@PostMapping("/admin/deleteTest.do")
	private void processRequest(
			@RequestParam("testId") String testId,
			Model m) {
		tService.deleteById(Integer.parseInt(testId));
	}

	@PostMapping("/deleteImg.do")
	private void processRequest2(
			@RequestParam("imagePk") String imagePk,
			Model m) {
		gService.deleteByImgPk(Integer.parseInt(imagePk));
	}

}
