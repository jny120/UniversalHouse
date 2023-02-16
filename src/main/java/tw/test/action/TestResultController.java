package tw.test.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.test.model.galleryBean;
import tw.test.model.galleryDao;
import tw.test.model.tester;
import tw.test.model.totalScore;
import tw.test.model.totalScoreDao;

@Controller
public class TestResultController {

	@Autowired
	private totalScoreDao sService;

	@Autowired
	private galleryDao gService;

	@PostMapping("/TestResultreturn")
	@ResponseBody
	public String TestResultendreturn(
			@RequestParam("total") @Nullable String totals,
			@RequestParam("names") String name,
			@RequestParam("fields") String field,
			@RequestParam("inputradio2") @Nullable String inputradio2,
			Model m) {
		System.out.println(m);
		System.out.println(field);
		totalScore totalScore = new totalScore();
		totalScore.setMemberId(name);
		totalScore.setFraction(totals);
		totalScore.setInputRadio(field.toString());
		totalScore.setInputRadio2(inputradio2);
		sService.save(totalScore);

		return "success";
	}

	@GetMapping("/TestResult")
	public String TestResultend(
			@RequestParam("total") @Nullable String totals,
			@RequestParam("names") String name,
			@RequestParam("fields") String field,
			@RequestParam("inputradio2") @Nullable String inputradio2,
			Model m) {
		totalScore totalScore = new totalScore();
		totalScore.setMemberId(name);
		totalScore.setFraction(totals);
		totalScore.setInputRadio(field);
		totalScore.setInputRadio2(inputradio2);
		// System.out.println("sssssssssssssssssssss" + totalScore);
		m.addAttribute("totalScore", totalScore);
		return "test/show/showTestResult";
	}

	@PostMapping("/TestResultServlet")
	private String processRequest(
			@RequestParam("total") String totals,
			@RequestParam("name") @Nullable String name,
			Model m) {

		totalScore totalScore = new totalScore();
		totalScore.setMemberId(name);
		totalScore.setFraction(totals);
		tester tester = new tester();
		tester.setId(1);
		sService.saveOneToMany(totalScore, tester);
		Integer totalint = Integer.parseInt(totals);
		if (totalint >= 100) {
			galleryBean gBean = gService.findByPk(1);
			sService.saveImgIntotalScore(totalScore, gBean);
		} else if (totalint < 100 && totalint >= 95) {
			galleryBean gBean = gService.findByPk(2);
			sService.saveImgIntotalScore(totalScore, gBean);
		} else if (totalint < 95 && totalint >= 90) {
			galleryBean gBean = gService.findByPk(3);
			sService.saveImgIntotalScore(totalScore, gBean);
		} else if (totalint < 90 && totalint >= 85) {
			galleryBean gBean = gService.findByPk(4);
			sService.saveImgIntotalScore(totalScore, gBean);
		} else if (totalint < 85 && totalint >= 80) {
			galleryBean gBean = gService.findByPk(5);
			sService.saveImgIntotalScore(totalScore, gBean);
		}

		m.addAttribute("total", totalScore);
		return "/test/show/showResultEnd";

	}

	@RequestMapping("showResultEndImg.controller/{fraction}")
	@ResponseBody
	public byte[] processByteArrayImageAction(
			@PathVariable("fraction") String fraction,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		Integer fra = Integer.parseInt(fraction);
		if (!fraction.equals("")) {

			if (fra >= 100) {

				galleryBean gBean = gService.findByPk(1);
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			} else if (fra < 100 && fra >= 95) {
				galleryBean gBean = gService.findByPk(2);
				System.out.println(gBean + "gBean");
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			} else if (fra < 95 && fra >= 90) {
				galleryBean gBean = gService.findByPk(3);
				System.out.println(gBean + "gBean92");
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			} else if (fra < 90 && fra >= 85) {
				galleryBean gBean = gService.findByPk(4);
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			} else if (fra < 85 && fra >= 80) {
				galleryBean gBean = gService.findByPk(5);
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			} else if (fra < 80 && fra >= 75) {
				galleryBean gBean = gService.findByPk(6);
				byte[] picturebyte = gBean.getTestImage();
				InputStream is = new ByteArrayInputStream(picturebyte);

				return IOUtils.toByteArray(is);
			}
		}
		return null;
	}

	// @GetMapping("/showResultEnd")
	// public String processMainAction() {
	// return "/test/show/showResultEnd";
	// }
}
