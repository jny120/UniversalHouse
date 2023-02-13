package tw.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class VerificationService {
	@Autowired
	private VerificationRepository vRepo;
	
	public Verification findByMemberId(String memberId){
		Verification vCode = vRepo.findByMemberId(memberId);
		return vCode;
	}
	
	public Verification save(String memberId,String code){
		Verification vCode = new Verification(memberId,code);
		vRepo.save(vCode);
		return vCode;
	}
	
	public Verification update(String memberId,String code){
		Verification vCode = new Verification(memberId,code);
		vRepo.save(vCode);
		return vCode;
	}
	
	public void delete(String memberId){
		Verification vCode = vRepo.findByMemberId(memberId);
		vRepo.delete(vCode);
	}
	
	
	public void updateSetVerificationForMemberId(String code,String memberId) {
		vRepo.updateSetVerificationCodeForMemberId(code, memberId);
	}
	
}
