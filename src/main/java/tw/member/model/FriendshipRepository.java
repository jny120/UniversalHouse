package tw.member.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface FriendshipRepository extends JpaRepository<Friendship, Integer>  {
	Integer deleteByMemberUserAndMemberFriend( Member user, Member friend );
	
	public List<Friendship> findByMemberUserAndMemberFriend(Member user, Member friend);
	
	public List<Friendship> findByMemberUser(Member user);
	
	public List<Friendship> findByMemberFriend(Member user);
	
}
