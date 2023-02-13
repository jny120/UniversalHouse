package tw.member.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ChatHistoryService {
	@Autowired
	ChatHistoryRepository chRepo;
	
	@Autowired
	private MemberService mService;
	
	public ChatHistory findById( Integer id ) {
		Optional<ChatHistory> optionalCh = chRepo.findById(id);
		ChatHistory ch = optionalCh.get();
		return ch;
	}
	
	public ChatHistory save( ChatHistory ch ) {
		chRepo.save(ch);		
		return ch;
	}
	
	public ChatHistory update( ChatHistory ch ) {
		chRepo.save(ch);		
		return ch;
	}
	
	public void delete( ChatHistory ch ) {
		chRepo.delete(ch);		
	}
	
	public List<ChatHistory> findBySenderOrReceiver(String senderId, String receiverId){
		Member sender = mService.findByMemberId(senderId);
		Member receiver = mService.findByMemberId(receiverId);
		return chRepo.findBySenderOrReceiver(sender, receiver);
	};
	
	public List<ChatHistory> findBySenderAndReceiver(String senderId, String receiverId){
		Member sender = mService.findByMemberId(senderId);
		Member receiver = mService.findByMemberId(receiverId);
		return chRepo.findBySenderAndReceiver(sender, receiver);
	};
	
	public List<ChatHistory> findTop99BySenderAndReceiver(String senderId, String receiverId){
		Member sender = mService.findByMemberId(senderId);
		Member receiver = mService.findByMemberId(receiverId);
		return chRepo.findTop99BySenderAndReceiver(sender, receiver);
	};
	
	public ChatHistory findLastRecordBySenderAndReceiver(String senderId, String receiverId){
		Member sender = mService.findByMemberId(senderId);
		Member receiver = mService.findByMemberId(receiverId);
		Pageable pageable = PageRequest.of(0, 1);
		Page<ChatHistory> lastRecord = chRepo.findLastRecordBySenderAndReceiver(sender, receiver, pageable);
		if( lastRecord.getContent().size()!=0 ) {
			return lastRecord.getContent().get(0);
		}
		return null;
	};
	
	
	
	
	
	
	
}
