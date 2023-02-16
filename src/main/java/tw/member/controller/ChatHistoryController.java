package tw.member.controller;

import java.security.Principal;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tw.member.model.ChatHistory;
import tw.member.model.ChatHistoryService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
public class ChatHistoryController {
	@Autowired
	private ChatHistoryService chService;
	
	@Autowired
	private MemberService mService;
	
	@PostMapping("/findChatRecord/{friendId}")
	@ResponseBody
	private List<ChatHistory> findChatHistory( 
			Principal p,
			@PathVariable("friendId") String  friendId){
		String userId = p.getName();
		List<ChatHistory> chList = chService.findBySenderAndReceiver(userId,friendId);
		for( ChatHistory ch : chList ) {
			if(  userId.equals(ch.getReceiver().getMemberId())  ) {
				ch.setReaded(true);
				chService.update(ch);
			}
		}
		return chList;
	}
	
	@PostMapping("/saveChatHistory/{senderId}/{receiverId}/{message}")
	@ResponseBody
	private void saveChatHistory( 
			@PathVariable("senderId") String  senderId,
			@PathVariable("receiverId") String  receiverId,
			@PathVariable("message") String  message){
		//先找到發送者與接收者member物件
		Member user = mService.findByMemberId(senderId);
		Member friend = mService.findByMemberId(receiverId);
		ChatHistory ch = new ChatHistory( user, friend, message );
		chService.save(ch);
	}
	
}
