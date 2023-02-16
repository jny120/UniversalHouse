package tw.project.project.controller;

import java.io.IOException;
import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.logging.log4j.core.config.Order;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.project.evaluation.model.Evaluation;
import tw.project.evaluation.model.EvaluationService;
import tw.project.pjImg.model.PjImg;
import tw.project.project.model.Project;
import tw.project.project.model.ProjectService;

@Controller
@RequestMapping("/users/projects")
public class UserProjectController {

	@Autowired
	private ProjectService projectService;

	@Autowired
	private EvaluationService evaluationService;

	@Autowired
	private MemberService memberService;

	Order order;

	private AioCheckOutALL obj = new AioCheckOutALL();
	
	private AllInOne allInOne = new AllInOne("");

	@PostMapping("/addOrder")
	@ResponseBody
	public String addOrder(@RequestParam("pjID") String pjID, @RequestParam("pjName") String pjName, @RequestParam("pjPrice") String pjPrice) {
		UUID randomUUID = UUID.randomUUID();
		String substring = randomUUID.toString().substring(24);
		obj.setMerchantTradeNo(substring+pjID);
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();        
		String dateToStr = dateFormat.format(date);
		obj.setMerchantTradeDate(dateToStr);

		obj.setTradeDesc("請確認資料皆無問題再付款");
		obj.setReturnURL("http://localhost:8080/admin/projects/projectOrder");
		obj.setTotalAmount(pjPrice);
		obj.setItemName(pjName);
		obj.setClientBackURL("http://localhost:8080/users/projects/showMyEntrustingProject/1");
		obj.setNeedExtraPaidInfo("N");

		System.out.println(obj);
		//傳進資料庫
		Evaluation findByEvID = evaluationService.findByEvID(Integer.parseInt(pjID));
		findByEvID.setEvDealPrice(Integer.parseInt(pjPrice));
		evaluationService.saveEvaluation(findByEvID);
		
		String form = allInOne.aioCheckOut(obj, null);
		
		
		return form;
	}

