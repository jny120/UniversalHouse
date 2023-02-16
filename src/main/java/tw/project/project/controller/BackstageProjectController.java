package tw.project.project.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Table;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.project.pjImg.model.PJImgService;
import tw.project.pjImg.model.PjImg;
import tw.project.project.model.Project;
import tw.project.project.model.ProjectService;

//所有後臺功能
@Controller
@RequestMapping("/admin/projects")
public class BackstageProjectController {

	@Autowired
	private ProjectService projectService;

	@Autowired
	private MemberService memberService;

	// 顯示Backstage首頁
	@GetMapping("/projectOrder")
	public String showprojectUserPage(Model model) {
		return "project/project/backstage/projectOrder";
	}

	// 委託項目

	// 顯示所有委託項目
	@GetMapping("/showAllEntrusBacktage/{pageNo}")
	public String showAllEntrusProject(@PathVariable("pageNo") int pageNo, Model model) {
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClass("委託", pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "/project/project/backstage/showAllEntrusBackstage";
	}

	// 導向新增委託頁面
	@GetMapping("/saveEntrusAction")
	public String processSaveEntrusAction() {
		return "project/project/backstage/saveEntrusProject";
	}

	// 新增委託
	@RequestMapping(path = "/saveEntrus", method = RequestMethod.POST)
	public String saveEntrus(Project project, Principal p, Model model) throws ParseException {
		Member member = memberService.findByName(p.getName());
		project.setMember(member);
		project.setPjClass("委託");
		Date date = new Date();
		project.setPjUploadDate(date);
		project.setPjLastUpdate(date);
		project.setPjStatus("審核中");

		projectService.saveProject(project);

		model.addAttribute("project", project);
		return "redirect:/admin/projects/showAllEntrusBacktage/1";
	}

	// 搜尋所有委託項目
	@GetMapping("/selectAllEntrusBackstage/{pageNo}")
	public String selectEntrusName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName,
			Model model) {
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjNameLike("委託", findPjName, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());
		return "project/project/backstage/showAllEntrusBackstage";
	}

	// 服務項目

	@Autowired
	private PJImgService pImgService;

	// 顯示所有服務項目
	@GetMapping("/showAllServiceBacktage/{pageNo}")
	public String showAllServiceProject(@PathVariable("pageNo") int pageNo, Model model) {
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClass("服務", pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/backstage/showAllServiceBackstage";
	}

	// 搜尋所有委託項目
	@GetMapping("/selectAllServiceBackstage/{pageNo}")
	public String selectServiceName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName,
			Model model) {
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjNameLike("服務", "%" + findPjName + "%", pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());
		return "project/project/backstage/showAllServiceBackstage";
	}

	// 導向新增服務頁面
	@GetMapping("/saveServiceAction")
	public String processSaveServiceAction() {
		return "project/project/backstage/saveServiceProject";
	}

	// 新增服務項目
	@RequestMapping(path = "/saveService", method = RequestMethod.POST)
	public String saveEntrus(Project project, @RequestPart("pjImg") List<MultipartFile> files, Principal p, Model model)
			throws ParseException, IOException {
		Member member = memberService.findByName(p.getName());

		project.setPjClass("服務");
		project.setMember(member);
		Date date = new Date();
		project.setPjUploadDate(date);
		project.setPjLastUpdate(date);
		project.setPjStatus("審核中");
		for (MultipartFile file : files) {
			saveImg(project, file);
		}
		model.addAttribute("project", project);
		return "redirect:/admin/projects/showAllServiceBacktage/1";
	}

	// 新增圖片
	public void saveImg(Project pj, MultipartFile file) throws IOException {
		String fileName = file.getOriginalFilename();

		byte[] b = file.getBytes();

		if (fileName != null && fileName.length() != 0) {
			List<PjImg> pjImgs = new ArrayList<PjImg>();
			PjImg p1 = new PjImg(pj, b);
			pjImgs.add(p1);
			pj.setPjImgs(pjImgs);
		}
		projectService.saveProject(pj);
	}

	// 通用Method

	// 顯示案件詳細頁面
	@GetMapping("/projectBackstage/{pjID}")
	public String goToSingleBackstage(@PathVariable("pjID") int pjID, Model model) {
		Project findByPJId = projectService.findBypjID(pjID);
		if ((findByPJId.getPjExCompletionDate()) != null) {
			String format = (findByPJId.getPjExCompletionDate()).toInstant().atOffset(ZoneOffset.UTC)
					.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

			model.addAttribute("day", format);

		}
		model.addAttribute("project", findByPJId);
		return "/project/project/backstage/goToSingleBackstage";
	}

	// 更新案件
	@PostMapping("/updateSingleProject")
	public String updateSSingleProject(Project project) throws ParseException {
		Project project2 = projectService.findBypjID(project.getPjID());
		project.setMember(project2.getMember());
		project.setPjClass(project2.getPjClass());
		project.setFieldName(project2.getFieldName());
		project.setPjUploadDate(project2.getPjUploadDate());
		project.setPjLastUpdate(new Date());

		projectService.updateProject(project);

		return "redirect:/admin/projects/showAllEntrusBacktage/1";
	}

	// 更新案件
	@PostMapping("/updateProject")
	public void updateProject(@RequestParam("pjID") int pjID, @RequestParam("pjStatus") String pjStatus)
			throws ParseException {
		Project project = projectService.findBypjID(pjID);
		project.setPjStatus(pjStatus);

		projectService.updateProject(project);
	}

	// 刪除案件
	@PostMapping("/deleteProject")
	@ResponseBody
	public void deleteProject(@RequestParam("pjID") int pjID) {
		Project project = projectService.findBypjID(pjID);
		projectService.daleteProject(project);
	}
}
