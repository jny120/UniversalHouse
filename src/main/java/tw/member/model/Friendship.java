package tw.member.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.stereotype.Component;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Component
@Table(name = "Friendship")
public class Friendship implements Serializable{
	private static final long serialVersionUID = 1L;
	

	public Friendship() {
	}

	public Friendship(Member memberUser, Member memberFriend) {
		this.memberUser = memberUser;
		this.memberFriend =memberFriend;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer friendshipid;

	@ManyToOne
	@JsonIgnoreProperties("friendship")
	@JsonIgnore
	@JoinColumn(name = "USERPK", updatable = false)
	private Member memberUser;

	@ManyToOne
	@JsonIgnore
	@JsonIgnoreProperties("friendship")
	@JoinColumn(name = "FRIENDPK", updatable = false)
	private Member memberFriend;
	

	// Getters and Setters
	public Integer getFriendshipid() {
		return friendshipid;
	}

	public void setFriendshipid(Integer friendshipid) {
		this.friendshipid = friendshipid;
	}

	public Member getMemberUser() {
		return memberUser;
	}

	public void setMemberUser(Member memberUser) {
		this.memberUser = memberUser;
	}

	
	public Member getMemberFriend() {
		return memberFriend;
	}

	public void setMemberFriend(Member memberFriend) {
		this.memberFriend = memberFriend;
	}


	
	
}
