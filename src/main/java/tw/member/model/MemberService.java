package tw.member.model;

import java.sql.Timestamp;
import java.util.Date;
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
public class MemberService {
	
	@Autowired
	private MemberRepository mRepo;
	
	 public void updateLastLogin(String memberId) {
	      Member user = findByMemberId(memberId);
	      Date date = new Date();
	      user.setLastLogin(new Timestamp(date.getTime()));
	      save(user);
	 }
	
	public List<Member> findAll(){
		return mRepo.findAll();
	}
	
	public Page<Member> findAllPageable( int pageNo, int pageSize ){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findAllPageable(pageable);
	}
	
	
	
	//	模糊搜尋部分開始
	public Page<Member> findByMemberIdContainingOrNameContainingOrLocationContainingOrEmailContainingOrGenderContaining(
			String keyword,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByMemberIdContainingOrNameContainingOrLocationContainingOrEmailContainingOrGenderContaining(
				keyword,keyword,keyword,keyword,keyword,pageable);
	};
	
	public Page<Member> findByMemberIdContaining(String memberId,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByMemberIdContaining(memberId,pageable);
	};
	
	public Page<Member> findByNameContaining(String name,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByNameContaining(name,pageable);
	};
	
	public Page<Member> findByLocationContaining(String location,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByLocationContaining(location,pageable);
	};
	
	public Page<Member> findByEmailContaining(String email,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByEmailContaining(email,pageable);
	};
	
	public Page<Member> findByGenderContaining(String gender,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByGenderContaining(gender,pageable);
	};
	
	public Page<Member> findByVerification(Integer verification,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByVerification(verification,pageable);
	};
	
	public Page<Member> findByPermission(Integer permission,int pageNo, int pageSize){
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return mRepo.findByPermission(permission,pageable);
	};
	
	//	模糊搜尋部分結束
	
	
	public Member findByName( String name) {
		return mRepo.findByName(name);
	};
	
	public Member findByMemberPk(Integer memberPk){
		Optional<Member> op = mRepo.findById(memberPk);
		Member member = null;
		if(op.isPresent()) {
			member = op.get();
		}
		return member;
	}
	
	public Member findByMemberId(String memberId){
		Optional<Member> op = Optional.ofNullable(mRepo.findByMemberId(memberId));
		Member member = null;
		if(op.isPresent()) {
			member = op.get();
		}
		return member;
	}
	
	public Member findByMemberIdAndPassword(String memberId, String password){
		Member member = mRepo.findByMemberIdAndPassword(memberId, password);
		return member;
	}
	
	public boolean existsById(String memberId) {
		if( mRepo.findByMemberId(memberId)!=null) {
			return true;
		}
		return false;
	}
	
	public Member insert(Member member) {
		return mRepo.save(member);
	}
	
	public void delete(Member member) {
		mRepo.delete(member);
	}
	
	public void deleteByMemberPk(Integer memberPk) {
//		mRepo.findBypk(memberPk);
	}
	
	public Member save(Member member) {
		return mRepo.save(member);
	}
	
	public Member update(Member member) {
		return mRepo.save(member);
	}
	
	public List<MemberGroupByRegistMon> getGroupByMonthMembers() {
		return mRepo.getGroupByMonthMembers();
	}
	
	
	
	
	
	
	
	
}