	@GetMapping("/showMyEntrustingProject/{pageNo}")
	public String showMyEntrustingProject(@PathVariable("pageNo") int pageNo, Principal p, Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 5;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Evaluation> page = evaluationService.findByMember(member, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("evaluation", page.getContent());
		return "project/project/user/addToProjectCart";
	}

	@GetMapping("/showMyServicingProject/{pageNo}")
	public String showMyServicingProject(@PathVariable("pageNo") int pageNo, Principal p, Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 5;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Evaluation> page = evaluationService.findByServicer(member, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("evaluation", page.getContent());
		return "project/project/user/addToServiceCart";
	}

	@GetMapping("/showMyEntrus/{pageNo}")
	public String showEntrus(@PathVariable("pageNo") int pageNo, Principal p, Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndMember("委託", member, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());
		return "project/project/user/showMyEntrus";
	}

	// 導向新增委託頁面
	@GetMapping("/saveEntrusAction")
	public String processSaveEntrusAction() {
		return "project/project/user/saveEntrusProject";
	}

	// 新增委託
	@RequestMapping(path = "/saveEntrus", method = RequestMethod.POST)
	public String saveEntrus(Project project, Principal p, Model model) throws ParseException {

		Member member = memberService.findByMemberId(p.getName());
		project.setMember(member);
		project.setPjClass("委託");
		Date date = new Date();
		project.setPjUploadDate(date);
		project.setPjLastUpdate(date);
		project.setPjStatus("審核中");

		projectService.saveProject(project);

		model.addAttribute("project", project);
		return "redirect:/users/projects/showMyEntrus/1";
	}

	// 導向新增服務頁面
	@GetMapping("/saveServiceAction")
	public String processSaveServiceAction() {
		return "project/project/user/saveServiceProject";
	}

	// 新增服務項目
	@RequestMapping(path = "/saveService", method = RequestMethod.POST)
	public String saveEntrus(Project project, @RequestPart("pjImg") List<MultipartFile> files, Principal p, Model model)
			throws ParseException, IOException {
		Member member = memberService.findByMemberId(p.getName());

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
		return "redirect:/users/projects/showMyService/1";
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

	// 搜尋所有委託項目
	@GetMapping("/selectAllEntrusUser/{pageNo}")
	public String selectEntrusName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName, Principal p,
			Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndMemberAndPjNameLike("委託", member, findPjName, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/user/showMyEntrus";
	}

	@PostMapping("/addToEntrusCart")
	@ResponseBody
	public void addToEntrusCart(@RequestParam("pjID") int pjID, @RequestParam("serviceID") String serviceID, Principal p,
			Model model) {
		Evaluation evaluation = new Evaluation();
		Project project = projectService.findBypjID(pjID);
		Member member = memberService.findByMemberId(p.getName());
		Member servicer = memberService.findByMemberId(serviceID);

		if (!serviceID.equals(member.getMemberId())) {
			evaluation.setServicer(servicer);
			evaluation.setMember(member);
			evaluation.setProject(project);
			evaluationService.saveEvaluation(evaluation);
		}
	}

	@GetMapping("/showMyService/{pageNo}")
	public String showService(@PathVariable("pageNo") int pageNo, Principal p, Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndMember("服務", member, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());
		return "project/project/user/showMyService";
	}

	@PostMapping("/showServiceEvaluation/{pageNo}")
	public String showServiceEvaluation(@PathVariable("pageNo") int pageNo, Project project, Principal p, Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Evaluation> page = evaluationService.findByProjectAndServicer(project, member, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());
		return "";
	}

	// 搜尋所有服務項目
	@GetMapping("/selectAllServiceUser/{pageNo}")
	public String selectServiceName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName, Principal p,
			Model model) {
		Member member = memberService.findByMemberId(p.getName());
		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndMemberAndPjNameLike("服務", member, findPjName, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/user/showMyService";
	}

	@PostMapping("/addToServiceCart")
	@ResponseBody
	public void addToServiceCart(@RequestParam("pjID") int pjID, @RequestParam("serviceID") String serviceID, Principal p,
			Model model) {
		Evaluation evaluation = new Evaluation();
		Member member = memberService.findByMemberId(p.getName());
		Project project = projectService.findBypjID(pjID);
		Member servicer = memberService.findByMemberId(serviceID);

		if (!serviceID.equals(member.getMemberId())) {
			evaluation.setMember(servicer);
			evaluation.setServicer(member);
			evaluation.setProject(project);
			System.out.println(evaluation);
			evaluationService.saveEvaluation(evaluation);
		}
	}

	// 通用Method

	@PostMapping("/projectDeal")
	@ResponseBody
	public void deal(@RequestParam("ev_ID") int evID) {
		Evaluation evaluation = evaluationService.findByEvID(evID);
		Date date = new Date();
		evaluation.setEvCompletionDate(date);
		evaluationService.updateEvaluation(evaluation);
	}
	
	@GetMapping("/goToEvaluation/{evID}")
	public String goToEvaluation(@PathVariable("evID") int evID, Model model){
		Evaluation evaluation = evaluationService.findByEvID(evID);
		
		model.addAttribute("evaluation", evaluation);
		return "/project/project/user/goToEvaluation";
	}

	@PostMapping("/updateEvaluation")
	public String updateEvaluation(@RequestParam("ev_ID") int evID, @RequestParam("ev_ClientEV") int evClientEV,
			@RequestParam("ev_ClientComment") String evClientComment) {
		Evaluation evaluation = evaluationService.findByEvID(evID);
		if (evaluation.getEvCompletionDate() != null) {
			evaluation.setEvClientEV(evClientEV);
			evaluation.setEvClientComment(evClientComment);
		}

		evaluationService.updateEvaluation(evaluation);
		return "redirect:/users/projects/showMyEntrustingProject/1";
	}

	// 顯示案件詳細頁面
	@GetMapping("/projectUser/{pjID}")
	public String goToSingleBackstage(@PathVariable("pjID") int pjID, Model model) {
		Project findByPJId = projectService.findBypjID(pjID);
		if ((findByPJId.getPjExCompletionDate()) != null) {
			String format = (findByPJId.getPjExCompletionDate()).toInstant().atOffset(ZoneOffset.UTC)
					.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

			model.addAttribute("day", format);

		}
		model.addAttribute("project", findByPJId);
		return "/project/project/user/goToSingleUserPJ";
	}

	// 更新案件
	@PostMapping("/updateSingleUserProject")
	public String updateProject(Project project) throws ParseException {
		Project project2 = projectService.findBypjID(project.getPjID());
		project.setMember(project2.getMember());
		project.setPjClass(project2.getPjClass());
		project.setFieldName(project2.getFieldName());
		project.setPjUploadDate(project2.getPjUploadDate());
		project.setPjLastUpdate(new Date());
		project.setPjStatus(project2.getPjStatus());

		projectService.updateProject(project);

		return "redirect:/users/projects/showMyEntrustingProject/1";
	}

	// 更新案件
	@PostMapping("/updateProject")
	public void updateProject(@RequestParam("pjID") int pjID, @RequestParam("pjStatus") String pjStatus)
			throws ParseException {
		Project project = projectService.findBypjID(pjID);
		project.setPjStatus(pjStatus);

		projectService.updateProject(project);
	}

	// 隱藏案件
	@PostMapping("/deleteUserProject")
	@ResponseBody
	public String deleteProject(@RequestParam("pjID") int pjID) {
		Project project = projectService.findBypjID(pjID);
		project.setMember(null);
		projectService.updateProject(project);
		return "/project/projectUser";
	}
	
	@PostMapping("/avgMemberCount")
	@ResponseBody
	public int avgMemberCount(Member member) {
		Integer countServicer = evaluationService.countServicer(member.getMemberPk());
		return countServicer;
	}
}
