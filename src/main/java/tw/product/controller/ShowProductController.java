package tw.product.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
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

import tw.course.model.Course;
import tw.course.model.CourseService;

@Controller
public class ShowProductController {

	@Autowired
	private CourseService cService;

	// 前往商品頁面
	@GetMapping("/showProductAction")
	public String processShowProductAction() {
		return "/product/allProduct";
	}

	// 顯示商品頁
	@GetMapping("/showAllProduct")
	public String showAllCourse(Model model) {
		List<Course> allCourse = cService.getAllCourse();
//		System.out.println(allCourse);
		model.addAttribute("course", allCourse);
		return "/product/allProduct";
	}
	

	//顯示圖片
	@RequestMapping("/showCourseImg/{courseId}")
	@ResponseBody
	private byte[] processRequest(@PathVariable("courseId") Integer courseId, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException, SQLException {
		Course course = cService.findById(courseId);
//		System.out.println(course.toString());
		Blob blob = course.getImage();

		InputStream is = blob.getBinaryStream();

		return IOUtils.toByteArray(is);
	}
	

	//	顯示一筆商品
	@GetMapping("/showDetail/{courseId}")
	public String showDetail(@PathVariable("courseId") Integer courseId , Model m) {
		Course course=cService.findById(courseId);
		m.addAttribute("course", course);
		return "/product/productDetail";
		
	}
}
