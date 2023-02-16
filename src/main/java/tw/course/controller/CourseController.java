package tw.course.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.course.model.Course;
import tw.course.model.CourseService;

@Controller
public class CourseController {

	@Autowired
	private CourseService cService;

	// 查詢所有
	@RequestMapping("/admin/showAllcourse")
	public String showAllCourse(Model model) {
		List<Course> allCourse = cService.getAllCourse();
		model.addAttribute("course", allCourse);
		return "/courseBackstage/showAllcourse";
	}

	// 前往新增頁面
	@GetMapping("/addCourseAction")
	public String processAddCourseAction() {
		return "/courseBackstage/addCourse";
	}

	// 新增
	@RequestMapping(path = "/addCourse", method = RequestMethod.POST)
	public String addCourse(Course course, Model model) {

		cService.insert(course);

		model.addAttribute("course", course);
//		return "/courseBackstage/addCourseSuccess";
		return "forward:/admin/showAllcourse";
	}

	// 修改
	@PostMapping("/admin/updateCourse")
	public String updateCourse(Course newCourse, Model model) throws IOException, SQLException {
		if (newCourse.getImage()!=null) {
			cService.updateCourse(newCourse);
		} else {

			Integer courseId = newCourse.getCourseId();
			Course oldCourse = cService.findById(courseId);
			Blob oldImage = oldCourse.getImage();
			newCourse.setImage1(oldImage);
			cService.updateCourse(newCourse);

		}

		return "forward:/admin/showAllcourse";

	}

	// 刪除
	@PostMapping("/admin/deleteCourse")
	@ResponseBody
	public void deleteCourse(@RequestParam("courseId") Integer courseId) {
		cService.deleteById(courseId);
	}

	// preUpdate
	@GetMapping("/admin/preUpdate/{courseId}")
	public String preUpdateCourse(@PathVariable("courseId") Integer courseId, Model model) {
		Course course = cService.findById(courseId);
		model.addAttribute("course", course);
		return "/courseBackstage/updateCourse";

	}

	// 圖片
	@RequestMapping("/admin/showCourseImg/{courseId}")
	@ResponseBody
	private byte[] processRequest(@PathVariable("courseId") Integer courseId, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException, SQLException {
		Course course = cService.findById(courseId);
//		System.out.println(course.toString());
		Blob blob = course.getImage();

		InputStream is = blob.getBinaryStream();

		return IOUtils.toByteArray(is);
	}

	// 模糊搜尋
	@GetMapping("/admin/findByName")
	public String findByName(@RequestParam("courseName") String courseName, Model model) {
		List<Course> courseList = cService.findByNameLike(courseName);
		model.addAttribute("course", courseList);
		return "/courseBackstage/showAllcourse";
	}
}
