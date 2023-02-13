package tw.member.model;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ChatHistoryRepository extends JpaRepository<ChatHistory, Integer> {
	
	List<ChatHistory> findBySenderOrReceiver(Member sender, Member receiver);
	
	@Query("SELECT ch FROM ChatHistory ch WHERE (ch.sender = :user1 AND ch.receiver = :user2) OR (ch.sender = :user2 AND ch.receiver = :user1) ORDER BY ch.timestamp asc ")
    List<ChatHistory> findBySenderAndReceiver(@Param("user1") Member user1, @Param("user2") Member user2);
	
	@Query("SELECT ch FROM ChatHistory ch WHERE (ch.sender = :user1 AND ch.receiver = :user2) OR (ch.sender = :user2 AND ch.receiver = :user1) ORDER BY ch.timestamp asc ")
    List<ChatHistory> findTop99BySenderAndReceiver(@Param("user1") Member user1, @Param("user2") Member user2);

	@Query("SELECT ch FROM ChatHistory ch WHERE (ch.sender = :user1 AND ch.receiver = :user2) OR (ch.sender = :user2 AND ch.receiver = :user1) ORDER BY ch.timestamp DESC")
	Page<ChatHistory> findLastRecordBySenderAndReceiver(@Param("user1") Member user1, @Param("user2") Member user2, Pageable pageable);
}
