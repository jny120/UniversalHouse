package tw.member.showMember.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.member.model.Member;
import tw.member.model.MemberService;


@Controller
public class ShowMemberInfoServlet{
	@Autowired
	private MemberService service;
       
	@GetMapping("/users/showMemberInfo.do")
	private String showMemberInfo(Model m) {
		
		Member member = (Member) m.getAttribute("LoginOK") ;
		m.addAttribute("member", member);
		return "/member/showMember/showMemberInfo";
	}
	
	
	@PostMapping("/admin/showAllMember.do")
	@ResponseBody
	private List<Member> showAllMember(  ) {
		List<Member> members = service.findAll();
		return members;
	}
	
	@PostMapping("/admin/showAllMemberPageable.do/{pageNo}/{pageSize}")
	@ResponseBody
	private Page<Member> showAllMemberPageable( @PathVariable("pageNo") Integer pageNo, @PathVariable("pageSize") Integer pageSize  ) {
		return service.findAllPageable(pageNo,pageSize);
	}
	
	@PostMapping("/searchMemberPageable.do/{pageNo}/{pageSize}/{col}/{keyWord}")
	@ResponseBody
	private Page<Member> searchMemberPageable( 
			@PathVariable("pageNo") Integer pageNo, 
			@PathVariable("pageSize") Integer pageSize,
			@PathVariable("col") String col,
			@PathVariable("keyWord") String keyWord 	) {
		if( "all".equals(col) ) {
			return service.findByMemberIdContainingOrNameContainingOrLocationContainingOrEmailContainingOrGenderContaining(keyWord,pageNo,pageSize);
		}else if( "id".equals(col) ) {
			return service.findByEmailContaining(keyWord,pageNo,pageSize);
		}else if( "name".equals(col) )  {
			return service.findByNameContaining(keyWord,pageNo,pageSize);
		}else if( "email".equals(col) )  {
			return service.findByEmailContaining(keyWord,pageNo,pageSize);
		}else if( "loc".equals(col) )  {
			return service.findByLocationContaining(keyWord,pageNo,pageSize);
		}else if( "gender".equals(col) )  {
			return service.findByGenderContaining(keyWord,pageNo,pageSize);
		}else if( "vrfc".equals(col) )  {
			Integer i =  ("已驗證").equals(keyWord)?
					1 : 0;
			return service.findByVerification(i,pageNo,pageSize);
		}else if( "perm".equals(col) )  {
			Integer i;
			if(  (keyWord).contains("管")) {
				i=1;
			}else if( (keyWord).contains("會員") || (keyWord).contains("使用") || (keyWord).contains("用戶")) {
				i=0;
			}else {
				return null;
			}
			return service.findByPermission(i,pageNo,pageSize);
		}else {
			return null;
		}
	}
	
	@PostMapping("/users/delete.do/{memberId}")
	@ResponseBody
	private Object deleteMember( @PathVariable("memberId") String memberId ) {
		Member member =  service.findByMemberId(memberId);
		service.delete(member);
		System.out.println(memberId);
		return null;
	}
	
	
	
	
	
}


