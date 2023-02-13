package tw.member.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface VerificationRepository extends JpaRepository<Verification, Integer> {

	public Verification findByMemberId(String memberId);
	@Modifying
	@Query(value="update verification  set verifycode =:vcode where memberid =:id", nativeQuery = true)
	public void updateSetVerificationCodeForMemberId(@Param("vcode") String code, @Param("id") String memberId);
	
}
