package tw.forum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.forum.model.Status;
import tw.forum.model.StatusService;

@Controller
public class StatusController {

	@Autowired
	private StatusService sService;

	@PostMapping("/checkStatus")
	@ResponseBody
	public Status checkStatus(@RequestParam("articleId") Integer articleId,
			@RequestParam("memberPk") Integer memberPk) {

		if (sService.findByArticleIdAndMemberPk(articleId, memberPk) == null) {
			Status savedStatus = new Status();
			savedStatus.setArticleId(articleId);
			savedStatus.setMemberPk(memberPk);
			savedStatus.setReported(0);
			savedStatus.setThumbUp(0);
			savedStatus.setUnlike(0);
			savedStatus.setFavorite(0);
			sService.save(savedStatus);
			return savedStatus;
		}

		return sService.findByArticleIdAndMemberPk(articleId, memberPk);
	}

	@PostMapping("/updateStatus")
	@ResponseBody
	public Status updateStatus(@RequestParam("articleId") Integer articleId,
			@RequestParam("memberPk") Integer memberPk, @RequestParam("thumbUp") @Nullable Integer thumbUp,
			@RequestParam("unlike") @Nullable Integer unlike, @RequestParam("favorite") @Nullable Integer favorite) {

		Status status = sService.findByArticleIdAndMemberPk(articleId, memberPk);

		if (favorite != null) {

			status.setFavorite(favorite);

		} else {

			status.setThumbUp(thumbUp);
			status.setUnlike(unlike);

		}

		return sService.update(status);
	}

	@RequestMapping("/toTEST")
	public String toTEST() {
		return "/forum/TEST";
	}
	
}
