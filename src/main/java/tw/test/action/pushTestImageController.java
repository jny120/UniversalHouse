
package tw.test.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.io.IOUtils;
import tw.test.model.galleryBean;
import tw.test.model.galleryDao;

@Controller
public class pushTestImageController {

	@Autowired
	private galleryDao gService;
	
	@RequestMapping(path = "/admin/testBackstage")
	public String processAction2() {

		return "/test/testStage/testtest";
	}

	@RequestMapping(path = "/ImgMaintain2.controller")
	public String processAction2(Model m) {
		List<galleryBean> gallerylist = gService.selectAll();
		m.addAttribute("test", gallerylist);
		System.out.println(gallerylist.toString());
		return "/test/testStage/backStage";
	}

	@RequestMapping(path = "/ImgMaintain.controller")
	public String processAction(Model m) {
		List<galleryBean> gallerylist = gService.selectAll();
		m.addAttribute("test", gallerylist);
		System.out.println(gallerylist.toString());
		return "/test/show/showAllImg";
	}

	@RequestMapping(path = "/ImgMaintain.controller2")
	public String processAction3(Model m) {
		List<galleryBean> gallerylist = gService.selectAll();
		m.addAttribute("test", gallerylist);
		System.out.println(gallerylist.toString());
		return "/test/show/showAllImg";
	}

	@PostMapping("/PushTestImage.do")
	private ModelAndView processRequest(
			@RequestParam("answer") String answer,
			@RequestParam("image") MultipartFile image,
			Model m) throws IOException {

		String fileName = image.getOriginalFilename();
		byte[] b = image.getBytes();

		if (fileName != null && fileName.length() != 0) {
			saveImg(answer, b);
		}
		return new ModelAndView("redirect:/ImgMaintain.controller");

	}

	private void saveImg(String answer, byte[] b) {
		galleryBean gBean = new galleryBean(answer, b);
		gService.insert(gBean);
		System.out.println(gBean.toString());
	}

	@RequestMapping("images.controller/{imagePk}")
	@ResponseBody
	public byte[] processByteArrayImageAction(
			@PathVariable("imagePk") int imagePk,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		galleryBean gBean = gService.findByPk(imagePk);
		byte[] picturebyte = gBean.getTestImage();
		InputStream is = new ByteArrayInputStream(picturebyte);

		return IOUtils.toByteArray(is);

	}
}
