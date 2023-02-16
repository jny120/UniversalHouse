package tw.member.model;




import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	Page<Member> findByMemberIdContainingOrNameContainingOrLocationContainingOrEmailContainingOrGenderContaining(
			String memberId, String name, String location, String email,String gender,
			Pageable pageable);
	
	public Page<Member> findByMemberIdContaining(String memberId, Pageable pageable);
	public Page<Member> findByNameContaining(String name, Pageable pageable);
	public Page<Member> findByLocationContaining(String location, Pageable pageable);
	public Page<Member> findByEmailContaining(String email, Pageable pageable);
	public Page<Member> findByGenderContaining(String gender, Pageable pageable);
	public Page<Member> findByVerification(Integer verification, Pageable pageable);
	public Page<Member> findByPermission(Integer permission, Pageable pageable);
	
	public Member findByName( String name);
	
	public Member findByMemberId ( String memberId);
	
	public Member findByMemberIdAndPassword(String memberId, String password);
	
	String hql = "SELECT "
			+ "  DATEPART(month, registerTime) AS month, COUNT(memberId) as counts "
			+ "FROM member "
			+ "GROUP BY DATEPART(YEAR, registerTime), DATEPART(month, registerTime) "
		    + "ORDER BY DATEPART(YEAR, registerTime) ASC, DATEPART(month, registerTime) ASC";
	@Query(value = hql, nativeQuery = true)
	public List<MemberGroupByRegistMon> getGroupByMonthMembers();
		
	@Query(value ="SELECT * FROM member", nativeQuery = true)
	Page<Member> findAllPageable( Pageable pageable);
	
	
}
