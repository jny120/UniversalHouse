package tw.member.message;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import tw.member.model.ChatHistory;
import tw.member.model.ChatHistoryService;
import tw.member.model.ChatMessage;
import tw.member.model.Member;
import tw.member.model.MemberService;

@RestController
public class WebSocketController {
	
	@Autowired
	private ChatHistoryService chService;

	@Autowired
	private MemberService mService;
	
	@Autowired
	private SimpMessageSendingOperations simpMessageSendingOperations;
	
//	@MessageMapping("/chat/{receiver}")
//	public void sendChatMessage(@Payload ChatMessage chatMessage, @DestinationVariable("receiver") String receiver) {
//		simpMessageSendingOperations.convertAndSendToUser(receiver, "/queue/private",
//				chatMessage);
//		System.out.println(receiver);
//	}

	@MessageMapping("/chat")
	public void sendChatMessage(@Payload ChatMessage chatMessage) {
		simpMessageSendingOperations.convertAndSendToUser(
				chatMessage.getReceiver(), "/queue/private", chatMessage);
		Member sender = mService.findByMemberId(chatMessage.getSender());
		Member receiver = mService.findByMemberId(chatMessage.getReceiver());
		ChatHistory cm = new ChatHistory( 
				sender, receiver,
				chatMessage.getMessage() );
		chService.save(cm);
	}
	
//	@PostMapping("/findLastMsg/{friendId}")
//	public void sendChatMessage(Principal p, @PathVariable("friendId") String friendId ) {
//		String userId = p.getName();
//		chService.findLastRecordBySenderAndReceiver(userId, friendId);
//	}
	
	@PostMapping("/findLastMsg/{friendId}")
	public ChatHistory sendChatMessage(Principal p, @PathVariable("friendId") String friendId) {
		ChatHistory chatHistory = chService.findLastRecordBySenderAndReceiver(p.getName(), friendId);
		return chatHistory;
	}
	
	
	
}
