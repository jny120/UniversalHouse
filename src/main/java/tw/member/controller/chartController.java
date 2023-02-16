package tw.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.member.model.Member;
import tw.member.model.MemberGroupByRegistMon;
import tw.member.model.MemberService;
//import tw.member.model.OnlineUserCounts;
//import tw.member.model.OnlineUserCountsService;
import tw.member.model.UserCountsGroupBy;

@Controller
@RequestMapping("admin")
public class chartController {
	@Autowired
	private MemberService mService;
	
	
	@ResponseBody
	@PostMapping("/getAllMonthlyRegistMembers.do")
	public List<MemberGroupByRegistMon> getAllMonthlyRegistMembers(){
		 List<MemberGroupByRegistMon> groupByMonthMembers = mService.getGroupByMonthMembers();
		return groupByMonthMembers;
	}
	
	
	
	
	
}
