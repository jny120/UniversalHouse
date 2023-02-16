package tw.test.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.test.model.TestService;
import tw.test.model.galleryDao;

@Controller
public class DeleteTestController {

	@Autowired
	private TestService tService;

	@Autowired
	private galleryDao gService;

}
