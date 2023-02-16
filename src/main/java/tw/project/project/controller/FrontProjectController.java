package tw.project.project.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

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

import tw.project.evaluation.model.Evaluation;
import tw.project.evaluation.model.EvaluationService;
import tw.project.pjImg.model.PJImgService;
import tw.project.pjImg.model.PjImg;
import tw.project.project.model.Project;
import tw.project.project.model.ProjectService;

@Controller
@RequestMapping("/projects")
public class FrontProjectController {

	@Autowired
	private ProjectService projectService;

	@Autowired
	private EvaluationService evaluationService;

	// 顯示可接案的委託項目
	@GetMapping("/showAllEntrusFront/{pageNo}")
	public String showAllEntrusFront(@PathVariable("pageNo") int pageNo, Model model) {
		int pageSize = 7;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjStatus("委託", "上架中", pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllEntrusFront";
	}

	// 搜尋所有委託項目
	@GetMapping("/selectAllEntrusFront/{pageNo}")
	public String selectEntrusName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName,
			Model model) {
		int pageSize = 7;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjNameLike("委託", findPjName, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllEntrusFront";
	}

	// 顯示可接案的服務項目
	@GetMapping("/showAllServiceFront/{pageNo}")
	public String showAllServiceFront(@PathVariable("pageNo") int pageNo, Model model) {
		int pageSize = 8;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjStatus("服務", "上架中", pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllServiceFront";
	}

	// 搜尋所有服務項目
	@GetMapping("/selectAllServiceFront/{pageNo}")
	public String selectServiceName(@PathVariable("pageNo") int pageNo, @RequestParam("findPJName") String findPjName,
			Model model) {
		int pageSize = 8;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndPjNameLike("服務", findPjName, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllServiceFront";
	}

	// 顯示案件詳細頁面
	@GetMapping("/projectFront/{pjID}")
	public String goToSingleBackstage(@PathVariable("pjID") int pjID, Model model) {
		Project findByPJId = projectService.findBypjID(pjID);
		Integer countMember = 0;
		
			countMember = evaluationService.countServicer(findByPJId.getMember().getMemberPk());
			
		if ((findByPJId.getPjExCompletionDate()) != null) {
			String format = (findByPJId.getPjExCompletionDate()).toInstant().atOffset(ZoneOffset.UTC)
					.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

			model.addAttribute("day", format);

		}

		if ((findByPJId.getEvaluations()) != null && (findByPJId.getEvaluations().size()) != 0) {

			List<Evaluation> evaluations = findByPJId.getEvaluations();
			int evAvg = evaluationService.avgEV(pjID);

			model.addAttribute("evAvg", evAvg);
			model.addAttribute("evaluation", evaluations);

		}
		model.addAttribute("count", countMember);
		model.addAttribute("project", findByPJId);
		return "/project/project/front/goToSingleFront";
	}

	@GetMapping("/projectFrontEv/{pageNo}")
	@ResponseBody
	public List<Evaluation> evAvg(@PathVariable("pageNo") int pageNo, @RequestParam("pjID") int pjID,
			@RequestParam("ev") int ev) {
		int pageSize = 8;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Project project = projectService.findBypjID(pjID);
		Page<Evaluation> evaluations = evaluationService.findByProjectAndEvClientEV(project, ev, pageable);

		return evaluations.getContent();
	}

	@Autowired
	private PJImgService pImgService;

	// 顯示服務項目圖片
	@GetMapping("/showPJImg")
	public void showAllImg(@RequestParam("imgID") Integer imgID, HttpServletResponse response)
			throws IOException, SQLException {
		PjImg img = pImgService.findById(imgID);
		if (img != null) {
			byte[] b = img.getPjImg();
			Blob blob = new SerialBlob(b);
			InputStream is = blob.getBinaryStream();
			OutputStream os = response.getOutputStream();

			byte[] bytes = new byte[8126];

			int len = 0;

			while ((len = is.read(bytes)) != -1) {
				os.write(bytes, 0, len);
				os.flush();
			}
			os.close();
			is.close();
		}
	}

	@GetMapping("/selectEntrustField/{field}/{pageNo}")
	public String selectEntrustField(@PathVariable("pageNo") int pageNo, @PathVariable("field") String field,
			Model model) {
		int pageSize = 7;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndFieldNameLike("委託", field, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllEntrusFront";
	}

	@GetMapping("/selectServiceField/{field}/{pageNo}")
	public String selectServiceField(@PathVariable("pageNo") int pageNo, @PathVariable("field") String field,
			Model model) {
		int pageSize = 8;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Project> page = projectService.findByPjClassAndFieldName("服務", field, pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("project", page.getContent());

		return "project/project/front/showAllServiceFront";
	}
}
